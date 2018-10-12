package com.ajovanovic.fakultet.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Profesor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String ime;

	private String prezime;

	private String adresa;

	private String telefon;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "profesor")
	private Set<Predmet> predmeti;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "profesor")
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

	public String getPrezime() {
		return prezime;
	}

	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}

	public String getAdresa() {
		return adresa;
	}

	public void setAdresa(String adresa) {
		this.adresa = adresa;
	}

	public String getTelefon() {
		return telefon;
	}

	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}

	public Set<Predmet> getPredmeti() {
		return predmeti;
	}

	public void setPredmeti(Set<Predmet> predmeti) {
		this.predmeti = predmeti;
	}

	public Set<Ispit> getIspiti() {
		return ispiti;
	}

	public void setIspiti(Set<Ispit> ispiti) {
		this.ispiti = ispiti;
	}
}
