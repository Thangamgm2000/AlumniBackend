<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reports Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        div.heading
        {
            width: 25%;
            margin:auto;
            padding-bottom: 30px;
        }
        body
        {
            padding-top: 25px;
            margin-left: auto;
            margin-right: auto;
            width: 80%;
        }

        #down
        {
            float:right;
            display: inline;
            padding-bottom: 10px;
        }
        p
        {
            display:inline;
        }

        body {
          background-color: #58949a;
          padding-bottom: 30px;
          padding-top: 100px;
        }
        .myclass {
          border-radius: 20px;
          background-color: #122a43;
          color: white;
          padding: 30px;
        }

        kbd {
            background-color: gold;
            color: black;
        }

        table tr:nth-child(even){background-color: #222}
        table tr:nth-child(odd){background-color: #444}

        table tr:hover {background-color: #888;}
    </style>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
  <%
            String[][] data = (String[][])application.getAttribute("data");
            request.setAttribute("data",data);
  %>
<body>
    <jsp:include page="navbar.jsp"/>
    
    <div id="nav-placeholder"></div>
    <div class="container bootstrap snippet myclass">
        <div class="heading d-flex justify-content-center">
            <h1 class="display-4">
                Report
            </h1>
        </div>
        <p ><kbd id="num"></kbd></p>
        <div class="dropdown" id="down">
            
            <button id = "toggleButton" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
            Download
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#" onclick="download_pdf()">As PDF</a>
              <a class="dropdown-item" href="#" onclick="download_csv()">As CSV</a>
            </div>
        </div>
        <br/>
        <br/>
        <br/>
        <div id="report">
            <table id="rptTable" class="table table-bordered" style="color: white;">
                <tr style="background-color: #58949a">
                    <th>S.No</th>
                    <th>Roll Number</th>
                    <th>Name</th>
                    <th>Batch</th>
                    <th>Course</th>
                    <th>Latest Profession</th>
                </tr>
            </table>
        </div>
    </div>

    <!-- <div class="buttons">
        <button class="btn btn-outline-primary"  onclick="download_pdf()">Download as PDF</button>
        <button class="btn btn-outline-primary"  onclick="download_csv()">Download as CSV</button>
    </div> -->

    <script type="text/javascript">
        // var data = 
        // [
        // ['CB.EN.U4EIE17003','Venkata Sai Naveen Chandra Adabala','2017-2021','BTech','Student'],
        // ['CB.EN.U4EIE17050','V.Thamarai Selvi','2017-2021','BTech','Student'],
        // ['BL.EN.U4EEE17067','Dileep Kumar Reddy Vayalpati','2017-2021','BTech','Student'],
        // ['CB.EN.U4CSE17448','Prabakaran A S','2017-2021','BTech','Student'],
        // ['CB.EN.U4CSE17425','B Janavi','2017-2021','BTech','Student']
        // ];
        console.log(${fn:length(data)});
        var data = new Array(${fn:length(data)});
        var i = 0;
        var j = 0;
        <c:forEach items="${data}" var="di">
            data[i] = new Array(${fn:length(di)});
            j = 0;
            <c:forEach items="${di}" var="dij">
                data[i][j] = "${dij}";
                j++;
            </c:forEach>
            i++;
        </c:forEach>
        /*

        ['CB.EN.U4ECE17020','Harish Annamalai .P','2021','BTech','Student'],
        ['CB.EN.U4ECE17024','Jeeshnu','2021','BTech','Student'],
        ['BL.EN.U4EIE17054','T U Shilpa sree','2021','BTech','Student'],
        ['AM.EN.U4ECE17072','Tiramareddy Manasa','2021','BTech','Student'],
        ['Cb.en.u4cse17011','Barath','2021','BTech','Student'],
        ['CB.EN.U4ECE17046','Venkat Gopinath','2021','BTech','Student'],
        ['AM.EN.U4CSE17162','Sachin Ramsangu S','2021','BTech','Student'],
        ['CB.EN.U4ECE17201','AISWARYA OTHAYOTH','2021','BTech','Student'],
        ['cb.en.u4cse17004','Adithiya ','2021','BTech','Student'],
        ['CB.EN.U4CSE17355','Sahithya Senthilkumar','2021','BTech','Student']

        */

        document.getElementById("num").innerHTML = data.length+" records fetched";
        
        var table = document.getElementById("rptTable");
        var i;

        for(i=0;i<data.length;i++)
        {
            var row = table.insertRow(i+1);
            var j;
            var cell1 = row.insertCell(0);
            cell1.innerHTML = i+1;
            for(j=1;j<=5;j++)
            {
                var cell = row.insertCell(j);
                cell.innerHTML = data[i][j-1];
            }
        }

        function download_csv() {

            var csv = 'RollNo,Name,Batch,Course,Latest Profession\n';
            data.forEach(function(row) {
                    csv += row.join(',');
                    csv += "\n";
            });
        
            console.log(csv);
            var hiddenElement = document.createElement('a');
            hiddenElement.href = 'data:text/csv;charset=utf-8,' + encodeURI(csv);
            hiddenElement.target = '_blank';
            hiddenElement.download = 'report.csv';
            hiddenElement.click();
        }
        
        function download_pdf() {

            $(".dropdown-toggle").dropdown("toggle");
            window.print();
        }
        
    </script>
</body>
</html>