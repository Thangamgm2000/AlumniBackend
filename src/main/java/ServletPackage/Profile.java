package ServletPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;  
import javax.servlet.http.HttpServletRequest;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletResponse;
import Model.UserBase;
import Model.DataConnector;

@WebServlet("/Profile/*")
public class Profile extends HttpServlet{
    private static final long serialVersionUID = 1L;
    public Profile()
    {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Rollnumber = request.getPathInfo().substring(1);
        HttpSession session=request.getSession(false);
        UserBase u=DataConnector.getRecordById(Rollnumber);
        session.setAttribute("userLogged", u);
        session.setAttribute("writeAccess","false");
        response.sendRedirect("../Profile.jsp");
        
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
    
}
