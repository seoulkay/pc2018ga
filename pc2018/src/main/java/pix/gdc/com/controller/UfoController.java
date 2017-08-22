package pix.gdc.com.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.Scheduled;
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

import pix.gdc.com.dao.FestDAO;
import pix.gdc.com.service.RestService;
import pix.gdc.com.util.InitValue;
import pix.gdc.com.vo.FestAnswerVO;
import pix.gdc.com.vo.FestNewsLetterEmail;
import pix.gdc.com.vo.FestOption;
import pix.gdc.com.vo.FestQuesListVO;
import pix.gdc.com.vo.FestSnsLog;
import pix.gdc.com.vo.FestUfo;
import pix.gdc.com.vo.FestUfoNotice;
import pix.gdc.com.vo.UfoBarcodeLog;
import pix.gdc.com.vo.UfoGoRecord;
import pix.gdc.com.vo.UfoGoVO;
import pix.gdc.com.vo.UfoMinwon;
import pix.gdc.com.vo.UfoShare;



@Controller
public class UfoController {
	//public String para = "dano";
	//public int eventIdx = 1;

	
	
	@Autowired
	RestService restService;
	@Autowired
	FestDAO dao;
	
	@RequestMapping(value = "ufo/{para}/about", method = RequestMethod.GET)
	public String about(@PathVariable("para")String para){
		return "ufo/about";
	}
	@RequestMapping(value = "ufo/{para}/blog", method = RequestMethod.GET)
	public String blog(Model model, @PathVariable("para")String para, HttpSession session){
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		session.setAttribute("eventPara", para);
		
		
		List<FestUfoNotice> danoNotice = new ArrayList<FestUfoNotice>();
		List<FestUfoNotice> mediaNotice = new ArrayList<FestUfoNotice>();
		List<FestUfoNotice> newsLetterNotice = new ArrayList<FestUfoNotice>();
		List<FestUfoNotice> faqNotice = new ArrayList<FestUfoNotice>();
		
		for(FestUfoNotice ele : noticeList){
			if(ele.getContent().contains("#FAQ")){
				faqNotice.add(ele);
				continue;
			}else if(ele.getContent().contains("#언론보도")){
				mediaNotice.add(ele);
				continue;
			}else if(ele.getContent().contains("#뉴스레터")){
				newsLetterNotice.add(ele);
				continue;
			}else{
				danoNotice.add(ele);
				continue;
			}
		}
		
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqNotice", faqNotice);
		model.addAttribute("mediaNotice", mediaNotice);
		model.addAttribute("newsLetterNotice", newsLetterNotice);
		model.addAttribute("danoNotice", danoNotice);
		model.addAttribute("ufo", ufo);
		return "ufo/blog";
	}
	@RequestMapping(value = "ufo/{para}/blog-single", method = RequestMethod.GET)
	public String blog_single(Model model, @RequestParam("num") Integer num, @PathVariable("para")String para, HttpSession session){
		
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		session.setAttribute("eventPara", para);
		
		FestUfoNotice notice = dao.SelectOneUfoNotice(num);
		
		model.addAttribute("notice", notice);
		model.addAttribute("ufo", ufo);
		
		return "ufo/blog-single";
	}
	@RequestMapping(value = "ufo/career", method = RequestMethod.GET)
	public String career(){
		return "ufo/career";
	}
	@RequestMapping(value = "ufo/contact", method = RequestMethod.GET)
	public String contact(){
		return "ufo/contact";
	}
	@RequestMapping(value = "ufo/{para}/features", method = RequestMethod.GET)
	public String features(Model model, @PathVariable("para")String para, HttpSession session){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		
		model.addAttribute("ufo", ufo);
		return "ufo/features";
	}
	@RequestMapping(value = "ufo/{para}/index", method = RequestMethod.GET)
	public String index(Model model, @PathVariable("para")String para, HttpSession session){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
				
		List<UfoGoRecord> winner = dao.selectUfoWinnerLastHourByPara(para);
		
		model.addAttribute("winner", winner);
		model.addAttribute("ufo", ufo);
		return "ufo/index";
	}
	
