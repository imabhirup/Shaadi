package com.shaadi.matrimonial;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.shaadi.matrimonial.data.model.Customer;
import com.shaadi.matrimonial.formObject.RegistrationForm;
import com.shaadi.matrimonial.service.MatrimonialCustomerService;


@Controller
public class RegisterPageController {
	
	@Autowired
	MatrimonialCustomerService customerService;
	
	@RequestMapping("/register")
	protected RedirectView getRegisterPage(@ModelAttribute("registrationForm") RegistrationForm form, Model model,RedirectAttributes attributes){
		
		if(customerService.checkExistingCustomer(form.getEmail())){
			attributes.addFlashAttribute("registration", "duplicate");
		}
		else{
			Customer customer=new Customer();
			customer.setEmail(form.getEmail());
			customer.setFirstName(form.getFirstName());
			customer.setGender(form.getGender());
			customer.setLastName(form.getLastName());
			customer.setPassword(form.getPassword());
			customer.setProfileType(form.getProfileType());
			
			customerService.addCustomer(customer);
			
			attributes.addFlashAttribute("registration", "done");
		}
		return new RedirectView("/matrimonial/homepage");
		
	}
	
	
}
