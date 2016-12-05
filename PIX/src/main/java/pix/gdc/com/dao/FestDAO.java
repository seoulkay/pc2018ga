package pix.gdc.com.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pix.gdc.com.vo.Event_VO;
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
import pix.gdc.com.vo.Notice_VO;


@Repository
public class FestDAO extends SqlSessionDaoSupport{
	
	public FestLogin checkLogin(FestLogin vo){
		return getSqlSession().selectOne("BasicMapper.FestloginCheck", vo);
	}
	
	public List<FestEvent> SelectFestEvent(){
		return getSqlSession().selectList("BasicMapper.SelectFestEvent");
	}
	
	public List<FestOption> SelectOption(FestOption vo){
		return getSqlSession().selectList("BasicMapper.SelectOption", vo);
	}
	
	//일번 문제를 불러 오기
	public FestQ1 SelectQ1(int param){
		
		FestQ1 result = new FestQ1();
		FestOption option = new FestOption();
		List<FestOption> optionList = new ArrayList<FestOption>();
		
		option.setFest_option_q(1);
		option.setEvent_idx(param);
		
		optionList = SelectOption(option);
		
		result = getSqlSession().selectOne("BasicMapper.SelectQ1", param);
		
		if(!optionList.isEmpty()){			
			result.setOptionlist(optionList);
		}
		
		return result;
	}
	
	public FestQ2 SelectQ2(int param){
		
		FestQ2 result = new FestQ2();
		FestOption option = new FestOption();
		List<FestOption> optionList = new ArrayList<FestOption>();
		
		option.setFest_option_q(2);
		option.setEvent_idx(param);
		
		optionList = SelectOption(option);
		
		result = getSqlSession().selectOne("BasicMapper.SelectQ2", param);
		
		if(!optionList.isEmpty()){			
			result.setOptionlist(optionList);
		}
		
		return result;
	}
	
	public FestQ3 SelectQ3(int param){
		
		FestQ3 result = new FestQ3();
		FestOption option = new FestOption();
		List<FestOption> optionList = new ArrayList<FestOption>();
		
		option.setFest_option_q(3);
		option.setEvent_idx(param);
		
		optionList = SelectOption(option);
		
		result = getSqlSession().selectOne("BasicMapper.SelectQ3", param);
		
		if(!optionList.isEmpty()){			
			result.setOptionlist(optionList);
		}
		
		return result;
	
	}
	
	public FestQ4 SelectQ4(int param){
		
		FestQ4 result = new FestQ4();
		FestOption option = new FestOption();
		List<FestOption> optionList = new ArrayList<FestOption>();
		
		option.setFest_option_q(4);
		option.setEvent_idx(param);
		
		optionList = SelectOption(option);
		
		result = getSqlSession().selectOne("BasicMapper.SelectQ4", param);
		
		if(!optionList.isEmpty()){			
			result.setOptionlist(optionList);
		}
		
		return result;
	}
	public FestQ5 SelectQ5(int param){
		
		FestQ5 result = new FestQ5();
		FestOption option = new FestOption();
		List<FestOption> optionList = new ArrayList<FestOption>();
		
		option.setFest_option_q(5);
		option.setEvent_idx(param);
		
		optionList = SelectOption(option);
		
		result = getSqlSession().selectOne("BasicMapper.SelectQ5", param);
		
		if(!optionList.isEmpty()){			
			result.setOptionlist(optionList);
		}
		
		return result;
	}
	
	public FestQ6 SelectQ6(int param){
		
		FestQ6 result = new FestQ6();
		FestOption option = new FestOption();
		List<FestOption> optionList = new ArrayList<FestOption>();
		
		option.setFest_option_q(6);
		option.setEvent_idx(param);
		
		optionList = SelectOption(option);
		
		result = getSqlSession().selectOne("BasicMapper.SelectQ6", param);
		
		if(!optionList.isEmpty()){			
			result.setOptionlist(optionList);
		}
		
		return result;
	}
	public FestQ7 SelectQ7(int param){
		
		FestQ7 result = new FestQ7();
		FestOption option = new FestOption();
		List<FestOption> optionList = new ArrayList<FestOption>();
		
		option.setFest_option_q(7);
		option.setEvent_idx(param);
		
		optionList = SelectOption(option);
		
		result = getSqlSession().selectOne("BasicMapper.SelectQ7", param);
		
		if(!optionList.isEmpty()){			
			result.setOptionlist(optionList);
		}
		
		return result;
	}
	
	public List<FestEventNotice> SelectNotice(int param){
		return getSqlSession().selectList("BasicMapper.SelectNotice", param);
	}
	
	public List<FestEventInfo> SelectInfo(int param){
		return getSqlSession().selectList("BasicMapper.SelectInfo", param);
	}
	
	//숫자로 파라매터 찾기 
	public String SelectUfoParaByNumber(int param){
		return getSqlSession().selectOne("BasicMapper.SelectUfoParaByNumber", param);
	}
	
	//숫자로 이름 찾기 
	public String SelectFestEventNameByNumber(int param){
		return getSqlSession().selectOne("BasicMapper.SelectFestEventNameByNumber", param);
	}
	
	
	
