<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
	<title>Search Page</title>
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
			background-color: #393e46;
			color: white;
		}
		body {
			background-color: #ff9234;
			padding-top: 100px;
		}
	</style>
</head>
<body>
	<div id="nav-placeholder"></div>
	<div class="card mx-auto mycard" style="width:800px;">
		<h4 class="card-header" style="border-bottom: 2px solid black">Search</h4>
		<div class="card-body">
			<p class="card-text">
				Add additional search criteria with the <i class="fa fa-plus"></i> icon
				<div id="barcontainer">
					<div class="row mt-3" id="bar1">
						<div class="col-3">
							<select class="browser-default custom-select" onchange="onSelection(this)" style="border-radius: 10px;">
								<option selected disabled hidden>Category</option>
								<option value="roll">Roll Number</option>
								<option value="name">Name</option>
								<option value="batch">Batch</option>
								<option value="course">Course</option>
								<option value="company">Company</option>
							</select>
						</div>
						<div class="col-8">
							<input class="form-control" placeholder="Choose a category" style="border-radius: 10px;"/>
						</div>
						<div class="col-1" id="add-button">
							<button class="btn btn-success" onclick="addBar()" style="border-radius: 20px;">
								<i class="fa fa-plus"></i>
							</button>
						</div>
					</div>
				</div>
			</p>
			<div class="d-flex justify-content-center mt-5" id="searchButton">
				<button class="btn btn-primary" onclick="location.href='search_results.jsp'" style="float: right;">Search</button>
			</div>
		</div>
	</div>
	<script type="text/javascript" src='search_bar.js'></script>
</body>
</html>