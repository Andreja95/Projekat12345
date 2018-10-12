package com.ajovanovic.fakultet.controller;

import com.ajovanovic.fakultet.repository.PredmetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/predmeti")
public class PredmetiController {

	@Autowired
	private PredmetRepository predmetRepository;

	@GetMapping
	public String predmeti(Model model) {
		model.addAttribute("predmeti", predmetRepository.findAll());
		return "predmeti";
	}
}
