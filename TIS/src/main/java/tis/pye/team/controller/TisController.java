package tis.pye.team.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import tis.pye.team.dao.TisDao;
import tis.pye.team.vo.TisAccom;
import tis.pye.team.vo.TisAdmin;
import tis.pye.team.vo.TisEmployee;
import tis.pye.team.vo.TisEmployeeList;
import tis.pye.team.vo.TisEvent;
import tis.pye.team.vo.TisFacilities;
import tis.pye.team.vo.TisFlight;
import tis.pye.team.vo.TisIti;
import tis.pye.team.vo.TisItiDetail;
import tis.pye.team.vo.TisOther;
import tis.pye.team.vo.TisPolicies;
import tis.pye.team.vo.TisShift;
import tis.pye.team.vo.TisShiftList;
import tis.pye.team.vo.TisSupports;
import tis.pye.team.vo.TisTransportations;
import tis.pye.team.vo.TisTrip;
import tis.pye.team.vo.TisVenue;

@Controller
public class TisController {
	@Autowired
	TisDao dao;
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String tisLogin(){
		return "tis/home";
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String tisLoginadmin(){
		return "tis/homeAdmin";
	}
	
	@RequestMapping(value = "/infoAdmin", method = RequestMethod.POST)
	public String tisLoginadminAdmin(@ModelAttribute("vo") TisAdmin vo, Model model, HttpSession session){
		try{
		TisAdmin em = dao.selectAdminByAdminId(vo);
			if(em.getAdmin_pass().equals(vo.getAdmin_pass())){
				
				session.setAttribute("user_name", em.getAdmin_name());
				
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				List<TisEmployee> temp = dao.selectEmployee();
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
				return "tis/infoAdmin";
			}else{
				return "tis/homeAdmin";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "tis/homeAdmin";
		}
	}
	
	@RequestMapping(value = "/infoTrip", method = RequestMethod.GET)
	public String tisinfoTrip(Model model, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "tis/homeAdmin";
			}else{
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				List<TisEmployee> temp = dao.selectEmployee();
				
				List<TisTrip> ttr = dao.selectTripsJoinDesc();
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
				
				model.addAttribute("ttr", ttr);
				return "tis/infoTrip";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "tis/homeAdmin";
		}
		
	}
	@RequestMapping(value = "/infoTripForm", method = RequestMethod.GET)
	public String tisinfoTripForm(Model model, HttpSession session, 
			 @RequestParam("event_id")int event_id,
			 @RequestParam("emp_id")int emp_id){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "tis/homeAdmin";
			}else{
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisVenue> thv = dao.selectHotelVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				List<TisEmployee> temp = dao.selectEmployee();
				
			
				TisTrip tripinfo = new TisTrip();
				tripinfo.setEmp_id(emp_id);
				tripinfo.setEvent_id(event_id);
				tripinfo = dao.selectTripByParam(tripinfo);
				
				//여정 가지고 오기
				List<TisIti> ti = dao.selectItiByTrip(tripinfo.getId());
				
				TisEmployee em = new TisEmployee();
				em.setId(emp_id);
				em.setEvent_id(event_id);
				List<TisAccom> tacclist = dao.selectAccomByAtosId(em);
				TisAccom tacc = new TisAccom();
				try{
				tacc = tacclist.get(0);
				}catch(Exception e){
					//숙박 리스트가 없으면 아무것도 안함
				}
				TisOther to = new TisOther();
				to.setEmp_id(tripinfo.getEmp_id());
				to.setEvent_id(tripinfo.getEvent_id());
				to = dao.selectTisOtherByEventEmp(to); 
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("thv", thv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
				
				model.addAttribute("tripinfo", tripinfo);
				model.addAttribute("tacc", tacc);
				model.addAttribute("ti", ti);
				model.addAttribute("to", to);
				
				return "tis/infoTripForm";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "tis/homeAdmin";
		}
		
	}
	
	@RequestMapping(value = "/infoShift", method = RequestMethod.GET)
	public String infoShift(Model model, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "tis/homeAdmin";
			}else{
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				List<TisEmployee> temp = dao.selectEmployee();
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
				return "tis/infoShift";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "tis/homeAdmin";
		}
		
	}
	
