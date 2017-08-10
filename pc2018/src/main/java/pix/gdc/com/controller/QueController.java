package pix.gdc.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import pix.gdc.com.dao.QueDAO;
import pix.gdc.com.service.RestService;
import pix.gdc.com.vo.QueAnswers;
import pix.gdc.com.vo.QueQuestions;

@Controller
public class QueController {
	@Autowired
	QueDAO dao;
	@Autowired
	RestService restService;
	
	@RequestMapping(value = "que/", method = RequestMethod.GET)
	public String queHome(Model model){
		List<QueQuestions> questions = dao.selectQuestions();
		
		model.addAttribute("que", questions);
		return "que/que";
	}
	
	@RequestMapping(value = "que/questions/{id}", method = RequestMethod.GET)
	public String question(@PathVariable("id")int id, Model model){
		QueQuestions que = dao.selectQuestionsById(id);
		
		model.addAttribute("que", que);
		return "que/question";
	}
	
	@RequestMapping(value="que/questions/queFormSub/", method = RequestMethod.POST)
	public String insertqueFormSub(@ModelAttribute("vo")QueAnswers vo, @RequestParam("file") MultipartFile file){
		int result = 0;
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                
                vo.setImgFile(fileInfo[0]);
                
            
                try{
            		result = dao.insertAnswers(vo);
            		
            	}catch(Exception e){
            		result = 2;
            	}
                
            } catch (Exception e) {
                System.out.println("You failed to upload => " + e.getMessage() +e.getStackTrace());
                result=33;
            }
        } else {
        	try{
        		result = dao.insertAnswers(vo);
        	}catch(Exception e){
        		result = 3;
        	}
        }
		System.out.println(result);
		return "redirect:/que/";
	}
}
