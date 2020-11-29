package ServletPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import Model.InitializeImage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.math.BigInteger; 
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 

/**
 * Servlet implementation class PerformLogin
 */
@WebServlet("/PerformRegister")
public class PerformRegister extends HttpServlet {
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
    public PerformRegister() {
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
            PreparedStatement query = con.prepareStatement("select password_hash from credentials where RollNumber=?");
            query.setString(1,rno);
            ResultSet rs = query.executeQuery();
            if (rs.next()) {
                PrintWriter out = response.getWriter();

                out.write("<div class=\"alert alert-danger\">User ALREADY EXISTS!</div>");
                RequestDispatcher rd = request.getRequestDispatcher("register_page.jsp");
                rd.include(request, response);
            }
            else {
                PreparedStatement ps = con.prepareStatement("insert into credentials values (?,?)");
                ps.setString(1,rno);
                System.out.println(rno + ":" + request.getParameter("password"));
                ps.setString(2,getMd5(request.getParameter("password")));
                ps.executeUpdate();

                String sql = "insert into profile_home_academic(FirstName,LastName,OfficialEmail,MobileNumber,"
                + "CourseEnrolled,AdacemicBatch,Department,RollNumber)"
                +" values (?,?,?,?,?,?,?,?)";

                ps = con.prepareStatement(sql);

                ps.setString(1, request.getParameter("FullName").split(" ")[0]);
                ps.setString(2, request.getParameter("FullName").split(" ")[1]);
                ps.setString(3, request.getParameter("OfficialEmail"));
                ps.setString(4, request.getParameter("MobileNumber"));
                ps.setString(5, request.getParameter("CourseEnrolled"));
                ps.setString(6, request.getParameter("AcademicBatch"));
                ps.setString(7, request.getParameter("Department"));
                ps.setString(8, request.getParameter("RollNumber"));

                ps.executeUpdate();
                String profilePicUrl =InitializeImage.uploadImage(request.getParameter("RollNumber"), request.getServletContext().getRealPath("img/profile.jpg"));
                PrintWriter out = response.getWriter();
                sql = "insert into social_media(RollNumber,profile_pic)"
                +" values (?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, request.getParameter("RollNumber"));
                ps.setString(2,profilePicUrl);
                ps.executeUpdate();
                out.write("<div class=\"alert alert-success\">Registered Successfully, Please Login</div>");
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

