package com.hack.bernhack;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {	
	@RequestMapping(value = "/")	
		public String getLoginForm() {		
		return "index";
	}
	
	
	
}
