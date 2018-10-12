package com.ajovanovic.fakultet.repository;

import com.ajovanovic.fakultet.model.Ispit;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface IspitRepository extends Repository<Ispit, Long> {

	List<Ispit> findAll();

	Long deleteById(Long id);

	Ispit save(Ispit i);
}
