package com.matrimonial.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.matrimonial.formObject.RegistrationForm;

@Controller
public class RegisterPageController {

	@RequestMapping("/register")
	protected RedirectView getRegisterPage(@ModelAttribute("registrationForm") RegistrationForm form, Model model,RedirectAttributes attributes){
		System.out.println(form);
		//model.addAttribute("registration", "done");
		//redirectAttributes.addAttribute(arg0)
		attributes.addFlashAttribute("registration", "done");
		return new RedirectView("/Matrimonial/homepage");
		
	}
	
	
}
