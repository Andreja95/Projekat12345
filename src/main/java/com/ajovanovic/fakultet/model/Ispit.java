package com.ajovanovic.fakultet.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Ispit {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "predmetid")
	private Predmet predmet;

	@ManyToOne
	@JoinColumn(name = "profesorid")
	private Profesor profesor;

	@ManyToMany
	@JoinTable(name = "ispit_student", joinColumns = @JoinColumn(name = "ispitid", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "studentid", referencedColumnName = "id"))
	private Set<Student> studenti = new HashSet<>();

	private String datum;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Predmet getPredmet() {
		return predmet;
	}

	public void setPredmet(Predmet predmet) {
		this.predmet = predmet;
	}

	public Profesor getProfesor() {
		return profesor;
	}

	public void setProfesor(Profesor profesor) {
		this.profesor = profesor;
	}

	public Set<Student> getStudenti() {
		return studenti;
	}

	public void setStudenti(Set<Student> studenti) {
		this.studenti = studenti;
	}

	public String getDatum() {
		return datum;
	}

	public void setDatum(String datum) {
		this.datum = datum;
	}
}