	@RequestMapping(value = "ufo/{para}/stamp", method = RequestMethod.GET)
	public String stamp(Model model, @PathVariable("para")String para, HttpSession session){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		List<UfoGoVO> ufoGo = dao.selectUfoGoByPara(para);
		List<UfoGoVO> ufoqr = dao.selectUfoQrByPara(para);
		
		
		if(ufo.getMenu().contains("stories")){
			List<FestQuesListVO> ql = getQuestionModel(para);
			model.addAttribute("quesVO", ql);
		}
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		model.addAttribute("noticeList", noticeList);
		
		model.addAttribute("ufoqr", ufoqr);
		model.addAttribute("ufo", ufo);
		model.addAttribute("ufoGo", ufoGo);
		return "ufo/stamp";
	}
	
	@RequestMapping(value = "ufo/{para}/minwon", method = RequestMethod.GET)
	public String minwon(Model model, @PathVariable("para")String para, HttpSession session){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		List<UfoGoVO> ufoGo = dao.selectUfoGoByPara(para);
		List<UfoGoVO> ufoqr = dao.selectUfoQrByPara(para);
		
		
		if(ufo.getMenu().contains("stories")){
			List<FestQuesListVO> ql = getQuestionModel(para);
			model.addAttribute("quesVO", ql);
		}
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		model.addAttribute("noticeList", noticeList);
		
		model.addAttribute("ufoqr", ufoqr);
		model.addAttribute("ufo", ufo);
		model.addAttribute("ufoGo", ufoGo);
		return "ufo/minwon";
	}
	
