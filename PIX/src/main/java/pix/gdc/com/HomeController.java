package pix.gdc.com;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pix.gdc.com.dao.BasicDAO;
import pix.gdc.com.vo.PixArticle;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	BasicDAO basicDao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome MAIN PIX! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		List<PixArticle> pixList = basicDao.getAllPixArticle();
		System.out.println(pixList.size()+"SIZESIZE!");
		
		List<PixArticle> tempList = new ArrayList<PixArticle>();
		for(int i=0 ; i < 5; i++) tempList.add(pixList.get(i));
		
		model.addAttribute("pixList", tempList);
		return "pixMain";
	}
	
}
