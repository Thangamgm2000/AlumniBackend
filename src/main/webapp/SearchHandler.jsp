<%@ page import="Model.SearchBase,Model.PerformSearch,java.util.ArrayList" session="false" %>
<jsp:useBean id="searchObj" class="Model.SearchBase"></jsp:useBean>
<jsp:setProperty property="*" name="searchObj" />

<%
        ArrayList<SearchBase> searchResults = PerformSearch.doSearch(searchObj);
        
%>
<!--
<%@ page import = "java.io.*,java.util.*" %>
<html>
   <head>
      <title>HTTP Header Request Example</title>
   </head>
   <body>
      <center>
         <h2>HTTP Header Request Example</h2>
         <table width = "100%" border = "1" align = "center">
            <tr bgcolor = "#949494">
               <th>Param Name</th>
               <th>Param Value(s)</th>
            </tr>
            <%
               Enumeration paramNames = request.getParameterNames();
               while(paramNames.hasMoreElements()) {
                  String paramName = (String)paramNames.nextElement();
                  out.print("<tr><td>" + paramName + "</td>\n");
                  String paramValue = request.getParameter(paramName);
                  out.println("<td> " + paramValue + "</td></tr>\n");
               }
            %>
         </table>
      </center>
   </body>
</html>
-->