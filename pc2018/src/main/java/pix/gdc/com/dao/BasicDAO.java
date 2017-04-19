package pix.gdc.com.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import pix.gdc.com.vo.FestUfo;
import pix.gdc.com.vo.PixArticle;
import pix.gdc.com.vo.PixComment;
import pix.gdc.com.vo.PixLike;


@Repository
public class BasicDAO extends SqlSessionDaoSupport{
	public List<PixArticle> getAllPixArticle(){
		return getSqlSession().selectList("BasicMapper.getAllpixArticle");
	}
	
	public List<PixArticle> getPixArticleByFullName(String param){
		return getSqlSession().selectList("BasicMapper.getPixArticleByFullName", param);
	}
	
	public int insertPixArticle(PixArticle vo){
		return getSqlSession().insert("BasicMapper.insertPixArticle", vo);
	}
	
	public int insertlike(PixLike vo){
		return getSqlSession().insert("BasicMapper.insertPixLike", vo);
	}
	public List<Integer> selectLikesByUser(String user){
		return getSqlSession().selectList("BasicMapper.selectLikesByUser", user);
	}
	public List<PixLike> countLikesByUser(String user){
		return getSqlSession().selectList("BasicMapper.countLikesByUser", user);
	}
	public PixArticle getPixArticleByIdx(int idx){
		return getSqlSession().selectOne("BasicMapper.getPixArticleByIdx", idx);
	}
	public List<PixComment> getPixCommentByIdx(int idx){
		return getSqlSession().selectList("BasicMapper.getPixCommentByIdx", idx);
	}
	public int updateFestUfoByKey(FestUfo vo){
		return getSqlSession().update("BasicMapper.UpdateFestUfoByKey", vo);
	}
}
