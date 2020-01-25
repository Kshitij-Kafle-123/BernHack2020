package com.hack.bernhack.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hack.bernhack.dao.FormDao;
import com.hack.bernhack.dao.PoliceDao;
import com.hack.bernhack.model.FormValue;
import com.hack.bernhack.model.Police;

@Controller
public class LoginController {
	
	@Autowired
	private PoliceDao policeDao;

	@Autowired
	private FormDao fdao;
	@RequestMapping(value = "/login")
	public String getLoginForm() {
		return "form";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String isExist(@ModelAttribute Police police, Model model) {
		if(policeDao.login(police.getBranchName(), police.getPassword())!=null) {
//			model.addAttribute("admin", police.getBranchName());
			model.addAttribute("formList", fdao.getAllReports());
			return "form";
		}
		model.addAttribute("No user found");
		return "login";
	}
	

}

