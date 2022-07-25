package com.chainsys.spring_mvc.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.spring_mvc.pojo.Doctor;

public interface DoctorRespository extends CrudRepository<Doctor,Integer>{
	Doctor findById(int id);
	Doctor save(Doctor dr);
	// Used for both adding new Doctor and Modifying new Doctor
	void deleteById(int dr_id);
	List <Doctor> findAll();
	// int getNextAppointmentId();
}
