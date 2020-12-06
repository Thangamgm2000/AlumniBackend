<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	session.setAttribute("searchResults",request.getAttribute("searchResults"));
%>


<!DOCTYPE html>
<html>
<head>
	<title>Search Results</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<jsp:include page="navbar.jsp"/>

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

<body>
	<header>
    	<div id="nav-placeholder"> </div>
	</header>
	<div class="card mx-auto mycard" style="width:1200px;">
		<h4 class="card-header" style="border-bottom: 2px solid black">Search Results</h4>
		
		<a href="report_generation.jsp"><button type="button" class="btn btn-primary float-right m-2">Generate report</button></a>

		<div class="card-body">
			<c:forEach items="${searchResults}" var="res">
				<div class="card flex-row flex-wrap">
					<div class="card-header border-0">
						<img src="${res.getProfilePic()}" alt="" style="width: 200px; height: 200px;">
					</div>
					<div class="card-block px-2" style="color: black;">
						<h4 class="card-title mt-3	">${res.getAnyName()}</h4>
						<p class="card-text">
							Roll: ${res.getRollNumber()}<br/>
							Batch: ${res.getAcademicBatch()}<br/>
							Course: ${res.getCourseEnrolled()}<br/>
							Latest Profession: ${res.getLatestJob()}<br/>
						</p>
						<a href="${res.getProfileLink()}" class="btn btn-primary">Go to Profile</a>
					</div>
				</div>
				<br>	
			</c:forEach>
		</div>
	</div>
</body>
</html>
