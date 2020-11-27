package ServletPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;  
import javax.servlet.http.HttpServletRequest;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletResponse;
import Model.*;
import java.util.ArrayList;

/**
 * Servlet implementation class ProfileServe
 */
@WebServlet("/InitEvents")
public class InitEvents extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitEvents() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ashdoishfosdjfopsdj");
        HttpSession session=request.getSession(false);
		if(session.getAttribute("eventData")==null){  
            ArrayList<EventData> eventData = EventsManager.getData();
            session.setAttribute("eventData",eventData);
        }  
        RequestDispatcher rd = request.getRequestDispatcher("upcoming_events.jsp");
        rd.forward(request, response);
        response.sendRedirect("upcoming_events.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}