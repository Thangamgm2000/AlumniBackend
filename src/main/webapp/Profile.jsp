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
    <script src="http://malsup.github.com/jquery.form.js"></script>
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
  
	<%--  
	String rollNumber = "CB.EN.P2EIE14258";
  UserBase u=DataConnector.getRecordById(rollNumber);
  List<AchievementsBase> achievements= u.getAchievements();
  List<JobsBase> jobs= u.getJobs();
  int achievementsSize = achievements.size();
  int jobsSize = jobs.size();
  request.setAttribute("achievements",achievements);
  request.setAttribute("jobs",jobs);
	--%>
    <div>
      <button name = "gobackButton" class="btn btn-warning btn-lg" style="margin: 15px;" onclick="window.history.back()">
        Go Back
      </button>
      <br/>
    </div>
    <div class="container bootstrap snippet myclass">
    <div class="row">
      <div class="col-sm-10">
        <h1>${userLogged.getFirstName()} ${userLogged.getLastName()}</h1>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-3">
        <div class="text-center">
          <img src="${userLogged.getProfilePic()}" class="avatar img-circle img-thumbnail" alt="avatar">
          <h6>Update your profile picture</h6>
          <form action="/ImageHandler" method="post" enctype="multipart/form-data" id="imageForm">
          <input type="file" name="imageFile" class="text-center center-block file-upload">
          <span id="upload-error" class="text-success"></span>
          </form>
        </div>
        </hr><br>
        <div class="panel panel-default">
          <div class="panel-heading">Website/ Social media/ Linkedin </div>
          <c:if test='${userLogged.getWebsiteLink()!=null}'>
          <div class="panel-body"><a href="${userLogged.getWebsiteLink()}"> ${userLogged.getFirstName()}'s profile</a></div>
          </c:if>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">Social Media</div>
          <div class="panel-body">
            <c:if test='${userLogged.getFacebook()!=null}'>
            <a href='${userLogged.getFacebook()}' class="fa fa-facebook-f"></a>
            </c:if>
            <c:if test='${userLogged.getTwitter()!=null}'>
            <a href='${userLogged.getTwitter()}' class="fa fa-twitter"></a> 
            </c:if>
            <c:if test='${userLogged.getLinkedin()!=null}'>
            <a href='${userLogged.getLinkedin()}' class="fa fa-linkedin"></a>
            </c:if>
            <c:if test='${userLogged.getInstagram()!=null}'>
            <a href='${userLogged.getInstagram()}' class="fa fa-instagram"></a>
            </c:if>
            <c:if test='${userLogged.getReddit()!=null}'>
             <a href='${userLogged.getReddit()}' class="fa fa-reddit"></a>
             </c:if>
             <c:if test='${userLogged.getSlack()!=null}'>
              <a href='${userLogged.getSlack()}' class="fa fa-slack"></a>
              </c:if>
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
            
            <form class="form" action="ProfileFormHandler.jsp" method="post" id="registrationForm">
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="first_name">
                    <h4>First name</h4>
                  </label>
                  <input type="text" class="form-control" name="firstName" id="first_name" placeholder="first name" value="${userLogged.getFirstName()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="last_name">
                    <h4>Last name</h4>
                  </label>
                  <input type="text" class="form-control" name="lastName" id="last_name" placeholder="last name" value="${userLogged.getLastName()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="email">
                    <h4>Official Email address</h4>
                  </label>
                  <input type="email" class="form-control" name="officialEmail" id="off_email" placeholder="xyz@yourorg.com" value="${userLogged.getOfficialEmail()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="email">
                    <h4>Personal Email address</h4>
                  </label>
                  <input type="email" class="form-control" name="personalEmail" id="email" placeholder="your email id" value="${userLogged.getPersonalEmail()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="mobile">
                    <h4>Mobile number</h4>
                  </label>
                  <input type="text" class="form-control" name="mobileNumber" id="mobile" placeholder="enter your mobile number with countrycode" value="${userLogged.getMobileNumber()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="email">
                    <h4>City</h4>
                  </label>
                  <input type="text" class="form-control" name = "city" id="city" placeholder="Current city" value="${userLogged.getCity()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-12">
                  <label for="bio">
                    <h4>Bio</h4>
                  </label>
                  <textarea class="form-control" rows="6" name="shortBio" id="shortBio" >${userLogged.getShortBio()}</textarea>
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
            
            <form class="form" action="ProfileFormHandler.jsp" method="post" id="academicForm">
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="course">
                    <h4>Course enrolled</h4>
                  </label>
                  <input type="text" class="form-control" name="courseEnrolled" id="course" placeholder="eg. BTech" value="${userLogged.getCourseEnrolled()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="Batch">
                    <h4>Academic Batch</h4>
                  </label>
                  <input type="text" class="form-control" name="academicBatch" id="batch" placeholder="starting_year - ending_year" value="${userLogged.getAcademicBatch()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="Department">
                    <h4>Department</h4>
                  </label>
                  <input type="text" class="form-control" name="dept" id="dept_name" placeholder="Department name" value="${userLogged.getDept()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="roll_number">
                    <h4>Rollnumber</h4>
                  </label>
                  <input type="text" class="form-control" name="rollNumber" id="roll_no" placeholder="eg. CB.EN.U4CSE16253" value="${userLogged.getRollNumber()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="advisor">
                    <h4>Academic Advisor</h4>
                  </label>
                  <input type="text" class="form-control" name="academicAdvisor" id="advisor" placeholder="Name of advisor" value="${userLogged.getAcademicAdvisor()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="cgpa">
                    <h4>CGPA</h4>
                  </label>
                  <input type="text" class="form-control" id="cgpa" name="cgpa" placeholder="CGPA in scale of 10" value="${userLogged.getCgpa()}">
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
            <button type="button" id="add-achievement" class="btn btn-info btn-lg" data-toggle="modal" data-target="#achievementModal" >Add an Academic achivement</button>
            <font color="black">
            <c:forEach items="${userLogged.achievements}" var="ach">
            <div class="panel panel-info pannel_style" data-href='#achievementModal' id='achievement-pannel'>
              <div class="panel-heading">${ach.getName()}</div>
              <div class="panel-body">${ach.getDateOfAccomplishment()}</div>
            </div>
            </c:forEach>
            
            </font>
            <h2>Sports and Culturals achievements</h2>
            <button type="button" id="add-achievement" class="btn btn-info btn-lg" data-toggle="modal" data-target="#achievementModal">Add a Sports/Cultural achivement</button>
            <font color="black">
            
            </font>
            <h2>Work achievements</h2>
            <button type="button" id="add-achievement" class="btn btn-info btn-lg" data-toggle="modal" data-target="#achievementModal">Add a Work achivement</button>
            <font color="black">
            
            </font>
            <h2>Other achievements</h2>
            
              <font color="black">
              
            <button type="button" id="add-achievement" class="btn btn-info btn-lg" data-toggle="modal" data-target="#achievementModal">Add other achivements</button>
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
                          <button class="btn btn-lg btn-success pull-right" type="submit" name="save-button"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                          <button class="btn btn-lg btn-danger" type="button" id="cancel-button" name="cancel-button"><i class="glyphicon glyphicon-remove"></i> Cancel</button>
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
            <script>
            $('#add-career').on('click',function(){
            $('input[name="roleName"]').val('');
            $('input[name="jobId"]').val('new');
            $('input[name="roleType"]').val('');
            $('input[name="organization"]').val('');
            $('input[name="startMonth"]').val('');
            $('input[name="endMonth"]').val('');
            $('textarea[name="description"]').val('');
            });
            </script>
            <c:forEach items="${userLogged.jobs}" var="job">
            <div class="panel panel-info pannel_style" data-href='#careerModal' id='careerPannel${job.getJobId()}'>
              <div class="panel-heading">${job.getRoleName()}</div>
              <div class="panel-body">
                <a href='https://about.google/?utm_source=google-IN&utm_medium=referral&utm_campaign=hp-footer&fg=1'>${job.getOrganization()}</a><br/>
                ${job.getStartMonth()} -  ${job.getEndMonth()}
              </div>
            </div>
            <script>
            $('#careerPannel${job.getJobId()}').on('click',function(){
            $('input[name="roleName"]').val('${job.getRoleName()}');
            $('input[name="jobId"]').val('${job.getJobId()}');
            $('input[name="roleType"]').val('${job.getRoleType()}');
            $('input[name="organization"]').val('${job.getOrganization()}');
            $('input[name="startMonth"]').val('${job.getStartMonth()}');
            $('input[name="endMonth"]').val('${job.getEndMonth()}');
            $('textarea[name="description"]').val('${job.getDescription()}');
            });
            </script>
            </c:forEach>
            
            
            <div class="modal fade" id="careerModal" role="dialog">
              <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Work details</h4>
                  </div>
                  <form class="form" action="JobsFormHandler.jsp" method="post" id="registrationForm">
                  <input type="hidden" name="jobId" value='new'/>
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="roleName">
                          <h4>Name of the Job</h4>
                        </label>
                        <input type="text" class="form-control" name="roleName" id="job_name" placeholder="eg. Front end developer">
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
                        <label for="startMonth">
                          <h4>Start Month of work</h4>
                        </label>
                        <input type="text" class="form-control" name="startMonth" id="work_date" placeholder="eg. March 2017">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="endMonth">
                          <h4>End Month of Work</h4>
                        </label>
                        <input type="text" class="form-control" name="endMonth" id="work_date" placeholder="eg. March 2017 or present">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="roleType">
                          <h4>Type of work</h4>
                        </label>
                        <input type="text" class="form-control" name="roleType" id="work_type" placeholder="Internship/ Full time/ FYC" >
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-12">
                        <label for="description">
                          <h4>Description</h4>
                        </label>
                        <textarea class="form-control text_area_style" rows="4" name="description" id="work_desc"></textarea>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <div class="form-group">
                        <div class="col-xs-12">
                          <br>
                          <button type="button" class="btn btn-lg btn-primary" id="edit-button" name="edit-button"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
                          <button class="btn btn-lg btn-success pull-right" type="submit" name="save-button"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                          <button class="btn btn-lg btn-danger" type="button" id="cancel-button" name="cancel-button"><i class="glyphicon glyphicon-remove"></i> Cancel</button>
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
            
            <form class="form" action="ProfileFormHandler.jsp" method="post" id="registrationForm">
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="linkedin">
                    <h4>Linkedin</h4>
                  </label>
                  <input type="text" class="form-control" name="linkedin" id="linkedin" placeholder="linkedin.com/abc" value="${userLogged.getLinkedin()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="twitter">
                    <h4>Twitter</h4>
                  </label>
                  <input type="text" class="form-control" name="twitter" id="twitter" placeholder="twitter.com/user" value="${userLogged.getTwitter()}" >
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="facebook">
                    <h4>Facebook</h4>
                  </label>
                  <input type="text" class="form-control" name="facebook" id="facebook" placeholder="facebook username" value="${userLogged.getFacebook()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="instagram">
                    <h4>Instagram</h4>
                  </label>
                  <input type="text" class="form-control" name="instagram" id="instagram" placeholder="Instagram handle" value="${userLogged.getInstagram()}" >
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="reddit">
                    <h4>Reddit</h4>
                  </label>
                  <input type="text" class="form-control" name="reddit" id="reddit" placeholder="reddit profile" value="${userLogged.getReddit()}">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="slack">
                    <h4>Slack</h4>
                  </label>
                  <input type="text" class="form-control" name="slack" id="slack" placeholder="Slack username" value="${userLogged.getSlack()}">
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
    <c:if test='${writeAccess!="true"}'>
    <script type="text/javascript">
        $('button').hide();
        $('button[name ="gobackButton"]').show();
        $("#imageForm").hide();
    </script>
    </c:if>
  </body>
</html>
