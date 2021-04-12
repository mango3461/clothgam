package org.ict.controller;

import org.ict.domain.RankVO;
import org.ict.service.RankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/rank/*")
public class RankController {

	@Autowired
	private RankService service;
	
	
	@GetMapping("/list")
	public void list(Model model) {

		model.addAttribute("list", service.getLikeList());
		
	}
	
	@GetMapping("/youngList")
	public void youngList(Model model) {

		model.addAttribute("list", service.getYoungList());
		
	}
	@GetMapping("/secondList")
	public void secondList(Model model) {

		model.addAttribute("list", service.getSecondList());
		
	}
	@GetMapping("/thirdList")
	public void thirdList(Model model) {

		model.addAttribute("list", service.getThirdList());
		
	}
	
	@GetMapping("/youngMList")
	public void youngMList(Model model) {

		model.addAttribute("list", service.getYoungMList());
		
	}
	@GetMapping("/youngGList")
	public void youngGList(Model model) {

		model.addAttribute("list", service.getYoungGList());
		
	}
	
	
	@GetMapping("/detail")
	public String get(Model model, Integer cglikeno) {
		
		model.addAttribute("rank", service.get(cglikeno));
		
		return "/list";
	}
	
	
	
	
	
}
