package com.skilldistillery.fraudindicator.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.fraudindicator.data.FraudIndicatorDAO;
import com.skilldistillery.fraudindicator.entities.FraudIndicator;

@Controller
public class FraudIndicatorController {
	
	@Autowired
	private FraudIndicatorDAO fiDao;
	
	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		List<FraudIndicator> allFi = fiDao.findAll();
		model.addAttribute("allIndicators", allFi);
		return "home"; // Using view resolver.
	} 
	
	

	
	
	
}











