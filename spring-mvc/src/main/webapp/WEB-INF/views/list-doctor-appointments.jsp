<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Appointments</title>
</head>
<body>
	<div id="root">
		<div id="docform">
			<form:form action="" method="post" modelAttribute="getdoctor">
				<div>
					<label for="doc_id"> Doctor id</label>
					<div>
						<form:input path="doc_id" />
					</div>
				</div>
				<div>
					<label for="doc_name">Doctor Name</label>
					<div>
						<form:input path="doc_name" />
					</div>
				</div>
				<div>
					<label for="dob">Date of Birth</label>
					<div>
						<form:input path="dob" />
					</div>
				</div>
				<div>
					<label for="speciality">Specilaity</label>
					<div>
						<form:input path="speciality" />
					</div>
				</div>
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" />
					</div>
				</div>
				<div>
					<label for="phone_no">Phone Number</label>
					<div>
						<form:input path="phone_no" />
					</div>
				</div>
				<div>
					<label for="fees">Fees</label>
					<div>
						<form:input path="fees" />
					</div>
				</div>
			</form:form>
		</div>
		<div id="applist">
		<table>
			<thead>
				<tr>
					<th>Appointment Id</th>
					<th>Appointment Date</th>
					<th>Doctor Id</th>
					<th>Patient Name</th>
					<th>Fees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="appointments" items="${applist}">
					<tr>
						<td>${appointments.appointment_id}</td>
						<td>${appointments.appointment_date}</td>
						<td>${appointments.doctor_id}</td>
						<td>${appointments.patient_name}</td>
						<td>${appointments.fees_collected}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
</body>
</html>