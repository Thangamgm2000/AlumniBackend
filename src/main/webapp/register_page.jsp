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
				<form>
				<p class="content-holder card-text mt-4 d-flex justify-content-center">
					<div class="row mx-5 mt-5">
						<div class="col">
							<label for="fullname" style="color: white">Full Name</label>
						</div>
						<div class="col">
							<input class="form-control" type="text" id="fullname" style="width: 320px;" required />
						</div>
					</div>
					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="rollnumber" style="color: white">Roll Number</label>
						</div>
						<div class="col">
							<input class="form-control" type="text" id="rollnumber" style="width: 320px;" required/>
						</div>
					</div>
					<div class="row mx-5 mt-2">
						<div class="col">
							<label for="phonenum" style="color: white" minlength="10">Phone</label>
						</div>
						<div class="col">
							<input class="form-control" type="number" id="phonenum"style="width: 320px;" required/>
						</div>
					</div>
					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="campus" style="color: white">Campus</label>
						</div>
						<div class="col">
							<select class="browser-default custom-select" style="width: 320px;" required>
								<option selected disabled hidden>Select Campus</option>
								<option>Amritapuri</option>
								<option>Coimbatore</option>
								<option>Bengaluru</option>
							</select>
						</div>
					</div>
					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="email" style="color: white">Email</label>
						</div>
						<div class="col">
							<input class="form-control" type="text" id="email" style="width: 320px;" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required/>
						</div>
					</div>
					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="username" style="color: white">Username</label>
						</div>
						<div class="col">
							<input class="form-control" type="text" id="username" style="width: 320px;" required/>
						</div>
					</div>
					<div class="row mx-5 mt-4">
						<div class="col">
							<label for="username" style="color: white">Password</label>
						</div>
						<div class="col">
							<input class="form-control" type="text" id="username" style="width: 320px;" required/>
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