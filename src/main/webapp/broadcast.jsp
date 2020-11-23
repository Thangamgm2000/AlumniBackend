<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			var txt = document.getElementById("msg").value;
			console.log(txt)
			if (txt !== "")
			{
				var htcontent = document.getElementById("mytext1").innerHTML;
				console.log(htcontent);
				var newEle = document.createElement("div");
				newEle.className = "chat mytext";
				newEle.innerHTML = htcontent;
				console.log(newEle.childNodes);
				newEle.childNodes[5].innerHTML = txt;
				document.getElementById("conversation").appendChild(newEle);
			}
		}
	</script>
</head>
<body>
	<script>
        $(function () {
            $("#nav-placeholder").load("common/navbar.html");
        });
    </script>
    
    <div id="nav-placeholder"></div>
	<div class="card mx-auto mycard" style="width: 800px;">
		<div>

		</div>
		<div class="conversation" id="conversation">
			<div class="chat">
				<span>
					<i class="fa fa-user-circle fa-2x"></i>
					<span style="padding-left: 5px;">Goku</span>
				</span>
				<br/>
				<br/>
				Anybody up for a meet this week? Potentially Saturday
				<span class="time-r">
					<p>10:35</p>
				</span>
			</div>
			<div class="chat">
				<span>
					<i class="fa fa-user-circle fa-2x"></i>
					<span style="padding-left: 5px;">Krillin</span>
				</span>
				<br/>
				<br/>
				I'll be there yumm!
				<span class="time-r">
					<p>10:37</p>
				</span>
			</div>
			<div class="chat mytext" id="mytext1">
				<span style="float: right;">
					<span style="padding-right: 5px;">Me</span>
					<i class="fa fa-user-circle fa-2x"></i>
				</span>
				<br/>
				<div id='message'>Hi there</div>
				<br/>
				<span class="time-l">
					<p>11:19  <i class="fa fa-check"></i></p>
				</span>
			</div>
			<div>
			</div>
		</div>
		<div id="message">
			<textarea placeholder="Remember, be nice!" id="msg"></textarea>
			<div class="buttondiv">
				<button class="butn" value="sendMessage" onclick="sendMessage()">Send <i class="fa fa-send"></i></button>
			</div>
		</div>
	</div>
</body>
</html>