	public List<FestQuesListVO> getQuestionModel(String para){
		List<FestQuesListVO> ql= new ArrayList<FestQuesListVO>();
		
		int size = quesStaticModel.size();
		
		for(int i = 0 ; i < size ; i++){
			boolean rightPara = false;
			try{
				if(quesStaticModel.get(i).get(0).getPara().equals(para)){
					rightPara = true;
				};
			}catch(Exception e){
				
			}
			if(rightPara){
				ql = quesStaticModel.get(i);
				break;
			}
		}
		
		return ql;
	}
	//승리자를 찾기
//	@Scheduled(fixedDelay=1800000)
//	public void winnerPickeTdd(){
//		List<String> paras = dao.selectAllPara();
//		for(String ele : paras){
//			List<UfoGoRecord> tempRecord = dao.selectRandUfoRecordByPara(ele);
//			if(!tempRecord.isEmpty()){
//				Map<String, UfoGoRecord> finalTempRecord = new HashMap<String, UfoGoRecord>();
//				for(UfoGoRecord rec : tempRecord){
//					System.out.println(rec.getFirst_name() + rec.getPara() + rec.getLast_name());
//					//중복을 제거하고
//					if(!finalTempRecord.containsKey(rec.getUser_uid())){
//						finalTempRecord.put(rec.getUser_uid(), rec);
//						//완성한 사람이 아니면 뺀다.
//						if(dao.selectPartDoneStamp(rec) != 1){
//							System.out.println("insert");
//							finalTempRecord.remove(rec.getUser_uid());
//						}
//					}
//				}
//				for(Map.Entry<String, UfoGoRecord> elem : finalTempRecord.entrySet()){
//					System.out.println(elem.getValue().getUser_uid());
//					dao.insertWinnerRecord(elem.getValue());
//				}
//			}
//		}
//	}
		
	
	//승리자를 찾기
	@Scheduled(cron=InitValue.crontime, zone="Asia/Seoul")
	public void winnerPicker(){
		List<String> paras = dao.selectAllPara();
		for(String ele : paras){
			List<UfoGoRecord> tempRecord = dao.selectRandUfoRecordByPara(ele);
			if(!tempRecord.isEmpty()){
				Map<String, UfoGoRecord> finalTempRecord = new HashMap<String, UfoGoRecord>();
				for(UfoGoRecord rec : tempRecord){
					System.out.println(rec.getFirst_name() + rec.getPara() + rec.getLast_name());
					//중복을 제거하고
					if(!finalTempRecord.containsKey(rec.getUser_uid())){
						finalTempRecord.put(rec.getUser_uid(), rec);
						//완성한 사람이 아니면 뺀다.
//						if(dao.selectPartDoneStamp(rec) != 1){
//							System.out.println("insert");
//							finalTempRecord.remove(rec.getUser_uid());
//						}
					}
					//4명이면 완성.
					if(finalTempRecord.size() == InitValue.winnerNumber){
						break;
					}
				}
				for(Map.Entry<String, UfoGoRecord> elem : finalTempRecord.entrySet()){
					System.out.println("Winner is "+elem.getValue().getUser_uid());
					dao.insertWinnerRecord(elem.getValue());
				}
			}
		}
	}
	
	
	//서베이 점수 스케줄 
	public static List<List<FestQuesListVO>> quesStaticModel = new ArrayList<List<FestQuesListVO>>();
	@Scheduled(fixedDelay=1800000)
	public void doSomething() {
	    
		List<List<FestQuesListVO>> quesModel = new ArrayList<List<FestQuesListVO>>();
		
		List<String> paras = dao.selectAllPara();
		
		for(String para : paras){
			List<FestQuesListVO> ql= dao.selectUfoQuestionsNew(para);
			List<FestOption> ol = dao.selectUfoQuestionsOptionsNew(para);
			
			for(FestOption ele : ol){
				ql.get(ele.getQ_number()).getQuestionOptions().add(ele);
			}
			
			//그래프 만들기:속도를 위해서 제거
			List<FestAnswerVO> answer = dao.selectUfoAnserByPara(para);
			//퍼센트 계산해 todo
			int length = answer.size();
			if(length != 0){
				List<FestAnswerVO> answerSurvey = new ArrayList<FestAnswerVO>();
				
				for(FestAnswerVO ele : answer){
					if(ele.getSns_type_a().contains("survey")){
						answerSurvey.add(ele);
					}
				}
				
				length = answerSurvey.size();
				
				int[][] points = new int[5][4];
				
				for(FestAnswerVO ele : answerSurvey){
					if(ele.getSns_type_a().contains("survey")){
						points[0][ele.getQ1_a()-1]++;
						points[1][ele.getQ2_a()-1]++;
						points[2][ele.getQ3_a()-1]++;
						points[3][ele.getQ4_a()-1]++;
						points[4][ele.getQ5_a()-1]++;
					}
				}
				
				if(ql.size() != 0){
					for(int i = 0; i < ql.size() - 2 ; i++){
						for(int j = 0; j < 4; j++){
							int point = points[i][j];
							ql.get(i).getQuestionOptions().get(j).setPoint(point);
							ql.get(i).getQuestionOptions().get(j).setPercent(point*100/length);
						}
					}
					
					//SORTING!!
					for(int i = 0; i < ql.size() - 2; i++){
						Collections.sort(ql.get(i).getQuestionOptions(), new Comparator<FestOption>() {
							@Override
							public int compare(FestOption a, FestOption b){
								return Integer.compare(b.getPoint(), a.getPoint());
							}
						});
					}
				System.out.println(ql.get(0).getPara() + " survey init");
				}
			}	
			quesModel.add(ql);
		}
		quesStaticModel = quesModel;
	}
	
	
	@RequestMapping(value = "ufo/{para}/checkResult/{type}/{uid}", method = RequestMethod.GET)
	public @ResponseBody int checkSurveyResult(Model model, @PathVariable("para")String para, HttpSession session, @PathVariable("uid")String uid, @PathVariable("type")String type){
		FestAnswerVO answer = new FestAnswerVO();
		answer.setUid_a(uid);
		answer.setPara(para);
		answer = dao.selectSnsPost(answer);
		if(!answer.getUid_a().equals("")){
			return 1;
		}else{
			return 0;
		}
	}
	
