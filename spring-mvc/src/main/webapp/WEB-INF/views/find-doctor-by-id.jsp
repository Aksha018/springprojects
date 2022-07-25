<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Doctor By Id</title>
</head>
<body>
<div id="root">

		<div id="form">
			<form:form action="" method="post" modelAttribute="getDoctor">

				<div>
					<label for="doc_id">Doctor Id</label>
					<div>
						<form:input path="doc_id" />
					</div>
					<div>
						<label for="doc_name">Doctor Name</label>
						<div>
							<form:input path="doc_name" readonly=true />
						</div>
					</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" readonly=true />
						</div>
					</div>
					<div>
						<label for="speciality">Speacilaity</label>
						<div>
							<form:input path="email" readonly=true />
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
					<label for="fees">Standard Fees</label>
					<div>
						<form:input path="fees" />
					</div>
				</div>
				<div>
					<div>
						<form:button>Add New</form:button>
					</div>
				</div>
			</form:form>

					


		</div>
	</div>
</body>
</html>