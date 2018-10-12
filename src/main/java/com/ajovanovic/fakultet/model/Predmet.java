package com.ajovanovic.fakultet.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Predmet {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String ime;

	@ManyToOne
	@JoinColumn(name = "profesorid")
	private Profesor profesor;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "predmet")
	private Set<Ispit> ispiti = new HashSet<>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIme() {
		return ime;
	}

	public void setIme(String ime) {
		this.ime = ime;
	}

	public Profesor getProfesor() {
		return profesor;
	}

	public void setProfesor(Profesor profesor) {
		this.profesor = profesor;
	}
}