	@RequestMapping(value = "ufo/{para}/result/{type}/{uid}", method = RequestMethod.GET)
	public String getResult(Model model, @PathVariable("para")String para, HttpSession session, @PathVariable("uid")String uid, @PathVariable("type")String type){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		if(type.equals("go")){
			List<UfoGoVO> ufoResult = new ArrayList<UfoGoVO>();
			List<UfoGoRecord> userResult = new ArrayList<UfoGoRecord>();
			
			UfoGoRecord vo = new UfoGoRecord();
			vo.setPara(para);
			vo.setUfo_go_type(type);
			vo.setUser_uid(uid);

			userResult = dao.selectUfoGoRecordByParaAndUid(vo);
			int userSize = 0;
			int ufoSize  = 0;
			String typeString = "";
			if(type.equals("go")){
				ufoResult = dao.selectUfoGoByPara(para);
				typeString = "Stamp Rally";
			}else if(type.equals("qr")){
				ufoResult = dao.selectUfoQrByPara(para);
				typeString = "QR Rally";
			}
			for(UfoGoVO ele : ufoResult){
				if(ele.getUfo_go_type().equals("go")){
					ufoSize++;
				}
			}
			
			
			for(UfoGoRecord ele: userResult){
				for(UfoGoVO ele2 : ufoResult){
					if(ele.getUfo_gid().equals(ele2.getUfo_gid())){
						ele2.setGo_image(ele.getUfo_image());
						ele2.setSubmit(true);
						userSize++;
					}
				}
			}
			
			String link = "https://www.pc2018.ga/PIX/ufo/"+para+"/result/"+type+"/"+uid;
			String homepage = "https://wwww.pc2018.ga/PIX/ufo/"+para+"/stamp";
			
			model.addAttribute("ufoResult", ufoResult);
			model.addAttribute("ufo", ufo);
			model.addAttribute("ufoSize", ufoSize);
			model.addAttribute("userSize", userSize);
			model.addAttribute("rallyType", typeString);
			model.addAttribute("shareLink", link);
			model.addAttribute("homepage", homepage);
			model.addAttribute("type", type);
			model.addAttribute("uid", uid);
			return "ufo/sns_result";
			
		}else if(type.equals("ve")){
			
			FestAnswerVO answer = new FestAnswerVO();
			answer.setUid_a(uid);
			answer.setPara(para);
			answer = dao.selectSnsPost(answer);
			List<FestQuesListVO> surveyList = dao.selectUfoQuestionsNew(para);
			List<FestOption> optionList = dao.selectUfoQuestionsOptionsNew(para);
			
			for(FestQuesListVO ele : surveyList){
				for(FestOption el : optionList){
					if(el.getQ_number() == ele.getOrderq()){
						if(ele.getOrderq() == 0 && el.getOrderq() == answer.getQ1_a()-1){
							ele.getQuestionOptions().add(el);
						}else if(ele.getOrderq() == 1 && el.getOrderq() == answer.getQ2_a()-1){
							ele.getQuestionOptions().add(el);
						}else if(ele.getOrderq() == 2 && el.getOrderq() == answer.getQ3_a()-1){
							ele.getQuestionOptions().add(el);
						}else if(ele.getOrderq() == 3 && el.getOrderq() == answer.getQ4_a()-1){
							ele.getQuestionOptions().add(el);
						}else if(ele.getOrderq() == 4 && el.getOrderq() == answer.getQ5_a()-1){
							ele.getQuestionOptions().add(el);
						}
					}
				}
			}
			
			String link = "https://www.pc2018.ga/PIX/ufo/"+para+"/result/"+type+"/"+uid;
			String homepage = "https://www.pc2018.ga/PIX/ufo/"+para+"/stamp";
			
			model.addAttribute("answer", answer);
			model.addAttribute("surveyList", surveyList);
			model.addAttribute("ufo", ufo);
			model.addAttribute("shareLink", link);
			model.addAttribute("homepage", homepage);
			model.addAttribute("type", type);
			model.addAttribute("uid", uid);
			return "ufo/sns_result_survey";
		}else if(type.equals("mw")){
			//민원 결과
			
			UfoMinwon paraMinwon = new UfoMinwon();
			paraMinwon.setPara(para);
			paraMinwon.setMinwonUid(uid);
			List<UfoMinwon> list = dao.selectUfoMinwonByVo(paraMinwon);
			
			String link = "https://www.pc2018.ga/PIX/ufo/"+para+"/result/"+type+"/"+uid;
			String homepage = "https://www.pc2018.ga/PIX/ufo/"+para+"/stamp";
			
			
			model.addAttribute("shareLink", link);
			model.addAttribute("homepage", homepage);
			
			model.addAttribute("minwonList", list);	
			model.addAttribute("ufo", ufo);	
			model.addAttribute("type", type);
			model.addAttribute("uid", uid);
			
			return "ufo/sns_result_minwon";
		}else{
			return "redirect:index";
		}
	}
	
