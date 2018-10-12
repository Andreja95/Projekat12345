package com.ajovanovic.fakultet.repository;

import com.ajovanovic.fakultet.model.Profesor;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface ProfesorRepository extends Repository<Profesor, Long> {

	List<Profesor> findAll();

	Long deleteById(Long id);

	Profesor save(Profesor p);
}
