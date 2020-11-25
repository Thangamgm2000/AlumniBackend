    <%@page import="Model.DataConnector"%>  
    <jsp:useBean id="u" class="Model.UserBase"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
    <%  
    int status=DataConnector.updateProfile(u);
    response.sendRedirect("Profile.jsp");
    %>  