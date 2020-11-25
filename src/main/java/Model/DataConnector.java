package Model;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
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
				u.setAcademicBatch(rs.getString("AdacemicBatch"));
				u.setDept(rs.getString("Department"));
			}
			ps=con.prepareStatement("select * from Achievements where "
	        		+ "RollNumber=?");  
			ps.setString(1, rollNumber);
			  
			rs=ps.executeQuery();
			ArrayList<AchievementsBase> achievements = new ArrayList<AchievementsBase>();
			while(rs.next())
			{
				AchievementsBase ach = new AchievementsBase();
				ach.setAchievementId(rs.getString("AchievementId"));
				ach.setType(rs.getString("Type"));
				ach.setName(rs.getString("Name"));
				ach.setOrganization(rs.getString("Organization"));
				ach.setDateOfAccomplishment(rs.getString("DateOfAccomplishment"));
				ach.setLink(rs.getString("Link"));
				ach.setDescription(rs.getString("Description"));
				achievements.add(ach);
			}
			ps=con.prepareStatement("select * from Jobs where "
	        		+ "RollNumber=?");  
			ps.setString(1, rollNumber);
			rs = ps.executeQuery();
			u.setAchievements(achievements);
			ArrayList<JobsBase> jobs = new ArrayList<JobsBase>();
			while(rs.next())
			{
				JobsBase job = new JobsBase();
				job.setJobId(rs.getString("JobId"));
				job.setRoleType(rs.getString("RoleType"));
				job.setRoleName(rs.getString("RoleName"));
				job.setOrganization(rs.getString("Organization"));
				job.setStartMonth(rs.getString("StartMonth"));
				job.setEndMonth(rs.getString("EndMonth"));
				job.setDescription(rs.getString("Description"));
				jobs.add(job);
			}
			u.setJobs(jobs);

			  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
	public static int updateProfile(UserBase u){  
		int status=0;  
		try{  
			Connection con= connect();  
			PreparedStatement ps=con.prepareStatement(  
		"update profile_home_academic set FirstName=?,LastName=?,OfficialEmail=?,PersonalEmail=?,MobileNumber=?,City=?,ShortBio=?,"+
		"CourseEnrolled=?,CGPA=?,AcademicAdvisor=?,AdacemicBatch=?,Department=?"+
		" where RollNumber=?");  
			ps.setString(1,u.getFirstName());  
			ps.setString(2,u.getLastName());  
			ps.setString(3,u.getOfficialEmail());  
			ps.setString(4,u.getPersonalEmail());  
			ps.setString(5,u.getMobileNumber());  
			ps.setString(6,u.getCity());
			ps.setString(7,u.getShortBio());
			ps.setString(8,u.getCourseEnrolled());
			ps.setFloat(9,u.getCgpa());
			ps.setString(10, u.getAcademicAdvisor());
			ps.setString(11,u.getAcademicBatch());
			ps.setString(12, u.getDept());
			ps.setString(13, u.getRollNumber());
			status=ps.executeUpdate();  
		}catch(Exception e){System.out.println(e);}  
		return status;  
	}    
	
}
