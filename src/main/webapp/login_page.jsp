<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<style type="text/css">
		body {
			background-color: #58949a;
			padding-top: 100px;
	</style>

</head>
<body>
	<div id="nav-placeholder"></div>
	<div class="card mx-auto text-center" style="width: 600px; border-radius: 20px; background-color: #122a43">
		<div class="card-body">
			<img src="img/login_banner.jpg" style="width: 560px; border-radius: 10px;">
			<div class="form-group">
				<p class="content-holder card-text mt-4 d-flex justify-content-center">
					<div class="row mx-5">
						<div class="col">
							<label for="username" style="color: white">Username</label>
						</div>
						<div class="col">
							<input class="form-control" type="text" id="username" style="width: 320px;"/>
						</div>
					</div>
					<div class="row mx-5 mt-3">
						<div class="col">
							<label for="password" style="color: white">Password</label>
						</div>
						<div class="col">
							<input class="form-control" type="password" id="password" style="width: 320px;"/>
						</div>
					</div>
				</p>
				<p>
					<button class="btn btn-success mx-5 mt-3" onclick="login()" value="Login" style="float: right;border-radius: 20px; width: 100px;">
						Login
					</button>
				</p>
				<br/>
				<p class="mt-5 mx-4" style="color: white">
					Not a user? 
					<a class="text text-primary" style="cursor: pointer;" href="register_page.jsp">
						Register here
					</a>
				</p>
			</div>
		</div>
	</div>
	<script>
        $(function () {
            $("#nav-placeholder").load("common/navbar.html");
        });
    </script>
    <script type="text/javascript">
    	 function login()
		  {
		  	var uname = document.getElementById("username").value;
		  	var pwd = document.getElementById("password").value;
		    if(uname == '')
		      alert("Please enter user name");
		    else if(pwd == '')
		      alert("Please enter your password");
		    else if(pwd.length < 6)
		      alert("Password length is minimum 6 characters");
		  	else 
		  		location.href = "PerformLogin";
		  }   
    </script>
</body>
</html>