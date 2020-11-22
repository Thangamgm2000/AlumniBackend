<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<title>About Us</title>
	<style type="text/css">
			.flip-card {
			  background-color: transparent;
			  width: 300px;
			  height: 300px;
			  perspective: 1000px;
			}

			.flip-card-inner {
			  position: relative;
			  width: 100%;
			  height: 100%;
			  text-align: center;
			  transition: transform 0.6s;
			  transform-style: preserve-3d;
			  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
			}

			.flip-card:hover .flip-card-inner {
			  transform: rotateY(180deg);
			}

			.flip-card-front, .flip-card-back {
			  position: absolute;
			  width: 100%;
			  height: 100%;
			  backface-visibility: hidden;
			}

			.flip-card-front {
			  background-color: #bbb;
			  color: black;
			}

			.flip-card-back {
			  background-color: #122a43;
			  color: white;
			  transform: rotateY(180deg);
			}
			body {
	          background-color: #7d0633;
	          padding-bottom: 30px;
	          padding-top: 100px;
	        }
	</style>
</head>
<body>
	<script>
        $(function () {
            $("#nav-placeholder").load("common/navbar.html");
        });
    </script>
	<div id="nav-placeholder"></div>
	<div class="row mx-0 justify-content-center">
		<kbd class="text-content" style="background-color: orange; color: black; height:30px; width: 300px; text-align: center; font-size: 18px; font-weight: bolder">
		Meet the Developers!</kbd>
	</div>
	<div class="row mx-0 justify-content-center my-3">
		<a href="contactus.html" class="text text-primary">
			<button class="btn btn-primary" style="border-radius: 10px;">
				Reach Out to Us
			</button>
		</a>
	</div>
	
	<div class="row mx-0 justify-content-center">
		<div class="flip-card m-2">
			<div class="flip-card-inner">
				<div class="flip-card-front">
					<img src="img/kailash.jpg" alt="Avatar" style="width:300px;height:300px;">
				</div>
				<div class="flip-card-back">
					<h1>R Kailash</h1>
					<p>CB.EN.U4CSE17123</p>
					<p>Search, Search Results</p>
					<p>
						<a href="mailto:kailash.ramesh2k@gmail.com">
							<button class="btn btn-primary btn-lg">
								<span><i class="fa fa-envelope"></i></span>
								Email
							</button>
						</a>
					</p>
          			<p>
          				<a href="tel:123-456-7890">
          					<button class="btn btn-info btn-lg">
          						<span><i class="fa fa-phone"></i></span>
          						Contact
	          				</button>
	          			</a>
	          		</p>
				</div>
			</div>
		</div>

		<div class="flip-card m-2">
			<div class="flip-card-inner">
				<div class="flip-card-front">
					<img src="img/trinadh.jpg" alt="Avatar" style="width:300px;height:300px;">
				</div>
				<div class="flip-card-back">
					<h1>T Sai Trinadh</h1>
					<p>CB.EN.U4CSE17129</p>
					<p>Registration, About the Devs</p>
					<p>
						<a href="mailto:saitrinadh23@gmail.com">
							<button class="btn btn-primary btn-lg">
								<span><i class="fa fa-envelope"></i></span>
								Email
							</button>
						</a>
					</p>
            		<p><a href="tel:123-456-7890">
            			<button class="btn btn-info btn-lg">
            				<span><i class="fa fa-phone"></i></span>
            				Contact
            			</button>
            			</a>
            		</p>
				</div>
			</div>
		</div>
	</div>

	<div class="row mx-0 justify-content-center">
		<div class="flip-card m-2">
			<div class="flip-card-inner">
				<div class="flip-card-front">
					<img src="img/keshavi.jpg" alt="Avatar" style="width:300px;height:300px;">
				</div>
				<div class="flip-card-back">
					<h1>K Keshavi</h1>
					<p>CB.EN.U4CSE17130</p>
					<p>Login, Broadcast</p>
					<p>
						<a href="mailto:keshavikongara29@gmail.com">
							<button class="btn btn-primary btn-lg">
								<span><i class="fa fa-envelope"></i></span>
								Email
							</button>
						</a>
					</p>
            		<p>
            			<a href="tel:123-456-7890">
            				<button class="btn btn-info btn-lg">
            					<span><i class="fa fa-phone"></i></span>
            					Contact
            				</button>
            			</a>
            		</p>
				</div>
			</div>
		</div>

		<div class="flip-card m-2">
			<div class="flip-card-inner">
				<div class="flip-card-front">
					<img src="img/prathiba.jpg" alt="Avatar" style="width:300px;height:300px;">
				</div>
				<div class="flip-card-back">
					<h1>S Prathiba</h1>
					<p>CB.EN.U4CSE17141</p>
					<p>Reports Generation, Upcoming Events</p>
					<p>
						<a href="mailto:prathisesh@gmail.com">
							<button class="btn btn-primary btn-lg">
								<span><i class="fa fa-envelope"></i></span>
								Email
							</button>
						</a>
					</p>
          			<p>
          				<a href="tel:123-456-7890">
          					<button class="btn btn-info btn-lg">
          						<span><i class="fa fa-phone"></i></span>
          						Contact
          					</button>
          				</a>
          			</p>
				</div>
			</div>
		</div>
	</div>

	<div class="row mx-0 justify-content-center">
		<div class="flip-card m-2">
			<div class="flip-card-inner">
				<div class="flip-card-front">
					<img src="img/ramji.jpg" alt="Avatar" style="width:300px;height:300px;">
				</div>
				<div class="flip-card-back">
					<h1>Sreeramji K S</h1>
					<p>CB.EN.U4CSE17155</p>
					<p>Landing, Contact Us</p>
					<p>
						<a href="mailto:jamji1729@gmail.com">
							<button class="btn btn-primary btn-lg">
								<span><i class="fa fa-envelope"></i></span>
								Email
							</button>
						</a>
					</p>
          			<p><a href="tel:123-456-7890">
          				<button class="btn btn-info btn-lg">
          					<span><i class="fa fa-phone"></i></span>
          					Contact
          				</button>
	          			</a>
	          		</p>
				</div>
			</div>
		</div>

		<div class="flip-card m-2">
			<div class="flip-card-inner">
				<div class="flip-card-front">
					<img src="img/thangam.jpg" alt="Avatar" style="width:300px;height:300px;">
				</div>
				<div class="flip-card-back">
					<h2>Thanga Manickam M</h2>
					<p>CB.EN.U4CSE17161</p>
					<p>Profiles page</p>
					<p>
						<a href="mailto:thanga.manickam5@gmail.com">
							<button class="btn btn-primary btn-lg">
								<span><i class="fa fa-envelope"></i></span>
								Email
							</button>
						</a>
					</p>
            		<p>
            			<a href="tel:123-456-7890">
            				<button class="btn btn-info btn-lg">
            					<span><i class="fa fa-phone"></i></span>
            					Contact
            				</button>
            			</a>
            		</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>