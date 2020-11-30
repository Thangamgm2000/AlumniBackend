<%@ page import="Model.DataConnector,Model.UserBase,Model.JobsBase" session="false"%>
<jsp:useBean id="ach" class="Model.JobsBase"></jsp:useBean> 
<jsp:setProperty property="*" name="ach"/>
<%
String RollNumber = (String)request.getSession(false).getAttribute("rollNumber");
int status=DataConnector.updateJobs(ach,RollNumber);
response.sendRedirect("/ProfileServe");
%>