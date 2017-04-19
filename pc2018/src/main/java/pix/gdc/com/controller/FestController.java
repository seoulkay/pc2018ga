package pix.gdc.com.controller;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import pix.gdc.com.dao.BasicDAO;
import pix.gdc.com.dao.FestDAO;
import pix.gdc.com.service.RestService;
import pix.gdc.com.vo.FestAnswerVO;
import pix.gdc.com.vo.FestEvent;
import pix.gdc.com.vo.FestLogin;
import pix.gdc.com.vo.FestOption;
import pix.gdc.com.vo.FestQuesListVO;
import pix.gdc.com.vo.FestUfo;
import pix.gdc.com.vo.FestUfoNotice;
import pix.gdc.com.vo.UfoGoRecord;
import pix.gdc.com.vo.UfoGoVO;

@Controller
@Scope("session")
public class FestController {
	
	@Autowired
	RestService restService;
	
	@Autowired
	FestDAO dao;

	@Autowired
	BasicDAO basicDao;
	
	
	@RequestMapping(value = "FEV/", method = RequestMethod.GET)
	public String festMainRedirect(){
		return "redirect:festLoginForm";
	}
	@RequestMapping(value = "FEV/festLoginForm", method = RequestMethod.GET)
	public String festLoginForm(){		
		return "fest/festLoginForm";
	}
	
	//백도어
	@RequestMapping(value = "FEV/main", method = RequestMethod.GET)
	public String festMain(Model model){		
		List<FestEvent> event = dao.SelectFestEvent();
		model.addAttribute("event", event);
		return "fest/festMain";
	}
	
	
	@RequestMapping(value = "FEV/festLoginAction", method = RequestMethod.POST)
	public String festLoginAction(@ModelAttribute("FestLogin") FestLogin vo, Model model, HttpSession session){
		String result = "fest/festLoginFail";
		vo = dao.checkLogin(vo);
		
		try{
		vo.getFest_event_number();
		
			List<FestEvent> event = dao.SelectFestEvent();
			model.addAttribute("event", event);
			
			//String[] eventNumbers = parseEventsRight(vo.getFest_event_number());
	
			List<String> eventNumbers = Arrays.asList(vo.getFest_event_number().split("\\s*,\\s*"));
			HashMap<Integer, String> eventNames = new HashMap<Integer, String>();
			for(String ele : eventNumbers){
				int num = Integer.parseInt(ele);
				eventNames.put(num ,dao.SelectFestEventNameByNumber(num));
				
			}
			
				session.setAttribute("eventNumber", vo.getFest_event_number());
				session.setAttribute("eventNames", eventNames);
				session.setAttribute("UserName", vo.getOfficial_name());
				session.setAttribute("currentEvent", Integer.parseInt(eventNumbers.get(eventNumbers.size()-1)));
				
				result = "redirect:festInfo?idx="+vo.getFest_event_number();
			
		}catch(Exception e){
			//로그인 실퍠 
		}
		return result;
	}
	
	
	
	@RequestMapping(value = "FEV/festChange", method = RequestMethod.GET)
	public String festChange(@RequestParam("idx")int idx, HttpSession session){	
		if(session.getAttribute("UserName") == null){
			return "redirect:festLoginForm";
		}
		session.setAttribute("currentEvent", idx);
		return "redirect:festInfo?idx="+idx;
	}
	
	@RequestMapping(value = "FEV/festQuestion", method = RequestMethod.GET)
	public String festQuestion(@RequestParam("idx")int idx, Model model, HttpSession session){	
		if(session.getAttribute("UserName") == null){
			return "redirect:festLoginForm";
		}
		
		Integer currentEvent =  (Integer)session.getAttribute("currentEvent");
		FestUfo ufo = dao.SelectUfoByNumber(currentEvent);
		String para = dao.SelectUfoParaByNumber(currentEvent);
		List<UfoGoVO> goList = dao.selectUfoGoByPara(para) ;
		List<FestQuesListVO> surveyList = dao.selectUfoQuestionsNew(para);
		List<FestOption> optionList = dao.selectUfoQuestionsOptionsNew(para);
		
		for(FestQuesListVO ele : surveyList){
			for(FestOption el : optionList){
				if(el.getQ_number() == ele.getOrderq()){
					ele.getQuestionOptions().add(el);
				}
			}
		}
		
		model.addAttribute("goList", goList);
		model.addAttribute("surveyList", surveyList);
		model.addAttribute("ufo", ufo);
		return "fest/festQuestion";
	}
	
