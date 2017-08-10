package pix.gdc.com.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import pix.gdc.com.dao.BasicDAO;
import pix.gdc.com.dao.FestDAO;
import pix.gdc.com.service.RestService;
import pix.gdc.com.util.MetaDataUtil;
import pix.gdc.com.vo.PixArticle;
import pix.gdc.com.vo.PixComment;
import pix.gdc.com.vo.PixLike;
import pix.gdc.com.vo.UfoGoRecord;
import pix.gdc.com.vo.UfoGoVO;
import pix.gdc.com.vo.UfoMinwon;

/**
 * Handles requests for the application home page.
 */
@Controller
public class PixController {
	
	private static final Logger logger = LoggerFactory.getLogger(PixController.class);
	
	@Autowired
	RestService restService;
	
	@Autowired
	BasicDAO basicDao;
	
	@Autowired
	FestDAO dao;
	
	@RequestMapping(value = "insertForm", method = RequestMethod.GET)
	public String insertForm(){
		
		return "insertForm";
	}
	
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(); 
	    // set any fields
	    return commonsMultipartResolver; 
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "uploadArticle", method = RequestMethod.POST)
	public @ResponseBody String uploadArticle(Locale locale, Model model, @RequestParam("file") MultipartFile file, 
			@ModelAttribute("vo")PixArticle vo) {
		logger.info("Welcome Uplaod! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                
                vo.setPix_image(fileInfo[0]);
                vo.setLatitude(fileInfo[1]);
                vo.setLongitude(fileInfo[2]);
              
        		basicDao.insertPixArticle(vo);
                return "You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded !";
            } catch (Exception e) {
                return "You failed to upload => " + e.getMessage();
            }
        } else {
            return "You failed to upload because the file was empty.";
        }
	}
	
	@RequestMapping(value = "get/{fullname}", method = {RequestMethod.POST, RequestMethod.GET} )
	public @ResponseBody List<PixArticle> getByUser(@PathVariable("fullname")String fullName){
		List<PixArticle> list = basicDao.getPixArticleByFullName(fullName);
		//본인이 좋아요 한거 찾기
		List<Integer> likesList = basicDao.selectLikesByUser(fullName);
		List<PixLike> likeNum = basicDao.countLikesByUser(fullName);
		
		MetaDataUtil meta = new MetaDataUtil();
		
		for(PixArticle ele : list){
			try{
			if(!ele.getLatitude().isEmpty() && !ele.getLongitude().isEmpty() && ele.getLatitude() != null && ele.getLongitude() != null){
				
			String tempLat;
			String tempLon;
			
			tempLat = meta.convertAngleTodecimal(ele.getLatitude());
			tempLon = meta.convertAngleTodecimal(ele.getLongitude());
			ele.setLatitude(tempLat);
			ele.setLongitude(tempLon);
			}
			}catch(Exception e){
				
			}
			
			for(Integer li : likesList){
				if(ele.getPix_idx() == li){
					ele.setLike(true);
				}
			}
			
			for(PixLike e : likeNum){
				if(e.getPix_idx() == ele.getPix_idx()){
					ele.setLikeNum(e.getLikeNum());
				}
			};
			
		}
		return list;
	}
	
	@RequestMapping(value = "like/{fullname}/{pixIdx}", method = {RequestMethod.POST, RequestMethod.GET})
	public @ResponseBody int insertLike(@PathVariable("fullname")String fullname, @PathVariable("pixIdx")int pixIdx){
		PixLike vo = new PixLike();
		vo.setPix_idx(pixIdx);
		vo.setPix_like_user(fullname);
		return basicDao.insertlike(vo);
	}
	
	@RequestMapping(value = "read/{pixIdx}", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody PixArticle readPixArticle(@PathVariable("pixIdx")int pixIdx){
		return basicDao.getPixArticleByIdx(pixIdx);
	}
	
	@RequestMapping(value = "read/comment/{pixIdx}", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<PixComment> readPixArticleComment(@PathVariable("pixIdx")int pixIdx){
		return basicDao.getPixCommentByIdx(pixIdx);
	}
	
	@RequestMapping(value = "get/ufogo/{para}", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<UfoGoVO> getUfogo(@PathVariable("para")String para){
		List<UfoGoVO> ufoGo = dao.selectUfoGoByPara(para); 
		return ufoGo;
	}
	
	@RequestMapping(value = "get/ufominwon/{para}", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<UfoMinwon> getMinwon(@PathVariable("para")String para){
		List<UfoMinwon> ufoGo = dao.selectUfoMinwonByPara(para); 
		return ufoGo;
	}
	
	@RequestMapping(value = "/ufogo/insert", method = {RequestMethod.POST})
	public @ResponseBody int insertUfogo(@ModelAttribute("vo")UfoGoRecord vo, @RequestParam("file") MultipartFile file){
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                vo.setUfo_image(fileInfo[0]);
                vo.setImage_lat(fileInfo[1]);
                vo.setImage_alt(fileInfo[2]);
                int result;
            	try{
            		result = dao.insertUfoRecord(vo);
            	}catch(Exception e){
            		result = 0;
            	}
            	return  result; 
            } catch (Exception e) {
                System.out.println("You failed to upload => " + e.getMessage() +e.getStackTrace());
                return 0;
            }
        } else {
        	int result;
        	try{
        		result = dao.insertUfoRecord(vo);
        	}catch(Exception e){
        		result = 0;
        	}
        	return  result; 
        }
	}
	
	@RequestMapping(value = "/ufogo/insertMinwon", method = {RequestMethod.POST})
	public @ResponseBody int insertUfogoMinwon(@ModelAttribute("vo")UfoMinwon vo, @RequestParam("file") MultipartFile file){
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                
                vo.setMinwonImg(fileInfo[0]);
                
                int result;
            	try{
            		result = dao.insertUfoMinwon(vo);
            	}catch(Exception e){
            		result = 0;
            	}
            	return  result; 
            } catch (Exception e) {
                System.out.println("You failed to upload => " + e.getMessage() +e.getStackTrace());
                return 0;
            }
        } else {
        	int result;
        	try{
        		result = dao.insertUfoMinwon(vo);
        	}catch(Exception e){
        		result = 0;
        	}
        	return  result; 
        }
	}
	
	@RequestMapping(value = "/ufogo/get/{para}/{uid}", method = {RequestMethod.POST, RequestMethod.GET})
	public @ResponseBody List<UfoGoRecord> getUfogo(@PathVariable("uid")String uid, @PathVariable("para")String para){
		UfoGoRecord vo = new UfoGoRecord();
		vo.setUser_uid(uid);
		vo.setPara(para);
		return dao.selectUfoGoRecordByParaAndUid(vo);
	}
	@RequestMapping(value = "/ufogo/get/survey/{para}/{uid}", method = {RequestMethod.POST, RequestMethod.GET})
	public @ResponseBody List<UfoGoRecord> getUfoSurvey(@PathVariable("uid")String uid, @PathVariable("para")String para){
		UfoGoRecord vo = new UfoGoRecord();
		vo.setUser_uid(uid);
		vo.setPara(para);
		return dao.selectUfoGoRecordByParaAndUid(vo);
	}
	
	@RequestMapping(value = "/ufogo/qr/get/{para}", method = {RequestMethod.POST, RequestMethod.GET})
	public @ResponseBody List<UfoGoVO> getUfogoAll(@PathVariable("para")String para){
		return dao.selectUfoQrByPara(para);
	}
}
