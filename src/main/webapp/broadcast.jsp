<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="Model.BroadcastBase,java.util.ArrayList" %>

<%
	session.setAttribute("broadcasts",BroadcastBase.getBroadcasts());
%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<title>Broadcast Page</title>
	<style>
		

		textarea {
			resize: none;
			overflow: auto;
			border-radius: 10px;
			padding: 10px;
			float: left;
			width: 650px;
			height: 90px;
			padding: 10px;
		}

		.butn {
			background-color: DodgerBlue;
			border: none;
			color: white;
			padding: 12px 16px;
			font-size: 16px;
			cursor: pointer;
			border-radius: 15px;
			margin: 10px;
			float: right;
		}
		
		.butn:hover {
			background-color: RoyalBlue;
		}
				
		.chat {
			border: 2px solid #dedede;
			background-color: #f1f1f1;
			border-radius: 10px;
			padding: 20px;
			margin: 20px 0;
			word-wrap: break-word;
		}

		.chat::after {
			content: "";
			clear: both;
			display: table;
		}

		.mytext {
			border-color: #ccc;
			background-color: #ddd;
		}

		.time-r {
			float: right;
			color: #aaa;
		}

		.time-l {
			float: left;
			color: #aaa;
		}
		.conversation {
			overflow: scroll;
			padding: 5px;
			height: 500px;
			margin-bottom: 30px;
			position: relative;
			display: block;
		}

		.mycard {
			border-radius: 20px;
			padding: 20px;
			background-color: #06623b;
		}

		body {
			background-color: #649d66;
      		padding-bottom: 10px;
      		padding-top: 100px;
		}

	</style>
	<script type="text/javascript">
		function sendMessage()
		{
			var rno = document.getElementById("sesRNO").value;
			var txt = document.getElementById("msg").value;
			date = new Date();
			var time = date.getHours()+":"+date.getMinutes()+" "+date.getDate()+"/"+(date.getMonth()+1)+"/"+date.getFullYear();
			
			if (txt !== "")
			{
				var xmlHttp = new XMLHttpRequest();
    			xmlHttp.onreadystatechange = function() { 
					if(xmlHttp.status == 200)	location.href = location;
					else console.log("ERROR!");
    			}
    			xmlHttp.open("GET", "/BroadcastMessage?rollNumber="+rno+"&message="+txt+"&time="+time, true); // true for asynchronous 
    			xmlHttp.send(null);
			}
		}
	</script>
</head>
<body>
	<jsp:include page="navbar.jsp"/>
	<input type="hidden" id="sesRNO" value=${sessionScope.rollNumber} />
	<div class="card mx-auto mycard" style="width: 800px;">
		<div class="conversation" id="conversation">

			<c:forEach items="${broadcasts}" var="b">

				<c:if test="${b.getRollNumber() != rollNumber}">
					<div class="chat">
						<span>
							<i class="fa fa-user-circle fa-2x"></i>
							<span style="padding-left: 5px;">${b.getRollNumber()}</span>
						</span>
						<br/>
						<br/>
						<div>${b.getMessage()}</div>
						<span class="time-r">
							<p>${b.getTime()}</p>
						</span>
						<br/>
					</div>
				</c:if>

				<c:if test="${b.getRollNumber() == rollNumber}">
					<div class="chat mytext" id="mytext1">
						<span style="float: right;">
							<span style="padding-right: 5px;">Me</span>
							<i class="fa fa-user-circle fa-2x"></i>
						</span>
						<br/>
						<br/>
						<div>${b.getMessage()}</div>
						<br/>
						<span class="time-l">
							<p>${b.getTime()}  <i class="fa fa-check"></i></p>
						</span>
						<br/>
					</div>
				</c:if>

			</c:forEach>

		</div>

		<div>
			<textarea placeholder="Remember, be nice!" id="msg"></textarea>
			<div class="buttondiv">
				<button class="butn" value="sendMessage" onclick="sendMessage()">Send <i class="fa fa-send"></i></button>
			</div>
		</div>
	</div>

</body>
</html>