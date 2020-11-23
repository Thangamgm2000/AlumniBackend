<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>Alumni Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="css/carousel.css" rel="stylesheet">
    <link href="common/allfiles.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src='js/carousel.js'></script>

    <style>
    	
    	body {
    		background-color: #3b2e5a;
    		padding-bottom: 30px;
    	}

    	#overlay {
		  width: 100%;
		  height: 100%;
		  background-color: rgba(0,0,0,0.7);
		  z-index: 2;
		  cursor: pointer;
		  padding: 20px;
		}
    </style>
</head>

<body>
    <script>
        $(function () {
            $("#nav-placeholder").load("common/navbar.html");
        });
        console.log("Loaded!")
    </script>
    
    <div id="nav-placeholder"></div>
    
    <section style="width:90%;height:70%;display: block;margin-left: auto;margin-right: auto;">
        <div class="bd-example">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
              </ol>
              <div class="carousel-inner">
                
                
                <div class="carousel-item">
                    <a href="https://www.amrita.edu/event/alumni-reunion-2019-amrita-school-business-coimbatore"></a>
                  <img src="img/alumni3.jpg" class="d-block w-100" alt="...">
                  
                  <div class="carousel-caption d-none d-md-block">
                  	<div id="overlay">
	                    <h5>Alumni Reunion 2019 - Amrita School of Business, Coimbatore</h5>
	                    <p>School of Business (ASB), Amrita Vishwa Vidyapeetham, celebrated the Alumni Reunion 2019 on 9th and 10th of February at Coimbatore campus with a host of social, cultural and sporting activities.</p>
                    </div>
                  </div>

                </a>
                </div>
                
                
                <div class="carousel-item active">
                    <a href="https://www.amrita.edu/school/medicine/alumni"></a>
                  <img src="img/alumni2.jpg" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block">
                  	<div id="overlay">
	                    <h5>School of Medicine - Alumni</h5>
	                    <p>Their character, personality, intellect, achievement, success and recognition add great value to the positioning of the alma mater as a prestigious educational institution</p>
	                </div>
                  </div>
                </a>
                </div>
                
                
                <div class="carousel-item">
                    <a href="https://www.amrita.edu/amritians"></a>
                  <img src="img/alumni1.jpg" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block">
                  	<div id="overlay">
	                    <h5>Amritians - Alumni of Amrita Vishwa Vidyapeetham</h5>
	                    <p>The stronger the network of alumni, the greater is the impact.</p>
	                </div>
                  </div>
                </a>
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
    </section>
    
    <div class="container">
        <div class="row pt-1 pb-1">
            <div class="col-lg-12" style="color: white;">
                <h4 class="text-center line-1 anim-typewriter ach">Achievements and Events</h4>
            </div>
        </div>
        <br/>
        <div>
	        <div>

	            <a class="firstButton btn btn-danger" href="upcoming_events.jsp" role="button">Upcoming Alumni Events</a>
	            <div class="card firstImage mt-3" >
	                <div class="card-body">
	                    <a id = "link1" href = "https://www.amrita.edu/event/fish-philosophy-prof-methil-krish">
	                    	<p id = "text1" class="card-text">
	                    		Webinar on The Fish Philosophy by Prof. Methil Krish- Sep 18
	                    	</p>
	                    </a>
	                </div>
	            </div>
	        </div>
	        <div class="secondRow">
	            <div class="card firstImage mt-2">
	                <div class="card-body">
	                    <a  id = "link2" href="https://www.amrita.edu/event/big-talk-scientific-temper-spiritual-understanding-education-beyond-boundaries-mrs-sindhu">
	                    	<p id = "text2" class="card-text">
	                    		Scientific Temper & A Spiritual Understanding - by Mrs. Sindhu Pillai - Sep 19
	                    	</p>
	                    </a>
	                </div>
	            </div>
	            <div class="card firstImage mt-2" >
	                <div class="card-body">
	                    <a   id = "link3" href="https://www.amrita.edu/event/article-writing-competition-2020-biological-invasioninvasive-species-your-locality">
	                    	<p id = "text3" class="card-text">
	                    		You are the Light - Felicitation Ceremony - National Teachers Awardee 2020 - Sep 20
	                    	</p>
	                    </a>
	                </div>
	            </div>
	            <div class="card firstImage mt-2" >
	                <div class="card-body">
	                    <a  id = "link4" href="https://www.amrita.edu/event/article-writing-competition-2020-biological-invasioninvasive-species-your-locality">
	                    	<p id = "text4" class="card-text">
	                    		Article Writing Competition 2020 on Biological Invasion/Invasive Species in Your Locality - Sep 20
	                    	</p>
	                    </a>
	                </div>
	            </div>
	        </div>
    	</div>
    </div>
    
</body>
</html>