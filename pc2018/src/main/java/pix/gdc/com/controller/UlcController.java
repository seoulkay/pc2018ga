package pix.gdc.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UlcController {

	@RequestMapping(value = "ULC/", method = RequestMethod.GET)
	public String ulcMain(){
		return "ulc/main";
	}
	
	@RequestMapping(value = "ULC/privacy", method = RequestMethod.GET)
	public String ulcPrivacy(){
		return "ulc/privacy";
	}
	
	@RequestMapping(value = "ULC/terms", method = RequestMethod.GET)
	public String ulcTerms(){
		return "ulc/terms";
	}
	
	@RequestMapping(value = "REA/", method = RequestMethod.GET)
	public String reactMain(){
		return "react/react";
	}
}
