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
}
