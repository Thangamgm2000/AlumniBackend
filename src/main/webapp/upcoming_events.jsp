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
    <%@ page import= "Model.EventsManager,java.util.ArrayList" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <% 
        ArrayList<String> images = EventsManager.getImages(); 
        System.out.println(images.size());
        ArrayList<String> links = EventsManager.getLink();
        ArrayList<String> summary = EventsManager.getSummary();
        request.setAttribute("images",images);
        request.setAttribute("links",links);
        request.setAttribute("summary",summary);
    %>
    <jsp:include page="navbar.jsp"/>
    
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
        var images = new Array(4);
        var i = 0;
        console.log(images.length);
        <c:forEach items="${images}" var="img">
            images[i] = "${img}";
            i++;
        </c:forEach>

        var links = new Array(4);
        i = 0;
        <c:forEach items="${links}" var="link">
            links[i] = "${link}";
            i++;
        </c:forEach>

        var texts = new Array(4);
        i = 0;
        <c:forEach items="${summary}" var="sum">
            texts[i] = "${sum}";
            i++;
        </c:forEach>
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