<%@ page import="Model.DataConnector,Model.UserBase,Model.ProfileMerger" session="false"%>  
<jsp:useBean id="u" class="Model.UserBase"></jsp:useBean> 
<jsp:setProperty property="*" name="u"/>
<%
String RollNumber = (String)request.getSession(false).getAttribute("rollNumber");
UserBase loggedUser = (UserBase)request.getSession(false).getAttribute("userLogged");
ProfileMerger profileMerger = new ProfileMerger();
profileMerger.copyProperties(loggedUser,u);
//u.setRollNumber(loggedUser.getRollNumber());
int status=DataConnector.updateProfile(loggedUser);
response.sendRedirect("/ProfileServe");
%>  