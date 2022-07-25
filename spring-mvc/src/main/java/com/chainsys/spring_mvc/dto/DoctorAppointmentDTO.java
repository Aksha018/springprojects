package com.chainsys.spring_mvc.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.spring_mvc.pojo.Appointments;
import com.chainsys.spring_mvc.pojo.Doctor;

public class DoctorAppointmentDTO {

	
	private Doctor doctor;
	private List<Appointments> appointmentList = new ArrayList<Appointments>();
	
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	
	public void addAppointment(Appointments addApp) {
		appointmentList.add(addApp);
	}
	public List<Appointments> getAppointments() {
		 return appointmentList;
	}
}
