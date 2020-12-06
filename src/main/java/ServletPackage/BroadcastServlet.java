package ServletPackage;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.BroadcastBase;

/**
 * Servlet implementation class ProfileServe
 */
@WebServlet("/BroadcastMessage")
public class BroadcastServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BroadcastServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String rollNumber = request.getParameter("rollNumber");
        String message = request.getParameter("message");
        String time = request.getParameter("time");
        BroadcastBase bc = new BroadcastBase();
        //System.out.println("[Received] : " + rollNumber + " " + message + " " + time);
        bc.setRollNumber(rollNumber);
        bc.setMessage(message);
        bc.setTime(time);
        
        try {
            BroadcastBase.sendBroadcast(bc);
            response.setStatus(HttpServletResponse.SC_OK);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                doGet(request, response);
	}

}