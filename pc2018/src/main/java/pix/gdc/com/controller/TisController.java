package pix.gdc.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TisController {
	@RequestMapping(value = "TIS/", method = RequestMethod.GET)
	public String tisLogin(){
		return "tis/home";
	}
	
	@RequestMapping(value = "TIS/info", method = RequestMethod.POST)
	public String tisInfo(){
		return "tis/info";
	}
}
