package com.ajovanovic.fakultet.controller;

import com.ajovanovic.fakultet.repository.IspitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RasporedController {

	@Autowired
	private IspitRepository ispitRepository;

	@GetMapping("/")
	public String raspored(Model model) {
		model.addAttribute("ispiti", ispitRepository.findAll());
		return "raspored";
	}
}
