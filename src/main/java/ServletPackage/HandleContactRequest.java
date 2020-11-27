package ServletPackage;

import Model.ContactBase;
import Model.ContactConnector;
import Model.DataConnector;
import Model.SimpleEmailServiceAPI;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PerformLogin
 */
@WebServlet("/HandleContactRequest")
public class HandleContactRequest extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleContactRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ContactBase u = new ContactBase();
        u.setName((String) request.getParameter("name"));
        u.setEmail((String) request.getParameter("email"));
        u.setPhone((String) request.getParameter("phone"));
        u.setMessage((String) request.getParameter("message"));
        ContactConnector cc = new ContactConnector();
        if(cc.updateContact(u) == 1){
            String status = SimpleEmailServiceAPI.sendMessage(u.getEmail(), u.getName(), u.getMessage());
            response.sendRedirect("contactsuccess.jsp");
        }
        else {
            response.sendRedirect("error.jsp");
        }
    }

}