	//stampNew stampUpdate
	@RequestMapping(value = "FEV/stampUpdate", method = RequestMethod.POST)
	public String stampUpdate(@RequestParam("file2") MultipartFile file2, @RequestParam("file") MultipartFile file, @RequestParam("idx") int idx, @ModelAttribute("vo") UfoGoVO go){
		try{
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
        		go.setGo_image(fileInfo[0]);
                System.out.println("You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded at Create Notice!");
                
            } catch (Exception e) {
            	System.out.println("You failed to upload => " + e.getMessage() + "at createNotice");
            }
        } else {
        	System.out.println("You failed to upload because the file was empty. at createNotice");
        }
		
		if (!file2.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file2);
        		go.setGo_icon_img(fileInfo[0]);
                System.out.println("You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded at Create Notice!");
                
            } catch (Exception e) {
            	System.out.println("You failed to upload => " + e.getMessage() + "at createNotice");
            }
        } else {
        	System.out.println("You failed to upload because the file was empty. at createNotice");
        }
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dao.updateUfoGo(go);
		}
		
		return "redirect:/FEV/festQuestion?idx="+idx;
	}
	
	@RequestMapping(value = "FEV/stampNew", method = RequestMethod.POST)
	public String stampNew(@RequestParam("file") MultipartFile file, @RequestParam("idx") int idx, @ModelAttribute("vo") UfoGoVO go){
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
        		go.setGo_image(fileInfo[0]);
        		dao.insertUfoGo(go);
            } catch (Exception e) {
            }
        } else {
        	dao.insertUfoGo(go);
        }
		return "redirect:/FEV/festQuestion?idx="+idx;
	}
	
	
	@RequestMapping(value = "FEV/festInfo", method = RequestMethod.GET)
	public String festInfo(Model model, HttpSession session){	
		if(session.getAttribute("UserName") == null){
			return "redirect:festLoginForm";
		}
		
		//session.setAttribute("currentEvent", idx);
		int idx = (Integer) session.getAttribute("currentEvent");
		FestUfo ufo = dao.SelectUfoByNumber(idx);
		
		model.addAttribute("ufo", ufo);
		return "fest/festInfo";
	}
	
	@RequestMapping(value = "FEV/festNotice", method = RequestMethod.GET)
	public String festNotice(Model model, HttpSession session){	
		if(session.getAttribute("UserName") == null){
			return "redirect:festLoginForm";
		}
		
		//List<FestEventNotice> notice = new ArrayList<FestEventNotice>();
		
		Integer currentEvent =  (Integer)session.getAttribute("currentEvent");
		
		//notice = dao.SelectNotice(currentEvent);
		String para = dao.SelectUfoParaByNumber(currentEvent);
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		
		FestUfo ufo = dao.SelectUfoByNumber(currentEvent);
		model.addAttribute("ufo", ufo);
		
		model.addAttribute("noticeList", noticeList);
		//model.addAttribute("notice", notice);
		return "fest/festNotice";
	}
	
	
	
	
	//To-do 파일 업로드 및 폼받아줘야 됨!
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(); 
	    // set any fields
	    return commonsMultipartResolver; 
	}
	
	
	@RequestMapping(value = "/FEV/UfoEventInput", method = RequestMethod.POST)
	public @ResponseBody String uploadArticle(Locale locale, Model model, @RequestParam("file") MultipartFile file, @ModelAttribute("vo")FestEvent vo) {
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                
                //vo.setPix_image(fileInfo[0]);
                //vo.setLatitude(fileInfo[1]);
                //vo.setLongitude(fileInfo[2]);
        		//basicDao.insertPixArticle(vo);
                //디에이오 처리하세요!
                
                return "You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded !";
            } catch (Exception e) {
                return "You failed to upload => " + e.getMessage();
            }
        } else {
            return "You failed to upload because the file was empty.";
        }
	}
	
	@RequestMapping(value = "FEV/festStat", method = RequestMethod.GET)
	public String festLoginForm(@RequestParam("idx") int idx, Model model,HttpSession session){	
		if(session.getAttribute("UserName") == null){
			return "redirect:festLoginForm";
		}
		
		Integer currentEvent =  (Integer)session.getAttribute("currentEvent");
		FestUfo ufo = dao.SelectUfoByNumber(currentEvent);
		String para = dao.SelectUfoParaByNumber(currentEvent);
		List<UfoGoRecord> resultList = dao.selectUfoGoRecordByPara(para);
		List<FestAnswerVO> answerVOs = dao.selectUfoAnserByPara(para);
		
		Collections.reverse(resultList);
		Collections.reverse(answerVOs);
		List<UfoGoRecord> winner = dao.selectUfoWinnerByPara(para);
		
		model.addAttribute("winner", winner);
		model.addAttribute("resultList", resultList);
		model.addAttribute("answerVOs", answerVOs);
		model.addAttribute("ufo", ufo);

		return "fest/festStat";
	}
	
	@RequestMapping(value = "FEV/festPassFinder", method = RequestMethod.GET)
	public String festPassFinder(){		
		return "fest/festPassFinder1";
	}
	
	@RequestMapping(value = "FEV/festPassFinderAction", method = RequestMethod.POST)
	public String festPassFinderAction(@RequestParam("id") String id){		
		return "fest/festPassFinderDone";
	}
	
	@RequestMapping(value = "FEV/updateNotice", method = RequestMethod.POST)
	public String updateNotice(@RequestParam("idfest_ufo_notice") Integer fest_id, @RequestParam("content") String content, @RequestParam("title") String title, @RequestParam("file") MultipartFile file){
		HashMap<String, Object> vo = new HashMap<String, Object>();
		
		
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                vo.put("photo_file", fileInfo[0]);
                vo.put("photo_latitude", fileInfo[1]);
                vo.put("photo_longitude", fileInfo[2]);
        		
                vo.put("fest_id", fest_id);
        		vo.put("content", content);
        		vo.put("title", title);
        		
        		dao.UpdateNoticeContentByKey(vo);
        		
                System.out.println("You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded at Create Notice!");
                
            } catch (Exception e) {
            	System.out.println("You failed to upload => " + e.getMessage() + "at createNotice");
            }
        } else {
        	System.out.println("You failed to upload because the file was empty. at createNotice");
        	vo.put("fest_id", fest_id);
    		vo.put("content", content);
    		vo.put("title", title);
    		dao.UpdateNoticeContentByKey(vo);
        }
		
		
		return "redirect:festInfo";
	}
	
	
	public String[] parseEventsRight(String param){
		return param.split(",",0);
	}
	
	@RequestMapping(value = "FEV/createNotice", method = RequestMethod.POST)
	public String createNotice(@ModelAttribute("") FestUfoNotice vo, @RequestParam("file") MultipartFile file){
		
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
              
                vo.setPhoto_file(fileInfo[0]);
                vo.setPhoto_latitude(fileInfo[1]);
                vo.setPhoto_longitude(fileInfo[2]);
                
                vo.setPara(dao.SelectUfoParaByNumber(Integer.parseInt(vo.getPara())));
        		dao.InsertNoticeByModel(vo);
        		
                System.out.println("You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded at Create Notice!");
                
            } catch (Exception e) {
            	System.out.println("You failed to upload => " + e.getMessage() + "at createNotice");
            }
        } else {
        	System.out.println("You failed to upload because the file was empty. at createNotice");
        	vo.setPara(dao.SelectUfoParaByNumber(Integer.parseInt(vo.getPara())));
    		dao.InsertNoticeByModel(vo);
        }

		
		return "redirect:festInfo";
	}
	
	@RequestMapping(value = "FEV/signOut", method = RequestMethod.GET)
	public String signOut(HttpSession session){
	
		session.invalidate();
		
		return "redirect:festLoginForm";
	}
	
	
	@RequestMapping(value = "FEV/delNotice", method = RequestMethod.POST)
	public String delNotice(@ModelAttribute("") FestUfoNotice vo){
		
		dao.DeleteNoticeContentByKey(vo);
		
		return "redirect:festNotice";
	}
	
	@RequestMapping(value = "FEV/updateInfo", method = RequestMethod.POST)
	public String updateInfo(@RequestParam("voType") String voType, @RequestParam("content") String content, @RequestParam("title") String title, @RequestParam("file") MultipartFile file, 
			@RequestParam("para") String para){
		HashMap<String, Object> vo = new HashMap<String, Object>();
		
		
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                vo.put("photo_file", fileInfo[0]);
                vo.put("photo_latitude", fileInfo[1]);
                vo.put("photo_longitude", fileInfo[2]);
        		
                vo.put("voType", voType);
        		vo.put("content", content);
        		vo.put("title", title);
        		vo.put("para", para);
        		
        		//dao.UpdateNoticeContentByKey(vo);
        		
        		dao.UpdateInfoByVo(vo);
        		
        		
                System.out.println("You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded at Create Notice!");
                
            } catch (Exception e) {
            	System.out.println("You failed to upload => " + e.getMessage() + "at createNotice");
            }
        } else {
        	System.out.println("You failed to upload because the file was empty. at createNotice");
        	vo.put("voType", voType);
    		vo.put("content", content);
    		vo.put("title", title);
    		vo.put("para", para);
    		//dao.UpdateNoticeContentByKey(vo);
    		
    		dao.UpdateInfoByVo(vo);
        }
		
		return "redirect:festInfo";
	}
	@RequestMapping(value = "FEV/updateUfo", method = RequestMethod.POST)
	public String updateInfo(@ModelAttribute("") FestUfo vo 
			,@RequestParam("logo_file") MultipartFile logo_file
			,@RequestParam("main_image_file") MultipartFile main_image_file
			,@RequestParam("info_info_pic_file") MultipartFile info_info_pic_file
			,@RequestParam("info_hist_pic_file") MultipartFile info_hist_pic_file
			,@RequestParam("q_coupon_img_file") MultipartFile q_coupon_img_file
			,@RequestParam("info_program_pic_file") MultipartFile info_program_pic_file
			,@RequestParam("info_location_pic_file") MultipartFile info_location_pic_file
			,@RequestParam("info_contact_pic_file") MultipartFile info_contact_pic_file
			,@RequestParam("q1_img_file") MultipartFile q1_img_file
			,@RequestParam("q2_img_file") MultipartFile q2_img_file
			,@RequestParam("q3_img_file") MultipartFile q3_img_file
			,@RequestParam("q4_img_file") MultipartFile q4_img_file
			,@RequestParam("q5_img_file") MultipartFile q5_img_file
			,@RequestParam("q6_img_file") MultipartFile q6_img_file
			,@RequestParam("q7_img_file") MultipartFile q7_img_file
			,@RequestParam("q_graphic_file") MultipartFile q_graphic_file
			,@RequestParam("qr_pic_file") MultipartFile qr_pic_file
			){
		
		if(!logo_file.isEmpty()){
			vo = updateFileFestUfo(logo_file, "logo_file", vo);
		}
		if(!main_image_file.isEmpty()){
			vo = updateFileFestUfo(main_image_file, "main_image_file", vo);
		}
		if(!info_info_pic_file.isEmpty()){
			vo = updateFileFestUfo(info_info_pic_file, "info_info_pic_file", vo);
		}
		if(!q_coupon_img_file.isEmpty()){
			vo = updateFileFestUfo(q_coupon_img_file, "q_coupon_img_file", vo);
		}
		if(!info_program_pic_file.isEmpty()){
			vo = updateFileFestUfo(info_program_pic_file, "info_program_pic_file", vo);
		}
		if(!info_hist_pic_file.isEmpty()){
			vo = updateFileFestUfo(info_hist_pic_file, "info_hist_pic_file", vo);
		}
		if(!info_location_pic_file.isEmpty()){
			vo = updateFileFestUfo(info_location_pic_file, "info_location_pic_file", vo);
		}
		if(!info_contact_pic_file.isEmpty()){
			vo = updateFileFestUfo(info_contact_pic_file, "info_contact_pic_file", vo);
		}
		if(!q1_img_file.isEmpty()){
			vo = updateFileFestUfo(q1_img_file, "q1_img_file", vo);
		}
		if(!q2_img_file.isEmpty()){
			vo = updateFileFestUfo(q2_img_file, "q2_img_file", vo);
		}
		if(!q3_img_file.isEmpty()){
			vo = updateFileFestUfo(q3_img_file, "q3_img_file", vo);
		}
		if(!q4_img_file.isEmpty()){
			vo = updateFileFestUfo(q4_img_file, "q4_img_file", vo);
		}
		if(!q5_img_file.isEmpty()){
			vo = updateFileFestUfo(q5_img_file, "q5_img_file", vo);
		}
		if(!q6_img_file.isEmpty()){
			vo = updateFileFestUfo(q6_img_file, "q6_img_file", vo);
		}
		if(!q7_img_file.isEmpty()){
			vo = updateFileFestUfo(q7_img_file, "q7_img_file", vo);
		}
		if(!q_graphic_file.isEmpty()){
			vo = updateFileFestUfo(q_graphic_file, "q_graphic_file", vo);
		}
		if(!qr_pic_file.isEmpty()){
			vo = updateFileFestUfo(qr_pic_file, "qr_pic_file", vo);
		}
		basicDao.updateFestUfoByKey(vo);
		return "redirect:festInfo";
	}
	
	
	//축제정보 사진올리는 곳
	public FestUfo updateFileFestUfo(MultipartFile file, String param, FestUfo vo){
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                if(param.equals("logo_file")){
                	vo.setLogo(fileInfo[0]);
                }else if(param.equals("main_image_file")){
                	vo.setMain_image(fileInfo[0]);
                }else if(param.equals("info_info_pic_file")){
                	vo.setInfo_info_pic(fileInfo[0]);
                }else if(param.equals("info_hist_pic_file")){
                	vo.setInfo_hist_pic(fileInfo[0]);
                }else if(param.equals("q_coupon_img_file")){
                	vo.setQ_coupon_img(fileInfo[0]);
                }else if(param.equals("info_program_pic_file")){
                	vo.setInfo_program_pic(fileInfo[0]);
                }else if(param.equals("info_location_pic_file")){
                	vo.setInfo_location_pic(fileInfo[0]);
                }else if(param.equals("info_contact_pic_file")){
                	vo.setInfo_contact_pic(fileInfo[0]);
                }else if(param.equals("q1_img_file")){
                	vo.setQ1_img(fileInfo[0]);
                }else if(param.equals("q2_img_file")){
                	vo.setQ2_img(fileInfo[0]);
                }else if(param.equals("q3_img_file")){
                	vo.setQ3_img(fileInfo[0]);
                }else if(param.equals("q4_img_file")){
                	vo.setQ4_img(fileInfo[0]);
                }else if(param.equals("q5_img_file")){
                	vo.setQ5_img(fileInfo[0]);
                }else if(param.equals("q6_img_file")){
                	vo.setQ6_img(fileInfo[0]);
                }else if(param.equals("q7_img_file")){
                	vo.setQ7_img(fileInfo[0]);
                }else if(param.equals("q_graphic_file")){
                	vo.setQ_graphic(fileInfo[0]);
                }else if(param.equals("qr_pic_file")){
                	vo.setQr_pic(fileInfo[0]);
                }
                System.out.println("You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded at update ufo");
                
            } catch (Exception e) {
            	System.out.println("You failed to upload => " + e.getMessage() + "at update ufo");
            }
        } else {
        	System.out.println("You failed to upload because the file was empty. at update ufo");
        }
		return vo;
	}
	
}
