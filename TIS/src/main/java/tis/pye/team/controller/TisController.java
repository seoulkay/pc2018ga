package tis.pye.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tis.pye.team.dao.TisDao;
import tis.pye.team.vo.TisAccom;
import tis.pye.team.vo.TisEmployee;
import tis.pye.team.vo.TisEvent;
import tis.pye.team.vo.TisFlight;
import tis.pye.team.vo.TisVenue;

@Controller
public class TisController {
	@Autowired
	TisDao dao;
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String tisLogin(){
		return "tis/home";
	}
	
	@RequestMapping(value = "/info", method = RequestMethod.POST)
	public String tisInfo(@RequestParam("id")String id, @RequestParam("pass")String pass, Model model){
		
		//유저 알아내기 부분.
		TisEvent te = dao.selectActiveEvent();
		TisEmployee cr = new TisEmployee();
		
		
		String[] name = id.split("\\.");
		
		try{
		cr.setEvent_id(te.getId());
		cr.setFirst_name(name[0]);
		cr.setLast_name(name[1]);
		}catch(Exception e){
			
		}
		
		TisEmployee em = dao.selectEmployeeByAtosName(cr);
		
		
		
		
		try{
		if(em.getPin().equals(pass)){
			
			List<TisAccom> ta = dao.selectAccomByAtosId(em);
			List<TisFlight> tf = dao.selectFlightByAtosId(em);
			List<TisVenue> tv = dao.selectVenueByAtosId(em);
			
			
			model.addAttribute("em", em);
			model.addAttribute("ta", ta);
			model.addAttribute("tf", tf);
			model.addAttribute("tv", tv);
			model.addAttribute("te", te);
			
			return "tis/info";
		}else{
			return "tis/home";
		}
		}catch(Exception e){
			return "tis/home";
		}
	}
}