	@RequestMapping(value = "ufo/{para}/result/{type}/{uid}/{gid}", method = RequestMethod.GET)
	public String getResultSolo(Model model, @PathVariable("para")String para, HttpSession session, @PathVariable("uid")String uid, @PathVariable("type")String type, @PathVariable("gid")String gid){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		
		String link = "https://www.pc2018.ga/PIX/ufo/"+para+"/result/"+type+"/"+uid+"/"+gid;
		String homepage = "https://www.pc2018.ga/PIX/ufo/"+para+"/stamp";
		String go_image = "";
		String desc = "";
		if(type.equals("mw")){
			UfoMinwon minwon = new UfoMinwon();
			minwon = dao.selectUfoMinwonById(Integer.parseInt(gid));
			go_image = minwon.getMinwonImg();
			desc = minwon.getMinwonDesc();
		}else{
		
			List<UfoGoRecord> userResult = new ArrayList<UfoGoRecord>();
			
			UfoGoRecord vo = new UfoGoRecord();
			vo.setPara(para);
			vo.setUfo_go_type(type);
			vo.setUser_uid(uid);
	
			userResult = dao.selectUfoGoRecordByParaAndUid(vo);
			
			
			for(UfoGoRecord ele: userResult){
					if(ele.getUfo_gid().equals(gid)){
						go_image = ele.getUfo_image();
					}
			}
			
		}
		model.addAttribute("go_image", go_image);
		model.addAttribute("ufo", ufo);
		model.addAttribute("shareLink", link);
		model.addAttribute("homepage", homepage);
		model.addAttribute("desc", desc);
		model.addAttribute("type", type);
		model.addAttribute("uid", uid);
		
		return "ufo/sns_result_single";
	}
	@RequestMapping(value = "ufo/job-single", method = RequestMethod.GET)
	public String job_single(){
		return "ufo/job-single";
	}
	@RequestMapping(value = "ufo/pricing", method = RequestMethod.GET)
	public String pricing(){
		return "ufo/pricing";
	}
	@RequestMapping(value = "ufo/{para}/stories", method = RequestMethod.GET)
	public String stories(Model model, @PathVariable("para")String para, HttpSession session){
		
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		
		if(ufo.getMenu().contains("stories")){
			List<FestQuesListVO> ql = getQuestionModel(para);
			model.addAttribute("quesVO", ql);
		}
		
		model.addAttribute("ufo", ufo);
		return "ufo/stories";
	}
	@RequestMapping(value = "ufo/story-single", method = RequestMethod.GET)
	public String story_single(){
		return "ufo/story-single";
	}
	@RequestMapping(value = "ufo/support", method = RequestMethod.GET)
	public String support(){
		return "ufo/support";
	}
	@RequestMapping(value = "ufo/{para}/snsLog/fb", method = RequestMethod.POST)
	public @ResponseBody int inputFacebookLogin(@ModelAttribute("vo")FestSnsLog log, HttpServletRequest request){
		log.setSns_ip(request.getRemoteAddr());
		return dao.insertSnsLog(log);
	}
	
	@RequestMapping(value = "ufo/{para}/newsletter", method = RequestMethod.POST)
	public @ResponseBody int inputNewsLetterEmail(@ModelAttribute("vo")FestNewsLetterEmail vo, HttpServletRequest request){
		vo.setNews_letter_ip(request.getRemoteAddr());
		return dao.insertNewsLetterEmail(vo);
	}
	// 서베이 받기.
	@RequestMapping(value = "ufo/{para}/surveySubmit", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int surveySubmit(@ModelAttribute("vo")FestAnswerVO vo, HttpServletRequest request, @RequestParam("file") MultipartFile file
			, @PathVariable("para")String para, HttpSession session, Model model){
		
		vo.setIp_log(request.getRemoteAddr());
		vo.setPara(para);
		
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                
                vo.setQ7_a(fileInfo[0]);
                vo.setPic_lat(fileInfo[1]);
                vo.setPic_lon(fileInfo[2]);
                
                System.out.println("You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded at ANSWER : "+para);
                
            } catch (Exception e) {
            	System.out.println("You failed to upload => " + e.getMessage() );
            }
        } else {
        	System.out.println("You failed to upload because the file was empty");
        	
        }
		
		//이름에 띄어쓰기가 있으면 %20으로 바꾼다.
		if(vo.getLast_name_a().contains(" ")){
			vo.setLast_name_a(vo.getLast_name_a().replaceAll("\\s+", "%20"));
			
		}
		if(vo.getFirst_name_a().contains(" ")){
			vo.setFirst_name_a(vo.getFirst_name_a().replaceAll("\\s+", "%20"));
		}
		

