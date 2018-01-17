<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css">
<link rel="stylesheet" href="assets/main.css">

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"
	type="text/javascript"></script>

<title>Profile</title>
</head>
<body>
	<div class="container">

		<form:form class="well form-horizontal" action="employee/register" method="post" modelAttribute="employee"
			id="reg_form">
			<fieldset>

				<!-- Form Name -->
				<legend>
					<center>
						<h2>
							<b>Registration Form</b>
						</h2>
					</center>
				</legend>
				<br>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Full Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input name="full_name" placeholder="Full Name"
								class="form-control" type="text" path="full_name" required="required"></form:input>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Sex</label>
					<div class="col-md-4 inputGroupConmtainer">
						<div class="input-group">
							
							<label class="radio-inline"> 
							<form:radiobutton name="sex" path="sex" value="male" checked="checked" />Male
							</label> 
							
							<label class="radio-inline"> 
							<form:radiobutton name="sex" path="sex" value="female"/>Female
							</label>
							
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Age</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-adn"></i></span>
							<form:input name="first_name" placeholder="Age"
								class="form-control" type="number" path="age"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Marital Status</label>
					<div class="col-md-4 inputGroupConmtainer">
						<div class="input-group">
							<label class="radio-inline"> 
							<form:radiobutton name="merital" path="merital_status" value="married"/> Married
							</label>
							 <label class="radio-inline"> 
							 <form:radiobutton name="merital" path="merital_status" value="unmarried"/>Unmarried
							</label>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Annual Income</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-inr"></i></span>
							<form:input name="income" placeholder="Annual Income in rs." class="form-control" 
							type="number" path="annual_income"/>
						</div>
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-4 control-label">Education</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span> 
								<form:select name="education" class="form-control selectpicker" path="education">
								<option value="">Select your Education</option>
								<option>Graduate</option>
								<option>Post Graduate</option>
								<option>Others</option>
							</form:select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">City</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-inr"></i></span>
							<form:input name="city" placeholder="City" class="form-control" type="text" path="city"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">State</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-inr"></i></span>
							<form:input name="state" placeholder="Enter State" class="form-control" type="text" path="state"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label">Pin</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-inr"></i></span>
							<form:input name="pin" placeholder="pin" class="form-control" type="number" path="pin"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Job Type</label>
					<div class="col-md-4 inputGroupConmtainer">
						<div class="input-group">
							<label class="radio-inline"> 
							<form:radiobutton name="job" path="job_type"/> Private
							</label> <label class="radio-inline"> 
							<form:radiobutton name="job" path="job_type"/>Public
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label">Any Ongoing Ailment </label>
					<div class="col-md-4 inputGroupConmtainer">
						<div class="input-group">
							<label class="radio-inline"> 
							<form:radiobutton name="ailment" path="ailment"/> Yes
							</label> 
							<label class="radio-inline"> 
							<form:radiobutton name="sex" path="ailment"/>No
							</label>
						</div>
					</div>
				</div>
			
				<div class="form-group">
					<label class="col-md-4 control-label">Father Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input name="father_name" placeholder="Father name" class="form-control" type="text" path="father_name"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Father Income</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> 
								<form:input name="father_income" placeholder="Father Income" class="form-control"
								type="number" path="father_income"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">E-Mail</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span>
							<form:input name="email" placeholder="E-Mail Address"
								class="form-control" type="email" path="email"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Password</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> 
								<form:input name="password" placeholder="Password" class="form-control" type="password" path="password"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Confirm Password</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							 <input
								name="confirm_password" placeholder="Confirm Password"
								class="form-control" type="password">
						</div>
					</div>
				</div>
				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Mobile No.</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span> 
								<form:input name="mobile" class="form-control" type="text" path="mobile"/>
						</div>
					</div>
				</div>

				<!-- Select Basic -->

				<!-- Success message -->
				<!-- <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>
 -->
				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<br> &nbsp
						&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<button type="submit" class="btn btn-warning">
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp SUBMIT 
							<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						</button>
					</div>
				</div>

			</fieldset>
		</form:form>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	</body>
</html>