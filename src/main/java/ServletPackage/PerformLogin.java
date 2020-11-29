package ServletPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;  
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.math.BigInteger; 
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 

/**
 * Servlet implementation class PerformLogin
 */
@WebServlet("/PerformLogin")
public class PerformLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static Connection connect()
	{
		Connection connection=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver"); 
			connection = DriverManager.getConnection("jdbc:mysql://ncp-project.c9pmlhgdvlrz.us-east-2.rds.amazonaws.com/AlumniPortal",
							"alumni",
							"fromarea51"
							);
		}
		catch (Exception e)
		{
			System.out.println("Error!");
			e.printStackTrace();
		}
		return connection;
    }
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PerformLogin() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	public static String getMd5(String input) 
    { 
        try { 
  
            // Static getInstance method is called with hashing MD5 
            MessageDigest md = MessageDigest.getInstance("MD5"); 
  
            // digest() method is called to calculate message digest 
            //  of an input digest() return array of byte 
            byte[] messageDigest = md.digest(input.getBytes()); 
  
            // Convert byte array into signum representation 
            BigInteger no = new BigInteger(1, messageDigest); 
  
            // Convert message digest into hex value 
            String hashtext = no.toString(16); 
            while (hashtext.length() < 32) { 
                hashtext = "0" + hashtext; 
            } 
            return hashtext; 
        }  
  
        // For specifying wrong message digest algorithms 
        catch (NoSuchAlgorithmException e) { 
            throw new RuntimeException(e); 
        } 
    } 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection con = connect();
			String rno = request.getParameter("RollNumber");
			PreparedStatement ps = con.prepareStatement("select password_hash from credentials where RollNumber=?");
			ps.setString(1,rno);
			ResultSet rs = ps.executeQuery();
			PrintWriter out = response.getWriter();  
			if (rs.next()) {
				if (rs.getString("password_hash").equals(getMd5(request.getParameter("password")))) {
					HttpSession session=request.getSession(); 
					session.setAttribute("rollNumber", rno);
					response.sendRedirect("index.jsp");
				}
				else {
					out.write("<div class=\"alert alert-danger\">Username or Password Incorrect!</div>");
					RequestDispatcher rd = request.getRequestDispatcher("login_page.jsp");
					rd.include(request, response);
				}
			}
			else {
				out.write("<div class=\"alert alert-danger\">Username or Password Incorrect!</div>");
				RequestDispatcher rd = request.getRequestDispatcher("login_page.jsp");
				rd.include(request, response);
			}
		}
		catch (Exception e) {e.printStackTrace();}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
