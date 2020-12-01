<%@ page import="Model.DataConnector,Model.UserBase,Model.AchievementsBase" session="false"%>
<jsp:useBean id="ach" class="Model.AchievementsBase"></jsp:useBean> 
<jsp:setProperty property="*" name="ach"/>
<%
String RollNumber = (String)request.getSession(false).getAttribute("rollNumber");
int status=DataConnector.updateAchievements(ach,RollNumber);
response.sendRedirect("/ProfileServe");
%>