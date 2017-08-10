package pix.gdc.com.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import pix.gdc.com.vo.QueAnswers;
import pix.gdc.com.vo.QueQuestions;

@Repository
public class QueDAO extends SqlSessionDaoSupport{
	//
	public List<QueQuestions> selectQuestions(){
		return getSqlSession().selectList("QueMapper.selectQuestions");
	}
	
	//
	public List<QueAnswers> selectAnswers(){
		return getSqlSession().selectList("QueMapper.selectAnswers");
	}
	//
	public int insertAnswers(QueAnswers param){
		return getSqlSession().insert("QueMapper.insertAnswers", param);
	}
	//
	public QueQuestions selectQuestionsById(int id){
		return getSqlSession().selectOne("QueMapper.selectQuestionsById", id);
	}
}
