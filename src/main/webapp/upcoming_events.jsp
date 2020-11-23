<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Events Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        .firstButton
        {
            display: inline-block;
            width: 60%;
            padding-top: 100px;
            padding-bottom: 100px;
            font-size: 30px;
            height: 320px;
            margin-right: 5px;
        }
        .firstImage
        {
            display: inline-block;
            vertical-align: middle;
            width : 30%;
        }
        .firstImage:hover
        {
            transform: scale(1.05);
        }
        .firstRow
        {
            width : 90%;
            margin: auto;
        }
        .secondRow
        {
            padding-top: 10px;
            width : 90%;
            margin: auto;
        }
        .end
        {
            padding-top:10px;
            width: 20%;
            margin: auto;
            padding-bottom: 10px;
        }
        .outer
        {
            padding-top: 10px;
            width: 70%;
            margin:auto;
        }
        a:link
        {
            text-decoration: none;
        }
        a
        {
            color: black;
        }

        body {
          background-color: #6886c5;
          padding-top: 100px;
          padding-bottom: 30px;
        }
        .myclass {
          border-radius: 20px;
          background-color: #dc3545;
          color: white;
          padding: 30px;
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
    <div class="outer">
        <div class="firstRow">
            <a class="firstButton btn btn-danger" href="#" role="button">Upcoming Alumni Events</a>
            <div class="card firstImage" >
                <img id = "img1" class="card-img-top" src="" alt="Card image cap">
                <div class="card-body">
                    <a id = "link1" href = ""><p id = "text1" class="card-text"></p> </a>
                </div>
            </div>
        </div>
        <div class="secondRow">
            <div class="card firstImage">
                <img id = "img2" class="card-img-top" src="" alt="Card image cap">
                <div class="card-body">
                    <a  id = "link2" href=""><p id = "text2" class="card-text"></p></a>
                </div>
            </div>
            <div class="card firstImage" >
                <img id = "img3" class="card-img-top" src="" alt="Card image cap">
                <div class="card-body">
                    <a   id = "link3" href=""><p id = "text3" class="card-text"></p></a>
                </div>
            </div>
            <div class="card firstImage" >
                <img id = "img4" class="card-img-top" src="" alt="Card image cap">
                <div class="card-body">
                    <a  id = "link4" href=""><p id = "text4" class="card-text"></p></a>
                </div>
            </div>
        </div>
        <div class="end">
            <a href="https://www.amrita.edu/tags/student-activities"><button  class="btn btn-danger" role="button" > Show All</button> </a>
        </div>
    </div>
    <script>
        var images = [
            "img/update-1.jpg",
            "img/update-2.jpg",
            "img/update-3.jpg",
            "img/update-4.jpg"
        ];

        var links = [
            "https://www.amrita.edu/event/fish-philosophy-prof-methil-krish", 
            "https://www.amrita.edu/event/big-talk-scientific-temper-spiritual-understanding-education-beyond-boundaries-mrs-sindhu",
            "https://www.amrita.edu/event/article-writing-competition-2020-biological-invasioninvasive-species-your-locality",
            "https://www.amrita.edu/event/article-writing-competition-2020-biological-invasioninvasive-species-your-locality"
        ];

        var texts = [
            "Webinar on The Fish Philosophy by Prof. Methil Krish- Sep 18",
            "Scientific Temper & A Spiritual Understanding - by Mrs. Sindhu Pillai - Sep 19",
            "You are the Light - Felicitation Ceremony - National Teachers Awardee 2020 - Sep 20",
            "Article Writing Competition 2020 on Biological Invasion/Invasive Species in Your Locality - Sep 20"
        ];

        for(var i=0;i<4;i++)
        {
            document.getElementById("img"+(i+1)).src = images[i];
            console.log(images[i]);
            document.getElementById("link"+(i+1)).href = links[i];
            document.getElementById("text"+(i+1)).innerHTML = texts[i];
        }
    </script>
</body>
</html>