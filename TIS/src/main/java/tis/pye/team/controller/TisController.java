package tis.pye.team.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import tis.pye.team.vo.TisPolicies;
import tis.pye.team.vo.TisSupports;
import tis.pye.team.vo.TisTransportations;
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
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
				return "tis/infoTrip";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "tis/homeAdmin";
		}
		
	}
	@RequestMapping(value = "/infoTripForm", method = RequestMethod.GET)
	public String tisinfoTripForm(Model model, HttpSession session){
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
				
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("thv", thv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
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
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/TripCodesUpdateForm", method = RequestMethod.POST)
	public String TripCodesUpdateForm(@ModelAttribute("vo") TisEvent vo){
		dao.updateEvent(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/LocationsForm", method = RequestMethod.POST)
	public String locationsFormInsert(@ModelAttribute("vo") TisVenue vo){
		dao.insertVenue(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/LocationsUpdateForm", method = RequestMethod.POST)
	public String locationsUpdateForm(@ModelAttribute("vo") TisVenue vo){
		dao.updateVenue(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/FacForm", method = RequestMethod.POST)
	public String FacFormInsert(@ModelAttribute("vo") TisFacilities vo){
		dao.insertFac(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/FacUpdateForm", method = RequestMethod.POST)
	public String FacUpdateForm(@ModelAttribute("vo") TisFacilities vo){
		dao.updateFac(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/PolForm", method = RequestMethod.POST)
	public String PolFormInsert(@ModelAttribute("vo") TisPolicies vo){
		dao.insertPol(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/PolUpdateForm", method = RequestMethod.POST)
	public String PolUpdateForm(@ModelAttribute("vo") TisPolicies vo){
		dao.updatePol(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/TrsForm", method = RequestMethod.POST)
	public String TrsFormInsert(@ModelAttribute("vo") TisTransportations vo){
		dao.insertTrs(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/TrsUpdateForm", method = RequestMethod.POST)
	public String TrsUpdateForm(@ModelAttribute("vo") TisTransportations vo){
		dao.updateTrs(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/SupForm", method = RequestMethod.POST)
	public String SupFormInsert(@ModelAttribute("vo") TisSupports vo){
		dao.insertSupports(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "/SupUpdateForm", method = RequestMethod.POST)
	public String SupUpdateForm(@ModelAttribute("vo") TisSupports vo){
		dao.updateSupports(vo);
		return "redirect:infoAdmin";
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
}