	@RequestMapping(value = "/infoTripcodes", method = RequestMethod.GET)
	public String infoTripcodes(Model model, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "tis/homeAdmin";
			}else{
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				return "tis/infoTripcodes";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "tis/homeAdmin";
		}
		
	}
	
	@RequestMapping(value = "/infoAdmin", method = RequestMethod.GET)
	public String tisLoginadminAdminGet(Model model, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "tis/homeAdmin";
			}else{

				List<TisEmployee> temp = dao.selectEmployee();
				
				model.addAttribute("temp", temp);
				return "tis/infoAdmin";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "tis/homeAdmin";
		}
		
	}
	
	@RequestMapping(value = "/TripCodesForm", method = RequestMethod.POST)
	public String TripCodesFormInsert(@ModelAttribute("vo") TisEvent vo){
		dao.insertEvent(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/TripCodesUpdateForm", method = RequestMethod.POST)
	public String TripCodesUpdateForm(@ModelAttribute("vo") TisEvent vo){
		dao.updateEvent(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/LocationsForm", method = RequestMethod.POST)
	public String locationsFormInsert(@ModelAttribute("vo") TisVenue vo){
		dao.insertVenue(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/LocationsUpdateForm", method = RequestMethod.POST)
	public String locationsUpdateForm(@ModelAttribute("vo") TisVenue vo){
		dao.updateVenue(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/FacForm", method = RequestMethod.POST)
	public String FacFormInsert(@ModelAttribute("vo") TisFacilities vo){
		dao.insertFac(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/FacUpdateForm", method = RequestMethod.POST)
	public String FacUpdateForm(@ModelAttribute("vo") TisFacilities vo){
		dao.updateFac(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/PolForm", method = RequestMethod.POST)
	public String PolFormInsert(@ModelAttribute("vo") TisPolicies vo){
		dao.insertPol(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/PolUpdateForm", method = RequestMethod.POST)
	public String PolUpdateForm(@ModelAttribute("vo") TisPolicies vo){
		dao.updatePol(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/TrsForm", method = RequestMethod.POST)
	public String TrsFormInsert(@ModelAttribute("vo") TisTransportations vo){
		dao.insertTrs(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/TrsUpdateForm", method = RequestMethod.POST)
	public String TrsUpdateForm(@ModelAttribute("vo") TisTransportations vo){
		dao.updateTrs(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "/SupForm", method = RequestMethod.POST)
	public String SupFormInsert(@ModelAttribute("vo") TisSupports vo){
		dao.insertSupports(vo);
		return "redirect:infoShift";
	}
	@RequestMapping(value = "/SupUpdateForm", method = RequestMethod.POST)
	public String SupUpdateForm(@ModelAttribute("vo") TisSupports vo){
		dao.updateSupports(vo);
		return "redirect:infoShift";
	}
	@RequestMapping(value = "/ProForm", method = RequestMethod.POST)
	public String ProFormInsert(@ModelAttribute("vo") TisEmployee vo){
		dao.insertEmployee(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/ProUpdateForm", method = RequestMethod.POST)
	public String ProUpdateForm(@ModelAttribute("vo") TisEmployee vo){
		dao.updateEmployee(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/tripForm", method = RequestMethod.POST)
	public String tripFormInsert(@ModelAttribute("vo") TisTrip vo){
		dao.insertTrip(vo);
		return "redirect:infoTrip";
	}
	@RequestMapping(value = "/ItiForm", method = RequestMethod.POST)
	public String ItiForm(@ModelAttribute("vo") TisIti vo,
			@RequestParam("event_id")String event_id, 
			@RequestParam("emp_id")String emp_id){		
		dao.insertIti(vo);
		return "redirect:infoTripForm?event_id="+event_id+"&emp_id="+emp_id;
	}
	@RequestMapping(value = "/ItiUpdateForm", method = RequestMethod.POST)
	public String ItiUpdateForm(@ModelAttribute("vo") TisIti vo, 
			@RequestParam("event_id")String event_id, 
			@RequestParam("emp_id")String emp_id){
		dao.updateIti(vo);
		return "redirect:infoTripForm?event_id="+event_id+"&emp_id="+emp_id;
	}
	@RequestMapping(value = "/itiDetForm", method = RequestMethod.POST)
	public String ItiDetForm(@ModelAttribute("vo") TisItiDetail vo){
		dao.insertItiDet(vo);
		return "redirect:itiForm?id="+vo.getIti_id();
	}
	@RequestMapping(value = "/itiDetUpdateForm", method = RequestMethod.POST)
	public String ItiDetUpdateForm(@ModelAttribute("vo") TisItiDetail vo){
		dao.updateItiDet(vo);
		return "redirect:itiForm?id="+vo.getIti_id();
	}
	@RequestMapping(value = "/OtherForm", method = RequestMethod.POST)
	public String OtherForm(@ModelAttribute("vo") TisOther vo){
		dao.insertUpdateOther(vo);
		return "redirect:infoTripForm?event_id="+vo.getEvent_id()+"&emp_id="+vo.getEmp_id();
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
	
	@RequestMapping(value = "getEmp/{id}", method = RequestMethod.POST)
	public @ResponseBody TisEmployee getEmp(@PathVariable("id")int id){
		TisEmployee vo = new TisEmployee();
		vo.setId(id);
		return dao.selectEmployeeByAtosIdOnly(vo);
	}
	@RequestMapping(value = "getEvent/{id}", method = RequestMethod.POST)
	public @ResponseBody TisEvent getEvent(@PathVariable("id")int id){
		TisEvent vo = new TisEvent();
		vo.setId(id);
		return dao.selectEventById(vo);
	}
	@RequestMapping(value = "getShift/{id}", method = RequestMethod.POST)
	public @ResponseBody List<TisShift> getShift(@PathVariable("id")int id){
		return dao.selectShiftBySupportId(id);
	}
	@RequestMapping(value = "TripAccForm", method = RequestMethod.POST)
	public String  TripAccForm(@ModelAttribute("TisAccom") TisAccom vo, 
			@RequestParam("event_id")String event_id, 
			@RequestParam("emp_id")String emp_id
			){
		//return dao.selectShiftBySupportId(id);

		vo.setAcc_fac(arrayToString(vo.getAcc_fac_list()));
		vo.setAcc_pol(arrayToString(vo.getAcc_pol_list()));
		dao.insertUpdateAcc(vo);
		
		return "redirect:infoTripForm?event_id="+event_id+"&emp_id="+emp_id;
	}
	
	public String arrayToString(String[] str){
		String result = "";
		try{
			for(int i = 0 ; i < str.length; i++){
				result += " "+str[i]+",";
			}
		}catch(Exception e){
			
		}
		return result;
	}
	
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(@ModelAttribute("TisEmployeeList") TisEmployeeList vo) {
		System.out.println(vo);
		System.out.println(vo.getEmployees());
		List<TisEmployee> contacts = vo.getEmployees();
		
		if(null != contacts && contacts.size() > 0) {
			//ContactController.contacts = contacts;
			for (TisEmployee contact : contacts) {
				System.out.printf("%s \t %s \n", contact.getFirst_name(), contact.getLast_name());
			}
		}
		
		return "redirect:infoShift";
	}
	@RequestMapping(value = "SupAssForm", method = RequestMethod.POST)
	public String SupAssForm(@ModelAttribute("TisShiftList") TisShiftList vo) {
		System.out.println(vo);
		List<TisShift> shifts = vo.getShifts();
		
		if(null != shifts && shifts.size() > 0) {
			//ContactController.contacts = contacts;
			for (TisShift shift : shifts) {
				System.out.printf("%s \t %s \n", shift.getGroup_name(), shift.getEmp_id());
				dao.insertUpdateShift(shift);
			}
		}
		
		return "redirect:infoShift";
	}
	
//	@InitBinder
//	public void initBinder(final WebDataBinder binder){
//	  final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm"); 
//	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
//	}
	
	@RequestMapping(value="itiForm", method=RequestMethod.GET)
	public String itiForm(Model modal, @RequestParam("id")int id){
		
		TisIti ti = dao.selectTisItiById(id);
		List<TisItiDetail> tidl = dao.selectItiDetById(id);
		
		modal.addAttribute("ti", ti);
		modal.addAttribute("tidl", tidl);
		return "tis/itiForm";
	}
}
