package com.matrimonial.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.matrimonial.formObject.LoginForm;
import com.matrimonial.formObject.RegistrationForm;

@Controller
public class HomePageController {

	
	@RequestMapping("/homepage")
	protected ModelAndView returnHomepage(HttpServletRequest request,
		HttpServletResponse response,RedirectAttributes attributes,@ModelAttribute("registration") final Object reg) throws Exception {
		
		ArrayList<String> profile=new ArrayList<>();
		profile.add("Self");
		profile.add("Son");
		profile.add("Daughter");
		profile.add("Brother");
		profile.add("Sister");
		profile.add("Friend");
		profile.add("Relative");
		ArrayList<String> gender=new ArrayList<>();
		gender.add("Male");
		gender.add("Female");
		ModelAndView modelandview = new ModelAndView("HomePage");
		modelandview.addObject("profile", profile);
		modelandview.addObject("gender", gender);
		modelandview.addObject("loginForm",new LoginForm());
		modelandview.addObject("registrationForm",new RegistrationForm());
		modelandview.addObject("registration",reg);
		return modelandview;
	}
}
