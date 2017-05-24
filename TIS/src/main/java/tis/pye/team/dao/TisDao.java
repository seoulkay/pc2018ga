package tis.pye.team.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import tis.pye.team.vo.TisAccom;
import tis.pye.team.vo.TisEmployee;
import tis.pye.team.vo.TisEvent;
import tis.pye.team.vo.TisFlight;
import tis.pye.team.vo.TisVenue;

@Repository
public class TisDao extends SqlSessionDaoSupport{
	//비번체크 및 인간 정보 가지고 오기
	public TisEmployee selectEmployeeByAtosId(TisEmployee vo){
		return getSqlSession().selectOne("TisMapper.selectEmployeeByAtosId", vo);
	}
	//비번체크 및 인간 정보 가지고 오기
		public TisEmployee selectEmployeeByAtosName(TisEmployee vo){
			return getSqlSession().selectOne("TisMapper.selectEmployeeByAtosName", vo);
		}
	//아코모 데이션 찾기
	public List<TisAccom> selectAccomByAtosId(TisEmployee vo){
		return getSqlSession().selectList("TisMapper.selectAccomByAtosId", vo);
	}
	//엑티브 이벤트 찾기
	public TisEvent selectActiveEvent(){
		return getSqlSession().selectOne("TisMapper.selectActiveEvent");
	}
	//아코모 데이션 찾기
	public List<TisFlight> selectFlightByAtosId(TisEmployee vo){
		return getSqlSession().selectList("TisMapper.selectFlightByAtosId", vo);
	}
	
	//아코모 데이션 찾기
	public List<TisVenue> selectVenueByAtosId(TisEmployee vo){
		return getSqlSession().selectList("TisMapper.selectVenueByAtosId", vo);
	}
	
}
