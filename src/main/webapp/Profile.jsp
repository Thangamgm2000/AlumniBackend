<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>My Profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    <script src="js/profile_page_script.js"></script>
    <style>
      .modal-footer {
      border-top: 0 none;
      }
      .text_area_style
      {
      width: 80%;
      }
      form .error {
      color: #ff0000;
      }
      .pannel_style
      {
      margin-top: 10px;
      margin-bottom: 10px;
      }
      .clickable-panel a:hover, .clickable-panel a:active
      {
      color: #000;
      text-decoration: none;
      }
      .panel[data-href]{
      cursor: pointer !important;
      }
      .fa {
      font-size: 30px;
      text-align: center;
      text-decoration: none;
      margin-left: 2%;
      }
      .fa:hover {
      opacity: 0.7;
      }
      .fa-twitter {
      background: #55ACEE;
      color: white;
      }
      .fa-instagram {
      color: #c13584;
      }
      .fa-reddit {
      color:#FF4301;
      }
      body {
      background-color: #ea5455;
      padding-bottom: 30px;
      }
      .myclass {
      border-radius: 20px;
      background-color: #2d4059;
      color: white;
      padding: 30px;
    }
    </style>
  </head>
  <body>
  <%@ page import= "Model.DataConnector,Model.UserBase,java.util.List,Model.AchievementsBase,Model.JobsBase" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%  
	String rollNumber = "CB.EN.P2EIE14258";  
  UserBase u=DataConnector.getRecordById(rollNumber);
  List<AchievementsBase> achievements= u.getAchievements();
  List<JobsBase> jobs= u.getJobs();
  int achievementsSize = achievements.size();
  int jobsSize = jobs.size();
  request.setAttribute("achievements",achievements);
  request.setAttribute("jobs",jobs);
	%>
    <div>
      <button class="btn btn-warning btn-lg" style="margin: 15px;" onclick="window.history.back()">
        Go Back
      </button>
      <br/>
    </div>
    <div class="container bootstrap snippet myclass">
    <div class="row">
      <div class="col-sm-10">
        <h1><%=u.getFirstName() + " "+ u.getLastName() %></h1>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-3">
        <div class="text-center">
          <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
          <h6>Update your profile picture</h6>
          <input type="file" class="text-center center-block file-upload">
        </div>
        </hr><br>
        <div class="panel panel-default">
          <div class="panel-heading">Website/ Social media/ Linkedin </div>
          <div class="panel-body"><a href="Aboutus.jsp"> <%=u.getFirstName()%>'s profile</a></div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">Social Media</div>
          <div class="panel-body">
            <a href='#' class="fa fa-facebook-f"></a><a href='#' class="fa fa-twitter"></a> <a href='#' class="fa fa-linkedin"></a> <a href='#' class="fa fa-instagram"></a> <a href='#' class="fa fa-reddit"> <a href='#' class="fa fa-slack"></a>
          </div>
        </div>
      </div>
      <div class="col-sm-9">
        <ul class="nav nav-tabs">
          <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
          <li><a data-toggle="tab" href="#academics">Academics</a></li>
          <li><a data-toggle="tab" href="#achievements">Achievements</a></li>
          <li><a data-toggle="tab" href="#careers">Career</a></li>
          <li><a data-toggle="tab" href="#social_media">Social media</a></li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="home">
            
            <form class="form" action="##" method="post" id="registrationForm">
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="first_name">
                    <h4>First name</h4>
                  </label>
                  <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" value="<%=u.getFirstName()%>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="last_name">
                    <h4>Last name</h4>
                  </label>
                  <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" value="<%=u.getLastName() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="email">
                    <h4>Official Email address</h4>
                  </label>
                  <input type="email" class="form-control" name="off_email" id="off_email" placeholder="xyz@yourorg.com" value="<%=u.getOfficialEmail() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="email">
                    <h4>Personal Email address</h4>
                  </label>
                  <input type="email" class="form-control" name="email" id="email" placeholder="your email id" value="<%=u.getPersonalEmail() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="mobile">
                    <h4>Mobile number</h4>
                  </label>
                  <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter your mobile number with countrycode" value="<%=u.getMobileNumber() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="email">
                    <h4>City</h4>
                  </label>
                  <input type="text" class="form-control" id="city" placeholder="Current city" value="<%=u.getCity() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-12">
                  <label for="bio">
                    <h4>Bio</h4>
                  </label>
                  <textarea class="form-control" rows="6" id="bio" ><%=u.getShortBio() %></textarea>
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-12">
                  <br>
                  <div class="btn-toolbar">
                    <button type="button" class="btn btn-lg btn-primary" id="edit-button" name="edit-button"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
                    <button class="btn btn-lg btn-success" type="submit" id="save-button" name="save-button"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                    <button class="btn btn-lg btn-info" type="reset" id="reset-button" name="reset-button"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                    <button class="btn btn-lg btn-danger" type="button" id="cancel-button" name="cancel-button"><i class="glyphicon glyphicon-remove"></i> Cancel</button>
                  </div>
                </div>
              </div>
            </form>
            <hr>
          </div>
          <!--/tab-pane-->
          <div class="tab-pane" id="academics">
            <h2></h2>
            
            <form class="form" action="##" method="post" id="academicForm">
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="course">
                    <h4>Course enrolled</h4>
                  </label>
                  <input type="text" class="form-control" name="course" id="course" placeholder="eg. BTech" value="<%=u.getCourseEnrolled() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="Batch">
                    <h4>Academic Batch</h4>
                  </label>
                  <input type="text" class="form-control" name="batch" id="batch" placeholder="starting_year - ending_year" value="<%=u.getAcademicBatch() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="Department">
                    <h4>Department</h4>
                  </label>
                  <input type="text" class="form-control" name="dept_name" id="dept_name" placeholder="Department name" value="<%=u.getDept() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="roll_number">
                    <h4>Rollnumber</h4>
                  </label>
                  <input type="text" class="form-control" name="roll_no" id="roll_no" placeholder="eg. CB.EN.U4CSE16253" value="<%=u.getRollNumber() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="advisor">
                    <h4>Academic Advisor</h4>
                  </label>
                  <input type="text" class="form-control" name="advisor" id="advisor" placeholder="Name of advisor" value="<%=u.getAcademicAdvisor() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="cgpa">
                    <h4>CGPA</h4>
                  </label>
                  <input type="text" class="form-control" id="cgpa" name="cgpa" placeholder="CGPA in scale of 10" value="<%=u.getCgpa() %>">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-12">
                  <br>
                  <div class="btn-toolbar">
                    <button type="button" class="btn btn-lg btn-primary" id="edit-button" name="edit-button"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
                    <button class="btn btn-lg btn-success" type="submit" id="save-button" name="save-button"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                    <button class="btn btn-lg btn-info" type="reset" id="reset-button" name="reset-button"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                    <button class="btn btn-lg btn-danger" type="button" id="cancel-button" name="cancel-button"><i class="glyphicon glyphicon-remove"></i> Cancel</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <!--/tab-pane-->
          <div class="tab-pane" id="achievements">
            
            <h2>Academic achievements</h2>
            <button type="button" id="add-achievement" class="btn btn-info btn-lg" data-toggle="modal" data-target="#achievementModal" >Add an achivement</button>
            <font color="black">
            <c:forEach items="${achievements}" var="ach">
            <div class="panel panel-info pannel_style" data-href='#achievementModal' id='achievement-pannel'>
              <div class="panel-heading">${ach.getName()}</div>
              <div class="panel-body">${ach.getDateOfAccomplishment()}</div>
            </div>
            </c:forEach>
            <div class="panel panel-info pannel_style" data-href='#achievementModal' id='achievement-pannel'>
              <div class="panel-heading">Outstanding student award</div>
              <div class="panel-body">July 2018 <%=achievements.size()%></div>
            </div>
            </font>
            <h2>Sports and Culturals achievements</h2>
            <button type="button" id="add-achievement" class="btn btn-info btn-lg" data-toggle="modal" data-target="#achievementModal">Add an achivement</button>
            <font color="black">
            <div class="panel panel-info pannel_style" data-href='#achievementModal' id='achievement-pannel'>
              <div class="panel-heading">Best player of the tournament award - Table Tennis</div>
              <div class="panel-body">August 2016</div>
            </div>
            </font>
            <h2>Work achievements</h2>
            <button type="button" id="add-achievement" class="btn btn-info btn-lg" data-toggle="modal" data-target="#achievementModal">Add an achivement</button>
            <font color="black">
            <div class="panel panel-info pannel_style" data-href='#achievementModal' id='achievement-pannel'>
              <div class="panel-heading">Patent: Generative adversial networks</div>
              <div class="panel-body">January 2020</div>
            </div>
            </font>
            <h2>Other achievements</h2>
            <div class="panel  panel-info pannel_style" data-href='#achievementModal' id='achievement-pannel'>
              <font color="black">
              <div class="panel-heading">Public speaking competition runner up</div>
              <div class="panel-body">December 2016</div>
            </div>
            <button type="button" id="add-achievement" class="btn btn-info btn-lg" data-toggle="modal" data-target="#achievementModal">Add an achivement</button>
            <div class="modal fade" id="achievementModal" role="dialog">
              <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Achievement details</h4>
                  </div>
                  <form class="form" action="##" method="post" id="registrationForm">
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="achievement">
                          <h4>Name of the achievement</h4>
                        </label>
                        <input type="text" class="form-control" name="achievement" id="organization" placeholder="eg. Schlorship">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="organization">
                          <h4>Associated organization</h4>
                        </label>
                        <input type="text" class="form-control" name="organization" id="organization" placeholder="eg. Computer Society of India" >
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="award_date">
                          <h4>Date of accomplishment</h4>
                        </label>
                        <input type="text" class="form-control" name="award_date" id="award_date" placeholder="eg. 01/07/2019">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="achiv_link">
                          <h4>Link if available</h4>
                        </label>
                        <input type="text" class="form-control" name="achiv_link" id="achiv_link" placeholder="eg. coursera.org/accomplishment" >
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-12">
                        <label for="ach_desc">
                          <h4>Description</h4>
                        </label>
                        <textarea class="form-control text_area_style" rows="4" name="ach_desc" id="ach_desc"></textarea>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <div class="form-group">
                        <div class="col-xs-12">
                          <br>
                          <button type="button" class="btn btn-lg btn-primary" id="edit-button" name="edit-button"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
                          <button class="btn btn-lg btn-success pull-right" type="submit" name="edit-button"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                          <!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </font>
          </div>
          <!--/tab-pane-->
          <div class="tab-pane" id="careers">
            
            <h2>Work experience</h2>
            <button type="button" id="add-career" class="btn btn-info btn-lg" data-toggle="modal" data-target="#careerModal">Add a position</button>
            <font color="black">
            <c:forEach items="${jobs}" var="job">
            <div class="panel panel-info pannel_style" data-href='#careerModal' id='achievement-pannel'>
              <div class="panel-heading">${job.getRoleName()}</div>
              <div class="panel-body">
                <a href='https://about.google/?utm_source=google-IN&utm_medium=referral&utm_campaign=hp-footer&fg=1'>${job.getOrganization()}</a><br/>
                ${job.getStartMonth()} -  ${job.getEndMonth()}
              </div>
            </div>
            </c:forEach>
            
            <div class="panel panel-info pannel_style" data-href='#careerModal' id='achievement-pannel'>
              <div class="panel-heading">Research intern</div>
              <div class="panel-body">
                <a href='https://about.twitter.com/'>Twitter</a><br/>
                April 2016 to May 2016
              </div>
            </div>
            <div class="modal fade" id="careerModal" role="dialog">
              <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Work details</h4>
                  </div>
                  <form class="form" action="##" method="post" id="registrationForm">
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="job_name">
                          <h4>Name of the Job</h4>
                        </label>
                        <input type="text" class="form-control" name="job_name" id="job_name" placeholder="eg. Front end developer">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="organization">
                          <h4>organization</h4>
                        </label>
                        <input type="text" class="form-control" name="organization" id="organization" placeholder="eg. Salesforce" >
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="work_date">
                          <h4>Duration of work</h4>
                        </label>
                        <input type="text" class="form-control" name="work_date" id="work_date" placeholder="eg. March 2017 to Present">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="work_type">
                          <h4>Type of work</h4>
                        </label>
                        <input type="text" class="form-control" name="work_type" id="work_type" placeholder="Internship/ Full time/ FYC" >
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-12">
                        <label for="work_desc">
                          <h4>Description</h4>
                        </label>
                        <textarea class="form-control text_area_style" rows="4" name="work_desc" id="work_desc"></textarea>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <div class="form-group">
                        <div class="col-xs-12">
                          <br>
                          <button class="btn btn-lg btn-success pull-right" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                          <!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
              </font>
            </div>
          </div>
          <!--/tab-pane-->
          <div class="tab-pane" id="social_media">
            <h2></h2>
            
            <form class="form" action="##" method="post" id="registrationForm">
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="course">
                    <h4>Linkedin</h4>
                  </label>
                  <input type="text" class="form-control" name="course" id="course" placeholder="linkedin.com/abc">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="Batch">
                    <h4>Twitter</h4>
                  </label>
                  <input type="text" class="form-control" name="batch" id="batch" placeholder="twitter.com/user" >
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="Department">
                    <h4>Facebook</h4>
                  </label>
                  <input type="text" class="form-control" name="dept_name" id="dept_name" placeholder="facebook username">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="roll_number">
                    <h4>Instagram</h4>
                  </label>
                  <input type="text" class="form-control" name="roll_no" id="roll_no" placeholder="Instagram handle" >
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="advisor">
                    <h4>Reddit</h4>
                  </label>
                  <input type="text" class="form-control" name="advisor" id="advisor" placeholder="reddit profile">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="cgpa">
                    <h4>Slack</h4>
                  </label>
                  <input type="text" class="form-control" id="cgpa" placeholder="Slack username" title="enter a location">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-12">
                  <br>
                  <div class="btn-toolbar">
                    <button type="button" class="btn btn-lg btn-primary" id="edit-button" name="edit-button"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
                    <button class="btn btn-lg btn-success" type="submit" id="save-button" name="save-button"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                    <button class="btn btn-lg btn-info" type="reset" id="reset-button" name="reset-button"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                    <button class="btn btn-lg btn-danger" type="button" id="cancel-button" name="cancel-button"><i class="glyphicon glyphicon-remove"></i> Cancel</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <!--/tab-pane-->
        </div>
        <!--/tab-content-->
      </div>
      <!--/col-9-->
    </div>
    <!--/row-->
  </body>
</html>
