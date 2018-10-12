package com.ajovanovic.fakultet.controller;

import com.ajovanovic.fakultet.repository.ProfesorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProfesoriController {

	@Autowired
	private ProfesorRepository profesorRepository;

	@GetMapping("/profesori")
	public String profesori(Model model) {
		model.addAttribute("profesori", profesorRepository.findAll());
		return "profesori";
	}
}
