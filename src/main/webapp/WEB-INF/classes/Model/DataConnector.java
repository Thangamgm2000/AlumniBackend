package Model;
import java.io.*;
import java.sql.*;
public class DataConnector {
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
	
	public static UserBase getRecordById(String rollNumber){  
	    UserBase u=null;  
	    try{  
	        Connection con= connect();  
	        PreparedStatement ps=con.prepareStatement("select * from profile_home_academic where "
	        		+ "RollNumber=?");  
	        ps.setString(1, rollNumber);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new UserBase();
	            System.out.println(rs.getString("RollNumber"));
	            u.setRollNumber(rs.getString("RollNumber"));  
	            u.setFirstName(rs.getString("FirstName"));  
	            u.setLastName(rs.getString("LastName"));  
	            u.setOfficialEmail(rs.getString("OfficialEmail"));  
	            u.setPersonalEmail(rs.getString("PersonalEmail"));  
	            u.setMobileNumber(rs.getString("MobileNumber"));
	            u.setCity(rs.getString("City"));
				u.setShortBio(rs.getString("ShortBio"));
				u.setCourseEnrolled(rs.getString("CourseEnrolled"));
				u.setCgpa(Float.parseFloat(rs.getString("CGPA")));
				u.setAcademicAdvisor(rs.getString("AcademicAdvisor"));
				u.setDept(rs.getString("Department"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
	
}
