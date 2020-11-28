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
/**
 * Servlet implementation class ProfileServe
 */
@WebServlet("/ProfileServe")
public class ProfileServe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		if(session!=null && session.getAttribute("rollNumber")!=null){  
			String rollNumber=(String)session.getAttribute("rollNumber");
			UserBase u=DataConnector.getRecordById(rollNumber);
			session.setAttribute("userLogged",u);
			RequestDispatcher rd = request.getRequestDispatcher("Profile.jsp");
        	rd.forward(request, response);
            }  
            else{
                response.sendRedirect("login_page.jsp");  
            }  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}