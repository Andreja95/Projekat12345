package com.ajovanovic.fakultet.controller;

import com.ajovanovic.fakultet.model.Ispit;
import com.ajovanovic.fakultet.model.Predmet;
import com.ajovanovic.fakultet.model.Profesor;
import com.ajovanovic.fakultet.model.Student;
import com.ajovanovic.fakultet.repository.IspitRepository;
import com.ajovanovic.fakultet.repository.PredmetRepository;
import com.ajovanovic.fakultet.repository.ProfesorRepository;
import com.ajovanovic.fakultet.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private PredmetRepository predmetRepository;
	@Autowired
	private ProfesorRepository profesorRepository;
	@Autowired
	private IspitRepository ispitRepository;
	@Autowired
	private StudentRepository studentRepository;

	@GetMapping
	public String admin(Model model) {
		model.addAttribute("predmeti", predmetRepository.findAll());
		model.addAttribute("profesori", profesorRepository.findAll());
		model.addAttribute("ispiti", ispitRepository.findAll());
		model.addAttribute("studenti", studentRepository.findAll());
		return "admin";
	}

	@PostMapping("/dodavanje/profesor")
	public String dodajProfesora(@Valid @ModelAttribute("profesor") Profesor p) {
		profesorRepository.save(p);
		return "redirect:/admin";
	}

	@GetMapping("/brisanje/profesor/{id}")
	public String obrisiProfesora(@PathVariable("id") Long id) {
		profesorRepository.deleteById(id);
		return "redirect:/admin";
	}

	@PostMapping("/dodavanje/student")
	public String dodajStudenta(@Valid @ModelAttribute("student") Student s) {
		studentRepository.save(s);
		return "redirect:/admin";
	}

	@GetMapping("/brisanje/student/{id}")
	public String obrisiStudenta(@PathVariable("id") Long id) {
		final Student student = studentRepository.findById(id);
		for (Ispit ispit : student.getIspiti()) {
			boolean brisi = false;
			for (Student prijavljenStudent : ispit.getStudenti()) {
				if (prijavljenStudent.getId().equals(student.getId())) {
					brisi = true;
				}
			}
			if (brisi) {
				ispit.getStudenti().remove(student);
			}
		}
		studentRepository.deleteById(id);
		return "redirect:/admin";
	}

	@PostMapping("/dodavanje/predmet")
	public String dodajPredmet(@Valid @ModelAttribute("predmet") Predmet p) {
		predmetRepository.save(p);
		return "redirect:/admin";
	}

	@GetMapping("/brisanje/predmet/{id}")
	public String obrisiPredmet(@PathVariable("id") Long id) {
		predmetRepository.deleteById(id);
		return "redirect:/admin";
	}

	@PostMapping("/dodavanje/ispit")
	public String dodajIspit(@Valid @ModelAttribute("ispit") Ispit i, @RequestParam String studenti) {
		for (String id : studenti.split(",")) {
			Student s = studentRepository.findById(Long.valueOf(id));
			i.getStudenti().add(s);
		}
		ispitRepository.save(i);
		return "redirect:/admin";
	}

	@GetMapping("/brisanje/ispit/{id}")
	public String obrisiIspit(@PathVariable("id") Long id) {
		ispitRepository.deleteById(id);
		return "redirect:/admin";
	}
}
