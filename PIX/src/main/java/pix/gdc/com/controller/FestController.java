package pix.gdc.com.controller;

import java.util.ArrayList;
import java.util.Arrays;
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

import pix.gdc.com.dao.FestDAO;
import pix.gdc.com.service.RestService;
import pix.gdc.com.vo.FestEvent;
import pix.gdc.com.vo.FestEventInfo;
import pix.gdc.com.vo.FestEventNotice;
import pix.gdc.com.vo.FestLogin;
import pix.gdc.com.vo.FestOption;
import pix.gdc.com.vo.FestQ1;
import pix.gdc.com.vo.FestQ2;
import pix.gdc.com.vo.FestQ3;
import pix.gdc.com.vo.FestQ4;
import pix.gdc.com.vo.FestQ5;
import pix.gdc.com.vo.FestQ6;
import pix.gdc.com.vo.FestQ7;
import pix.gdc.com.vo.FestUfo;
import pix.gdc.com.vo.FestUfoNotice;

@Controller
@Scope("session")
public class FestController {
	
	@Autowired
	RestService restService;
	
	@Autowired
	FestDAO dao;
	
	
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
			
				System.out.println(vo.getFest_event_number());
				session.setAttribute("eventNumber", vo.getFest_event_number());
				session.setAttribute("eventNames", eventNames);
				session.setAttribute("UserName", vo.getOfficial_name());
				session.setAttribute("currentEvent", Integer.parseInt(eventNumbers.get(eventNumbers.size()-1)));
				
				result = "redirect:festNotice?idx="+vo.getFest_event_number();
			
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
		return "redirect:festNotice?idx="+idx;
	}
	
	@RequestMapping(value = "FEV/festQuestion", method = RequestMethod.GET)
	public String festQuestion(@RequestParam("idx")int idx, Model model, HttpSession session){	
		if(session.getAttribute("UserName") == null){
			return "redirect:festLoginForm";
		}
		FestQ1 q1 = new FestQ1();
		FestQ2 q2 = new FestQ2();
		FestQ3 q3 = new FestQ3();
		FestQ4 q4 = new FestQ4();
		FestQ5 q5 = new FestQ5();
		FestQ6 q6 = new FestQ6();
		FestQ7 q7 = new FestQ7();
		
		
		String para  = dao.SelectUfoParaByNumber((Integer)session.getAttribute("currentEvent"));
		List<String> questionList = dao.SelectUfoQuestionByPara(para);
		List<FestOption> q1o = dao.SelectUfoOptionQ1ByPara(para);
		q1.setOptionlist(q1o);
		
		List<FestOption> q2o = dao.SelectUfoOptionQ2ByPara(para);
		q2.setOptionlist(q2o);
		
		List<FestOption> q3o = dao.SelectUfoOptionQ3ByPara(para);
		q3.setOptionlist(q3o);
		
		List<FestOption> q4o = dao.SelectUfoOptionQ4ByPara(para);
		q4.setOptionlist(q4o);
		
		List<FestOption> q5o = dao.SelectUfoOptionQ5ByPara(para);
		q5.setOptionlist(q5o);
		
		q1.setFest_q1_question(questionList.get(0));
		q2.setFest_q2_question(questionList.get(1));
		q3.setFest_q3_question(questionList.get(2));
		q4.setFest_q4_question(questionList.get(3));
		q5.setFest_q5_question(questionList.get(4));
		q6.setFest_q6_question(questionList.get(5));
		q7.setFest_q7_question(questionList.get(6));
		
		
		
		FestUfo ufo = dao.SelectUfoByNumber(idx);
		model.addAttribute("ufo", ufo);
		
		
		model.addAttribute("q1", q1);
		model.addAttribute("q2", q2);
		model.addAttribute("q3", q3);
		model.addAttribute("q4", q4);
		model.addAttribute("q5", q5);
		model.addAttribute("q6", q6);
		model.addAttribute("q7", q7);
		
		return "fest/festQuestion";
	}
	
	@RequestMapping(value = "FEV/festInfo", method = RequestMethod.GET)
	public String festInfo(@RequestParam("idx")int idx, Model model, HttpSession session){	
		if(session.getAttribute("UserName") == null){
			return "redirect:festLoginForm";
		}
		
		List<FestEventInfo> info = new ArrayList<FestEventInfo>();
		info = dao.SelectInfo(idx);
		
		FestUfo ufo = dao.SelectUfoByNumber(idx);
		model.addAttribute("ufo", ufo);
		model.addAttribute("info", info);
		
		return "fest/festInfo";
	}
	
	@RequestMapping(value = "FEV/festNotice", method = RequestMethod.GET)
	public String festNotice(Model model, HttpSession session){	
		if(session.getAttribute("UserName") == null){
			return "redirect:festLoginForm";
		}
		
		List<FestEventNotice> notice = new ArrayList<FestEventNotice>();
		
		Integer currentEvent =  (Integer)session.getAttribute("currentEvent");
		
		notice = dao.SelectNotice(currentEvent);
		String para = dao.SelectUfoParaByNumber(currentEvent);
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		
		FestUfo ufo = dao.SelectUfoByNumber(currentEvent);
		model.addAttribute("ufo", ufo);
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("notice", notice);
		return "fest/festNotice";
	}
	
	
	
	
	//To-do 파일 업로드 및 폼받아줘야 됨!
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(); 
	    // set any fields
	    return commonsMultipartResolver; 
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
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
		
		
		return "redirect:festNotice";
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

		
		return "redirect:festNotice";
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
	
	
}
