package com.gc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/*
 * author: Antonella Solomon
 *
 */

@Controller
public class HomeController {

	@RequestMapping("/welcome")
	public String registrationForm() {

	
		return "registration";
	}
	@RequestMapping("success")
	public ModelAndView registerSuccess(@RequestParam("fName")String firstName,@RequestParam("lName")String lastName,@RequestParam("gender")String gender) {
		String sayHello = "Hello, "+ firstName + " "+ lastName ;
		return new ModelAndView("success","helloMsg",sayHello);
	}
}
