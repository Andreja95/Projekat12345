package com.ajovanovic.fakultet.controller;

import com.ajovanovic.fakultet.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StudentiController {

	@Autowired
	private StudentRepository studenti;

	@GetMapping("/studenti")
	public String studenti(Model model) {
		model.addAttribute("studenti", studenti.findAll());
		return "studenti";
	}
}
