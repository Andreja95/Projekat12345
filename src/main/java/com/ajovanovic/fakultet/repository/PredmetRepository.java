package com.ajovanovic.fakultet.repository;

import com.ajovanovic.fakultet.model.Predmet;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface PredmetRepository extends Repository<Predmet, Long> {

	List<Predmet> findAll();

	Long deleteById(Long id);

	Predmet save(Predmet p);
}
