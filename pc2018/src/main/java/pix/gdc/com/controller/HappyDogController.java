package pix.gdc.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HappyDogController {
	@RequestMapping(value = "HD/", method = RequestMethod.GET)
	public String home(){
		return "happydog/about";
	}
	@RequestMapping(value = "HD/about", method = RequestMethod.GET)
	public String about(){
		return "happydog/about";
	}
	@RequestMapping(value = "HD/company", method = RequestMethod.GET)
	public String company(){
		return "happydog/company";
	}
	@RequestMapping(value = "HD/news", method = RequestMethod.GET)
	public String news(){
		return "happydog/news";
	}
	@RequestMapping(value = "HD/apply", method = RequestMethod.GET)
	public String apply(){
		return "happydog/apply";
	}
	@RequestMapping(value = "HD/info", method = RequestMethod.GET)
	public String info(){
		return "happydog/info";
	}
	@RequestMapping(value = "HD/qna", method = RequestMethod.GET)
	public String qna(){
		return "happydog/qna";
	}
}
