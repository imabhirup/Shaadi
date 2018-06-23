package com.shaadi.matrimonial;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping("/test")
	protected ModelAndView getPage(){
		
		ModelAndView modelAndView=new ModelAndView("HomePage");
		return modelAndView;
		
	}
	
}
