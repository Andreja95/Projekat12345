package com.ajovanovic.fakultet.repository;

import com.ajovanovic.fakultet.model.Student;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface StudentRepository extends Repository<Student, Long> {

	Student findById(Long id);

	List<Student> findAll();

	Long deleteById(Long id);

	Student save(Student s);
}
