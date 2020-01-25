package com.hack.bernhack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hack.bernhack.dao.FormDao;
import com.hack.bernhack.model.FormValue;

@Controller
public class ReportController {

	@Autowired
	private FormDao fdao;
	
	@RequestMapping(value = "/reports")
	public String getReport(Model model) {
		
			model.addAttribute("formList", fdao.getAllReports());
			return "adminPanel";
		

	}
	
	@RequestMapping(value = "/form")
	public String getForm() {
		return "form";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String saveForm(@ModelAttribute FormValue formValue, Model model) {
		fdao.addReport(formValue);
		model.addAttribute("formList", fdao.getAllReports());
		return "adminPanel";
	}
}
