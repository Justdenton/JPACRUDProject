package com.skilldistillery.fraudindicator.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.skilldistillery.fraudindicator.data.FraudIndicatorDAO;
import com.skilldistillery.fraudindicator.entities.FraudIndicator;

@Controller
public class FraudIndicatorController {

	@Autowired
	private FraudIndicatorDAO fiDao;

	// HOME
	@RequestMapping(path = { "/", "home.do" }, method = RequestMethod.GET)
	public String home(Model model) {
		List<FraudIndicator> allFi = fiDao.findAll();
		model.addAttribute("allIndicators", allFi);
		return "home"; 
	}

	// SEARCH BY ID
	@RequestMapping(path = "searchById.do", method = RequestMethod.GET)
	public String searchById(@RequestParam("id") int id, Model model) {
		FraudIndicator fraudIndicator = fiDao.findById(id);
		if (fraudIndicator != null) {
			model.addAttribute("searchResults", List.of(fraudIndicator));
		} else {
			model.addAttribute("error", "No indicator found with ID: " + id);
		}
	
		return "result";
	} 
	// SEARCH BY KEYWORD
	@RequestMapping(path = "searchByKeyword.do", method = RequestMethod.GET)
	public String searchByKeyword(@RequestParam("keyword") String keyword, Model model) {
	    List<FraudIndicator> fraudIndicator = fiDao.findByKeyword(keyword);
	    if (fraudIndicator.isEmpty()) {
	    	model.addAttribute("error", "No indicator found with keyword: " + keyword);
	    } else { 
	    	model.addAttribute("searchResults", fraudIndicator);
	    }
	    
	    return "result";
	}
	

	// LIST (ALL)
	@RequestMapping(path = "list.do", method = RequestMethod.GET)
	public String list(Model model) {
		List<FraudIndicator> allIndicators = fiDao.findAll();
		model.addAttribute("allIndicators", allIndicators);
		return "list";
	}

	// CREATE - GET
	@RequestMapping(path = "create.do", method = RequestMethod.GET)
	public String showCreateForm(Model model) {
		return "create";
	}

	// CREATE - POST
	@RequestMapping(path = "create.do", method = RequestMethod.POST)
	public String create(FraudIndicator fi, Model model) {
		FraudIndicator createdFi = fiDao.create(fi);
		return "redirect:home.do";
	}

	// UPDATE - GET
	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		FraudIndicator fraudIndicator = fiDao.findById(id);
		model.addAttribute("fraudIndicator", fraudIndicator);
		return "update";
	}

	// UPDATE - POST
	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public String update(FraudIndicator fi, Model model) {
		FraudIndicator updatedFi = fiDao.update(fi.getId(), fi);
		return "redirect:home.do";
	}

	// DELETE
	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public String delete(@RequestParam("id") int id, Model model) {
		boolean isDeleted = fiDao.deleteById(id);
		return "redirect:home.do";
	} 

}