	// UFO 공지사항 가지고 오기
	public List<FestUfoNotice> SelectUfoNotice(String param){
		return getSqlSession().selectList("BasicMapper.SelectUfoNotice", param);
	}
	
	// UFO 다가지고 오기
	public FestUfo SelectUfoByNumber(int param){
		return getSqlSession().selectOne("BasicMapper.SelectUfoByNumber", param);
	}
	
	//질문 다가지고 오기
	public List<String> SelectUfoQuestionByPara(String param){
		return getSqlSession().selectList("BasicMapper.SelectUfoQuestionByPara", param);
	}
	
	//q1가지고 오기
	public List<FestOption> SelectUfoOptionQ1ByPara(String param){	
		return getSqlSession().selectList("BasicMapper.SelectUfoOptionQ1ByPara", param);	
	}
	
	//q2가지고 오기
	public List<FestOption> SelectUfoOptionQ2ByPara(String param){
		return getSqlSession().selectList("BasicMapper.SelectUfoOptionQ2ByPara", param);
	}
	
	//q3가지고 오기
	public List<FestOption> SelectUfoOptionQ3ByPara(String param){
		return getSqlSession().selectList("BasicMapper.SelectUfoOptionQ3ByPara", param);
	}
	
	//q4가지고 오기
	public List<FestOption> SelectUfoOptionQ4ByPara(String param){
		return getSqlSession().selectList("BasicMapper.SelectUfoOptionQ4ByPara", param);	
	}
	//q5가지고 오기
	public List<FestOption> SelectUfoOptionQ5ByPara(String param){
		return getSqlSession().selectList("BasicMapper.SelectUfoOptionQ5ByPara", param);
	}
	
	//공지사항 내용 업데이트
	public void UpdateNoticeContentByKey(HashMap<String, Object> map){
		getSqlSession().update("BasicMapper.UpdateNoticeContentByKey", map);
	}
	
	//공지사항 내용 입력
	public void InsertNoticeByModel(FestUfoNotice vo){
		getSqlSession().insert("BasicMapper.InsertNoticeByModel", vo);
	}
	
	//공지사항 지우기
	public void DeleteNoticeContentByKey(FestUfoNotice vo){
		getSqlSession().update("BasicMapper.DeleteNoticeContentByKey", vo.getIdfest_ufo_notice());
	}
	
	//모바일 앱을 위해서 이벤트비오를만들어 주기
	public Event_VO SelectUfoForMobileByPara(String para){
		Event_VO vo = new Event_VO();
		FestDAO festDao = new FestDAO();
		
		vo = getSqlSession().selectOne("BasicMapper.SelectUfoForMobileByPara", para);
		
		
		List<FestOption> q1 = getSqlSession().selectList("BasicMapper.SelectUfoOptionQ1ByPara", para);
		List<FestOption> q2 = getSqlSession().selectList("BasicMapper.SelectUfoOptionQ2ByPara", para);
		List<FestOption> q3 = getSqlSession().selectList("BasicMapper.SelectUfoOptionQ3ByPara", para);
		List<FestOption> q4 = getSqlSession().selectList("BasicMapper.SelectUfoOptionQ4ByPara", para);
		List<FestOption> q5 = getSqlSession().selectList("BasicMapper.SelectUfoOptionQ5ByPara", para);
		
		List<String> q1s = new ArrayList<String>();
		List<String> q2s = new ArrayList<String>();
		List<String> q3s = new ArrayList<String>();
		List<String> q4s = new ArrayList<String>();
		List<String> q5s = new ArrayList<String>();
		
		
		for(FestOption ele : q1){
			q1s.add(ele.getFest_option_content());
		}
		vo.setQ1_option(q1s);
	
		for(FestOption ele : q2){
			q2s.add(ele.getFest_option_content());
		}
		vo.setQ2_option(q2s);
	
		
		for(FestOption ele : q3){
			q3s.add(ele.getFest_option_content());
		}
		vo.setQ3_option(q3s);
	
		
		for(FestOption ele : q4){
			q4s.add(ele.getFest_option_content());
		}
		vo.setQ4_option(q4s);
	
		
		for(FestOption ele : q5){
			q5s.add(ele.getFest_option_content());
		}
		vo.setQ5_option(q5s);
	
		
		List<FestUfoNotice> fn = getSqlSession().selectList("BasicMapper.SelectUfoNotice", para);
		List<Notice_VO> nl = new ArrayList<Notice_VO>();
		for(FestUfoNotice ele : fn){
			Notice_VO nvo = new Notice_VO();
			nvo.setContent(ele.getContent());
			nvo.setCreatedBy(ele.getCreatedBy());
			nvo.setDate(ele.getDate().toString());
			nvo.setTitle(ele.getTitle());
			nl.add(nvo);
		}
		vo.setNoticeList(nl);
		List<String> questions = new ArrayList<String>();
		questions = getSqlSession().selectList("BasicMapper.SelectUfoQuestionByPara", para);
		vo.setQuestions(questions);
		
		//될꺼야 아마
		return vo;
	}
}