		return dao.insertUfoAnswer(vo);
	}
	
	@RequestMapping(value = "ufo/{para}/surveySubmitLog", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int surveySubmit(@ModelAttribute("")FestAnswerVO vo, HttpServletRequest request, @PathVariable("para")String para, HttpSession session, Model model){
		vo.setIp_log(request.getRemoteAddr());
		vo.setPara(para);

		try{
		//이름에 띄어쓰기가 있으면 %20으로 바꾼다.
		if(vo.getLast_name_a().contains(" ")){
			vo.setLast_name_a(vo.getLast_name_a().replaceAll("\\s+", "%20"));
			
		}
		if(vo.getFirst_name_a().contains(" ")){
			vo.setFirst_name_a(vo.getFirst_name_a().replaceAll("\\s+", "%20"));
		}
		}catch(Exception e){
			e.getStackTrace();
		}
		return dao.insertUfoAnswer(vo);
	}
	@RequestMapping(value = "ufo/{para}/shareSubmit", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int shareSubmit(@ModelAttribute("")UfoShare vo, HttpServletRequest request, @PathVariable("para")String para){
		vo.setPara(para);
		return dao.insertUfoShare(vo);
	}
	
	@RequestMapping(value = "ufo/{para}/shareRand4", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<UfoShare> shareRand4(@ModelAttribute("")UfoShare vo, HttpServletRequest request, @PathVariable("para")String para){
		vo.setPara(para);
		return dao.select4RandomShare_timeByVo(vo);
	}
	
	
	//To-do 파일 업로드 및 폼받아줘야 됨!
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(); 
	    // set any fields
	    return commonsMultipartResolver; 
	}
	
	@RequestMapping(value = "ufo/post/{para}/{uid}", method = {RequestMethod.GET, RequestMethod.POST})
	public String readPost(@PathVariable("uid")String uid, @PathVariable("para")String para, Model model, HttpSession session){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		
		FestAnswerVO answer = new FestAnswerVO();
		answer.setUid_a(uid);
		answer.setPara(para);
		model.addAttribute("vo", dao.selectSnsPost(answer));
		model.addAttribute("ufo", ufo);
		return "ufo/sns-post";
	}
	
	@RequestMapping(value = "ufo/{para}/catch/{type}/{gid}", method = RequestMethod.GET)
	public String catchGo(Model model, @PathVariable("para")String para, HttpSession session, @PathVariable("type")String type, @PathVariable("gid")String gid){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		List<UfoGoVO> ufoGo = dao.selectUfoGoByPara(para);
		List<UfoGoVO> ufoqr = dao.selectUfoQrByPara(para);
		
		if(ufo.getMenu().contains("stories")){
			List<FestQuesListVO> ql = getQuestionModel(para);
			model.addAttribute("quesVO", ql);
		}
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		model.addAttribute("noticeList", noticeList);
		
		model.addAttribute("ufoqr", ufoqr);
		model.addAttribute("ufo", ufo);
		model.addAttribute("ufoGo", ufoGo);
		model.addAttribute("type", type);
		model.addAttribute("gid", gid);
		
		return "ufo/stamp";
	}
	
	@RequestMapping(value = "ufo/{para}/reader", method = RequestMethod.GET)
	public String reader(Model model, @PathVariable("para")String para){
		model.addAttribute("para", para);
		return "ufo/reader";
	}
	
	@RequestMapping(value = "ufo/winnerLike", method = {RequestMethod.POST})
	public @ResponseBody int winnerLike(@RequestParam("winneridx") int idx){
		dao.updateWinnerLike(idx);
		return dao.selectWinnerLike(idx);
	}
	
	@RequestMapping(value = "ufo/{para}/barcodeLog/{uid}/{gid}", method = {RequestMethod.POST})
	public @ResponseBody int barcodeLogG(@PathVariable("para") String para, @PathVariable("uid") String uid, @PathVariable("gid") String gid){
		UfoBarcodeLog vo = new UfoBarcodeLog();
		vo.setGid(gid);
		vo.setPara(para);
		vo.setUid(uid);
		return dao.insertBarcodeLog(vo);
	}
	
	@RequestMapping(value = "ufo/{para}/barcodeLog/{uid}", method = {RequestMethod.POST})
	public @ResponseBody int barcodeLogU(@PathVariable("para") String para, @PathVariable("uid") String uid){
		UfoBarcodeLog vo = new UfoBarcodeLog();
		vo.setPara(para);
		vo.setUid(uid);
		return dao.insertBarcodeLog(vo);
	}
}
