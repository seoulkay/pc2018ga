package tis.pye.team.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import tis.pye.team.vo.TisAccom;
import tis.pye.team.vo.TisAdmin;
import tis.pye.team.vo.TisEmployee;
import tis.pye.team.vo.TisEvent;
import tis.pye.team.vo.TisFacilities;
import tis.pye.team.vo.TisFlight;
import tis.pye.team.vo.TisPolicies;
import tis.pye.team.vo.TisSupports;
import tis.pye.team.vo.TisTransportations;
import tis.pye.team.vo.TisVenue;

@Repository
public class TisDao extends SqlSessionDaoSupport{
	//
	public List<TisEmployee> selectEmployee(){
		return getSqlSession().selectList("TisMapper.selectAllEmployee");
	}
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
	//어드민 로그인
	public TisAdmin selectAdminByAdminId(TisAdmin vo){
		return getSqlSession().selectOne("TisMapper.selectAdminByAdminId", vo);
	}
	//이벤트 다 가지고 오기
	public List<TisEvent> selectAllEvent(){
		return getSqlSession().selectList("TisMapper.selectAllEvent");
	}
	//
	public int insertEvent(TisEvent vo){
		return getSqlSession().insert("TisMapper.insertEvent", vo);
	}
	//
	public int updateEvent(TisEvent vo){
		return getSqlSession().update("TisMapper.updateEvent", vo);
	}
	//
	public List<TisVenue> selectAllVenue(){
		return getSqlSession().selectList("TisMapper.selectAllVenue");
	}
	//
	public int insertVenue(TisVenue vo){
		return getSqlSession().insert("TisMapper.insertVenue", vo);
	}
	//
	public int updateVenue(TisVenue vo){
		return getSqlSession().update("TisMapper.updateVenue", vo);
	}
	//
	public List<TisFacilities> selectFac(){
		return getSqlSession().selectList("TisMapper.selectFac");
	}
	//
	public int insertFac(TisFacilities vo){
		return getSqlSession().insert("TisMapper.insertFac", vo);
	}
	//
	public int updateFac(TisFacilities vo){
		return getSqlSession().update("TisMapper.updateFac", vo);
	}
	//
	public List<TisPolicies> selectPol(){
		return getSqlSession().selectList("TisMapper.selectPol");
	}
	//
	public int insertPol(TisPolicies vo){
		return getSqlSession().insert("TisMapper.insertPol", vo);
	}
	//
	public int updatePol(TisPolicies vo){
		return getSqlSession().update("TisMapper.updatePol", vo);
	}
	//
	public List<TisTransportations> selectTrs(){
		return getSqlSession().selectList("TisMapper.selectTrs");
	}
	//
	public int insertTrs(TisTransportations vo){
		return getSqlSession().insert("TisMapper.insertTrs", vo);
	}
	//
	public int updateTrs(TisTransportations vo){
		return getSqlSession().update("TisMapper.updateTrs", vo);
	}
	//
	public List<TisSupports> selectSupports(){
		return getSqlSession().selectList("TisMapper.selectSupports");
	}
	//
	public int insertSupports(TisSupports vo){
		return getSqlSession().insert("TisMapper.insertSupports", vo);
	}
	//
	public int updateSupports(TisSupports vo){
		return getSqlSession().update("TisMapper.updateSupports", vo);
	}
	//
	public int insertEmployee(TisEmployee vo){
		return getSqlSession().insert("TisMapper.insertEmployee", vo);
	}
	//
	public int updateEmployee(TisEmployee vo){
		return getSqlSession().update("TisMapper.updateEmployee", vo);
	}
}


