package pix.gdc.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import pix.gdc.com.dao.FestDAO;
import pix.gdc.com.vo.Event_VO;
import pix.gdc.com.vo.PixComment;

@Controller
public class FestApiController {
	
	@Autowired
	FestDAO dao;
	
	@RequestMapping(value = "FEV/getEvent/{para}", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody Event_VO readPixArticleComment(@PathVariable("para")String para){
		return dao.SelectUfoForMobileByPara(para);
	}
	
}
