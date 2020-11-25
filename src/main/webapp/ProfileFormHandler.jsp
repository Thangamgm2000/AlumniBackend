    <%@page import="Model.DataConnector" session="false"%%>  
    <jsp:useBean id="u" class="Model.UserBase"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
    <%
    String RollNumber = (String)request.getSession(false).getAttribute("RollNumber");
    u.setRollNumber(RollNumber);
    int status=DataConnector.updateProfile(u);
    response.sendRedirect("Profile.jsp");
    %>  