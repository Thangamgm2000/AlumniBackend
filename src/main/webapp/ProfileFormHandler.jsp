<%@ page import="Model.DataConnector" session="false"%>  
<jsp:useBean id="u" class="Model.UserBase"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
String RollNumber = (String)request.getSession(false).getAttribute("rollNumber");
UserBase loggedUser = (UserBase)request.getSession(false).getAttribute("userLogged");
u.setRollNumber(loggedUser.getRollNumber());
int status=DataConnector.updateProfile(u);
response.sendRedirect("Profile.jsp");
%>  