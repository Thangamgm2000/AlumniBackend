<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Search Results</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script>
        $(function () {
            $("#nav-placeholder").load("common/navbar.html");
        });
    </script>

	<style type="text/css">
		.mycard {
			border-radius: 20px;
			background-color: #9a1f40;
			color: white;
			margin-bottom: 30px;
		}
		body {
			background-color: #111d5e;
			padding-top: 100px;
			padding-bottom: 30px;
		}
	</style>

</head>
<%@ page import= "java.util.ArrayList" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%
		String[][] data = {
			{"CB.EN.U4EIE17003","Venkata Sai Naveen Chandra Adabala","2017-2021","BTech","Student"},
			{"CB.EN.U4EIE17050","V.Thamarai Selvi","2017-2021","BTech","Student"},
			{"BL.EN.U4EEE17067","Dileep Kumar Reddy Vayalpati","2017-2021","BTech","Student"},
			{"CB.EN.U4CSE17448","Prabakaran A S","2017-2021","BTech","Student"},
			{"CB.EN.U4CSE17425","B Janavi","2017-2021","BTech","Student"}
			};
  		application.setAttribute("data",data);
  %>
<body>
	<header>
    	<div id="nav-placeholder"> </div>
	</header>
	<div class="card mx-auto mycard" style="width:1200px;">
		<h4 class="card-header" style="border-bottom: 2px solid black">Search Results</h4>

		<div class="card-body">
			 <div class="card flex-row flex-wrap">
		        <div class="card-header border-0">
		            <img src="img/profile.jpg" alt="">
		        </div>
		        <div class="card-block px-2" style="color: black;">
		            <h4 class="card-title mt-3	">Venkata Sai Naveen Chandra Adabala</h4>
		            <p class="card-text">
		            	Roll: CB.EN.U4EIE17003<br/>
		            	Batch: 2017-2021<br/>
		            	Course: BTech<br/>
		            	Latest Profession: Student<br/>
		            </p>
		            <a href="#" class="btn btn-primary">Go to Profile</a>
		        </div>
		    </div>
		    <br>
		    <div class="card flex-row flex-wrap">
		        <div class="card-header border-0">
		            <img src="img/profile.jpg" alt="">
		        </div>
		        <div class="card-block px-2" style="color: black;">
		            <h4 class="card-title mt-3	">V.Thamarai Selvi</h4>
		            <p class="card-text">
		            	Roll: CB.EN.U4EIE17050<br/>
		            	Batch: 2017-2021<br/>
		            	Course: BTech<br/>
		            	Latest Profession: Student<br/>
		            </p>
		            <a href="#" class="btn btn-primary">Go to Profile</a>
		        </div>
		    </div>
		    <br>
		    <div class="card flex-row flex-wrap">
		        <div class="card-header border-0">
		            <img src="img/profile.jpg" alt="">
		        </div>
		        <div class="card-block px-2" style="color: black;">
		            <h4 class="card-title mt-3	">Dileep Kumar Reddy Vayalpati</h4>
		            <p class="card-text">
		            	Roll: BL.EN.U4EEE17067<br/>
		            	Batch: 2017-2021<br/>
		            	Course: BTech<br/>
		            	Latest Profession: Student<br/>
		            </p>
		            <a href="#" class="btn btn-primary">Go to Profile</a>
		        </div>
		    </div>
		    <br>
		    <div class="card flex-row flex-wrap">
		        <div class="card-header border-0">
		            <img src="img/profile.jpg" alt="">
		        </div>
		        <div class="card-block px-2" style="color: black;">
		            <h4 class="card-title mt-3	">Prabakaran A S</h4>
		            <p class="card-text">
		            	Roll: CB.EN.U4CSE17448<br/>
		            	Batch: 2017-2021<br/>
		            	Course: BTech<br/>
		            	Latest Profession: Student<br/>
		            </p>
		            <a href="#" class="btn btn-primary">Go to Profile</a>
		        </div>
		    </div>
		    <br>
		    <div class="card flex-row flex-wrap">
		        <div class="card-header border-0">
		            <img src="img/profile.jpg" alt="">
		        </div>
		        <div class="card-block px-2" style="color: black;">
		            <h4 class="card-title mt-3	">B Janavi</h4>
		            <p class="card-text">
		            	Roll: CB.EN.U4CSE17425<br/>
		            	Batch: 2017-2021<br/>
		            	Course: BTech<br/>
		            	Latest Profession: Student<br/>
		            </p>
		            <a href="#" class="btn btn-primary">Go to Profile</a>
		        </div>
		    </div>
		    <br>
		</div>
	</div>
</body>
</html>