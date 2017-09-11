package pix.gdc.com.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pix.gdc.com.vo.Event_VO;
import pix.gdc.com.vo.FestAnswerVO;
import pix.gdc.com.vo.FestEvent;
import pix.gdc.com.vo.FestEventInfo;
import pix.gdc.com.vo.FestEventNotice;
import pix.gdc.com.vo.FestLogin;
import pix.gdc.com.vo.FestNewsLetterEmail;
import pix.gdc.com.vo.FestOption;
import pix.gdc.com.vo.FestQ1;
import pix.gdc.com.vo.FestQ2;
import pix.gdc.com.vo.FestQ3;
import pix.gdc.com.vo.FestQ4;
import pix.gdc.com.vo.FestQ5;
import pix.gdc.com.vo.FestQ6;
import pix.gdc.com.vo.FestQ7;
import pix.gdc.com.vo.FestQuesListVO;
import pix.gdc.com.vo.FestSnsLog;
import pix.gdc.com.vo.FestUfo;
import pix.gdc.com.vo.FestUfoNotice;
import pix.gdc.com.vo.Notice_VO;
import pix.gdc.com.vo.UfoBarcodeLog;
import pix.gdc.com.vo.UfoGoRecord;
import pix.gdc.com.vo.UfoGoVO;
import pix.gdc.com.vo.UfoLable;
import pix.gdc.com.vo.UfoMinwon;
import pix.gdc.com.vo.UfoShare;


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
	
	// UFO 공지사항 가지고 오기
		public FestUfoNotice SelectOneUfoNotice(int param){
			return getSqlSession().selectOne("BasicMapper.SelectOneUfoNotice", param);
		}
	
	// UFO 다가지고 오기
	public FestUfo SelectUfoByNumber(int param){
		return getSqlSession().selectOne("BasicMapper.SelectUfoByNumber", param);
	}
	
	// UFO 다가지고 오기
	public FestUfo SelectUfoByPara(String param){
		UfoLable ufoLable = getSqlSession().selectOne("BasicMapper.selectUfoLableByPara", param);
		FestUfo vo = getSqlSession().selectOne("BasicMapper.SelectUfoByPara", param);
		vo.setUfoLable(ufoLable);
		return vo;
	}
	
	//질문 다가지고 오기
	public List<FestQuesListVO> SelectUfoQuestionByPara(String param){
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
	
	//정보사항 업데이트
	public void UpdateInfoByVo(HashMap<String, Object> vo){
		if(vo.get("voType").equals("info")){
			getSqlSession().update("BasicMapper.UpdateInfoByVo", vo);
		}else if(vo.get("voType").equals("desc")){
			getSqlSession().update("BasicMapper.UpdateDescByVo", vo);			
		}else if(vo.get("voType").equals("hist")){
			getSqlSession().update("BasicMapper.UpdateHistByVo", vo);			
		}else if(vo.get("voType").equals("cont")){
			getSqlSession().update("BasicMapper.UpdateContByVo", vo);
		}else if(vo.get("voType").equals("prog")){
			getSqlSession().update("BasicMapper.UpdateProgByVo", vo);
		}else if(vo.get("voType").equals("loca")){
			getSqlSession().update("BasicMapper.UpdateLocaByVo", vo);
		}
		
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
	
	//sns로그  찍기 
	public int insertSnsLog(FestSnsLog vo){
		return getSqlSession().insert("BasicMapper.insertSnsLog", vo);
	}
	
	//누스레터 찍기
	public int insertNewsLetterEmail(FestNewsLetterEmail vo){
		return getSqlSession().insert("BasicMapper.insertNewsLetterEmail", vo);
	}
	
	//세로운 질문option 가지고 오는 방법
	public List<FestOption> selectUfoQuestionsOptionsNew(String para){
		return getSqlSession().selectList("BasicMapper.selectUfoQuestionsOptionsNew", para);
	}
	
	//세로운 질문 가지고 오는 방법
	public List<FestQuesListVO> selectUfoQuestionsNew(String para){
		return getSqlSession().selectList("BasicMapper.selectUfoQuestionsNew", para);
	}
	
	//답변 이벤트별로 다가지고 오기
	public List<FestAnswerVO> selectUfoAnserByPara(String para){
		return  getSqlSession().selectList("BasicMapper.selectUfoAnserByPara", para);
		
	}
	//답변 넣기!
	public int insertUfoAnswer(FestAnswerVO para){
		return getSqlSession().insert("BasicMapper.insertUfoAnswer", para);
	}
	
	//개인포스트 가지고 오기
	public FestAnswerVO selectSnsPost(FestAnswerVO para){
		return getSqlSession().selectOne("BasicMapper.selectSnsPost", para);
	}
	
	//유에포 가지고 오기
	public List<UfoGoVO> selectUfoGoByPara(String para){
		return getSqlSession().selectList("BasicMapper.selectUfoGoByPara", para);
	}
	
	//유에큐알 가지고 오기
	public List<UfoGoVO> selectUfoQrByPara(String para){
		return getSqlSession().selectList("BasicMapper.selectUfoQrByPara", para);
	}
	
	//유에포 레코드 가지고 오기
	public List<UfoGoRecord> selectUfoGoRecordByPara(String para){
		return getSqlSession().selectList("BasicMapper.selectUfoGoRecordByPara", para);
	}
	
	//유에포 레코드 넣기
	public int insertUfoRecord(UfoGoRecord vo){
		return getSqlSession().insert("BasicMapper.insertUfoRecord", vo);
	}
	
	//유에포 레코드 가지고 오기
	public List<UfoGoRecord> selectUfoGoRecordByParaAndUid(UfoGoRecord vo){
		return getSqlSession().selectList("BasicMapper.selectUfoGoRecordByParaAndUid", vo);
	}
	
	//쉐어4개 랜덤픽
	public List<UfoShare> select4RandomShare_timeByVo(UfoShare vo){
		return getSqlSession().selectList("BasicMapper.select4RandomShare_timeByVo", vo);
	}
	
	//쉐어싹가지고 오기
	public List<UfoShare> selectShare_timeByVo(UfoShare vo){
		return getSqlSession().selectList("BasicMapper.selectShare_timeByVo", vo);
	}
	
	//쉐어넣기
	public int insertUfoShare(UfoShare vo){
		return getSqlSession().insert("BasicMapper.insertUfoShare", vo);
	}
	
	//고 넣기
	public int insertUfoGo(UfoGoVO vo){
		return getSqlSession().insert("BasicMapper.insertUfoGo", vo);
	}
	
	//고 업데이트
	public int updateUfoGo(UfoGoVO vo){
		return getSqlSession().update("BasicMapper.updateUfoGo", vo);
	}

	
	//모든 파라 셀레트
	public List<String> selectAllPara(){
		return getSqlSession().selectList("BasicMapper.selectAllPara");
	}
	
	//레코드 지난 한시간 랜덤 2개 셀렉트
	public List<UfoGoRecord> selectRandUfoRecordByPara(String vo){
		return getSqlSession().selectList("BasicMapper.selectRandUfoRecordByPara", vo);
	}
	
	//위너 인서트
	public int insertWinnerRecord(UfoGoRecord vo){
		return getSqlSession().insert("BasicMapper.insertWinnerRecord", vo);
	}
	
	//위너 지난 한시간 셀렉트
	public List<UfoGoRecord> selectUfoWinnerLastHourByPara(String vo){
		return getSqlSession().selectList("BasicMapper.selectUfoWinnerLastHourByPara", vo);
	}
	
	//위너 셀렉트
	public List<UfoGoRecord> selectUfoWinnerByPara(String vo){
		return getSqlSession().selectList("BasicMapper.selectUfoWinnerByPara", vo);
	}
	
	//위너 라이크 +1
	public int updateWinnerLike(int vo){
		return getSqlSession().update("BasicMapper.updateWinnerLike", vo);
	}
	
	//위너 라이크 셀렉 
	public int selectWinnerLike(int vo){
		return getSqlSession().selectOne("BasicMapper.selectWinnerLike", vo);
	}
	
	//스탬프 완료 선택 셀렉 
	public int selectPartDoneStamp(UfoGoRecord vo){
		return getSqlSession().selectOne("BasicMapper.selectPartDoneStamp", vo);
	}
	
	//바코드 로그
	public int insertBarcodeLog(UfoBarcodeLog vo){
		return getSqlSession().insert("BasicMapper.insertBarcodeLog", vo);
	}
	//페이스북 로그인 인원
	public int selectFbNumPart(String para){
		return getSqlSession().selectOne("BasicMapper.selectFbNumPart", para);
	}
	//페이스북 로그인 체크 횟수
	public int selectFbLogCheckNum(String para){
		return getSqlSession().selectOne("BasicMapper.selectFbLogCheckNum", para);
	}
	//미션 완료 인원수 
	public int selectGoPartNumber(String para){
		return getSqlSession().selectOne("BasicMapper.selectGoPartNumber", para);
	}
	//미션 완료 인원수 
	public List<String> selectGoPart(String para){
		return getSqlSession().selectList("BasicMapper.selectGoPart", para);
	}
	//미션 완전히 완료한 사람 인원수
	public int selectGoCompPartNum(String para){
		List<String> list = selectGoPart(para);
		int count = 0;
		for(String ele : list){
			UfoGoRecord vo = new UfoGoRecord();
			vo.setPara(para);
			vo.setUser_uid(ele);
			int comp = selectPartDoneStamp(vo);
			if(comp == 1){
				count++;
			}
		}
		return count;
	}
	//유저 스탬프 히스토리 구하기 
	public List<UfoGoRecord> selectGoPartHistoryByParaAndUid(UfoGoRecord vo){
		return getSqlSession().selectList("BasicMapper.selectGoPartHistoryByParaAndUid", vo);
	}
	
	//인쇄한 사진 수
	public int selectBarcodeLogCountUnique(String para){
		return getSqlSession().selectOne("BasicMapper.selectBarcodeLogCountUnique", para);
	}
	//selectShareParNumByPara selectShareNumByPara selectQrPartNumByPara selectQrNumByPara
	//공유 인원
	public int selectShareParNumByPara(String para){
		return getSqlSession().selectOne("BasicMapper.selectShareParNumByPara", para);
	}
	//공유 숫자
	public int selectShareNumByPara(String para){
		return getSqlSession().selectOne("BasicMapper.selectShareNumByPara", para);
	}
	//큐알 참여 인원
	public int selectQrPartNumByPara(String para){
		return getSqlSession().selectOne("BasicMapper.selectQrPartNumByPara", para);
	}
	//큐알 참여 숫자
	public int selectQrNumByPara(String para){
		return getSqlSession().selectOne("BasicMapper.selectQrNumByPara", para);
	}
	
	
	//파라로 라벨 가지고 오자
	public UfoLable selectUfoLableByPara(String para){
		return getSqlSession().selectOne("BasicMapper.selectUfoLableByPara", para);
	}
	//민원 넣기
	public int insertUfoMinwon(UfoMinwon vo){
		return getSqlSession().insert("BasicMapper.insertUfoMinwon", vo);
	}
	
	//민원 파라로 가지고 오기
	public List<UfoMinwon> selectUfoMinwonByPara(String para){
		return getSqlSession().selectList("BasicMapper.selectUfoMinwonByPara", para);
	}
	//민원 id 로 가지고 오기
	public UfoMinwon selectUfoMinwonById(Integer para){
		return getSqlSession().selectOne("BasicMapper.selectUfoMinwonById", para);
	}
	//민원 vo 로 가지고 오기
	public List<UfoMinwon> selectUfoMinwonByVo(UfoMinwon para){
		return getSqlSession().selectList("BasicMapper.selectUfoMinwonByVo", para);
	}
	
	//스탬프 랠리 가지고 오기 위드 페이징 하기
	public List<UfoGoRecord> selectUfoGoRecordByVoPage(UfoGoRecord para){
		return getSqlSession().selectList("BasicMapper.selectUfoGoRecordByVoPage", para);
	}
	//설문조사 퀘스쳔 업데이트 
	public int updateQuestion(FestQuesListVO vo){
		return getSqlSession().update("BasicMapper.updateQuestion", vo);
	}
	//옵션 가지고 오기
	public List<FestOption> selectOptionsByQnumber(FestOption vo){
		return getSqlSession().selectList("BasicMapper.selectOptionsByQnumber", vo);
	}
	//옵션 업데이트
	public int updateOptionById(FestOption vo){
		return getSqlSession().update("BasicMapper.updateOptionById", vo);
	}
	//gid 존재 확인
 	public int countGidNumberByGid(int vo){
 		return getSqlSession().selectOne("BasicMapper.countGidNumberByGid", vo);
 	}
}
