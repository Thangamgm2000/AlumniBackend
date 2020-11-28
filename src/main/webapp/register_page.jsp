<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<title>Register</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<jsp:include page="navbar.jsp"/>
	<style type="text/css">
		body {
			background-color: #7ea04d;
			padding-top: 100px;
			padding-bottom: 30px;
		}
	</style>

</head>
<body>
	<div id="nav-placeholder"></div>
	<div class="card mx-auto text-center mucard" style="width: 600px; border-radius: 20px; background-color: #335d2d;">
		<div class="card-body">
			<img src="img/register_banner.jpg" style="width: 560px; border-radius: 10px;">
			<div class="form-group">
				<form action="/PerformRegister">
				<p class="content-holder card-text mt-4 d-flex justify-content-center">
					
					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="FullName" style="color: white">Full Name</label>
						</div>
						<div class="col">
							<input class="form-control" name="FullName" type="text" id="FullName" style="width: 320px;" required />
						</div>
					</div>
					<br/>

					<div class="row mx-5 mt-3">
						<div class="col">
							<label for="OfficialEmail" style="color: white">Official Email</label>
						</div>
						<div class="col">
							<input class="form-control" name="OfficialEmail" type="text" id="OfficialEmail" style="width: 320px;" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required/>
						</div>
					</div>
					
					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="MobileNumber" style="color: white" minlength="10">Mobile Number</label>
						</div>
						<div class="col">
							<input class="form-control" name="MobileNumber" type="number" id="MobileNumber"style="width: 320px;" required/>
						</div>
					</div>

					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="CourseEnrolled" style="color: white">Course Enrolled</label>
						</div>
						<div class="col">
							<select name="CourseEnrolled" class="browser-default custom-select" style="width: 320px;" required>
								<option selected disabled hidden>Select Course</option>
								<option value="B.Tech">B.Tech</option>
								<option value="M.Tech">M.Tech</option>
							</select>
						</div>
					</div>

					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="AcademicBatch" style="color: white">Academic Batch</label>
						</div>
						<div class="col">
							<input class="form-control" name="AcademicBatch" type="text" id="AcademicBatch" style="width: 320px;" required/>
						</div>
					</div>

					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="Department" style="color: white">Dept.</label>
						</div>
						<div class="col">
							<input class="form-control" name="Department" type="text" id="Department" style="width: 320px;" required/>
						</div>
					</div>
					<br/>
					
					<div class="row mx-5 mt-3">
						<div class="col">
							<label for="RollNumber" style="color: white">Roll Number</label>
						</div>
						<div class="col">
							<input class="form-control" name="RollNumber" type="text" id="RollNumber" style="width: 320px;" required/>
						</div>
					</div>

					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="password" style="color: white">Password</label>
						</div>
						<div class="col">
							<input class="form-control" type="password" id="password" name="password" style="width: 320px;" required/>
						</div>
					</div>
					
				</p>
				<p>
					<button class="btn btn-primary mx-5 mt-3" value="Login" style="float: right;border-radius: 20px; width: 100px;" type="submit">Register</button>
				</p>
			</form>
			</div>
		</div>
	</div>
</body>
</html>