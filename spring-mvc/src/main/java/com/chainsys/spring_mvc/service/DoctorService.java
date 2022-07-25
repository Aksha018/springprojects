package com.chainsys.spring_mvc.service;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.spring_mvc.dto.DoctorAppointmentDTO;
import com.chainsys.spring_mvc.pojo.Appointments;
import com.chainsys.spring_mvc.pojo.Doctor;
import com.chainsys.spring_mvc.repository.AppointmentRepository;
import com.chainsys.spring_mvc.repository.DoctorRespository;

@Service
public class DoctorService {
	
	@Autowired
	private DoctorRespository repo;
	@Autowired
	private AppointmentRepository appRepo;

	private Doctor save;
	public List<Doctor> getdoctors() {
		List<Doctor> doc = repo.findAll();
		return doc;
	}
	public Doctor save(Doctor dr) {
		
		return repo.save(dr);
	}
	public Doctor findById(int id) {
		
		return repo.findById(id);
	}
	public void deleteById(int id) {
	         repo.deleteById(id);
	}
	public Doctor getDoctorById(int id) {
		
		return repo.findById(id);
	}
	public DoctorAppointmentDTO getDoctorAndAppointments(int id) {
		
		Doctor dr = findById(id);
		DoctorAppointmentDTO dto = new DoctorAppointmentDTO();
		dto.setDoctor(dr);
		for(int i=0;i<5;i++) {
		  Appointments app = new Appointments();
		  app.setAppointment_id(id);
		  Date dt = new Date(22,2,25);
		  app.setAppointment_date(dt);
		  app.setDoctor_id(id);
		  app.setPatient_name("tts");
		  app.setFees_collected(i * 500);
		  dto.addAppointment(app);
		}
		return dto;
	}
	public void doctorAndAppointments(DoctorAppointmentDTO dto) {
Doctor dr = dto.getDoctor();
save(dr);
List<Appointments> appList = dto.getAppointments();
int count = appList.size();
for(int i=0;i<count; i++) 
{
appRepo.save(appList.get(i));
}
	}
	
}
