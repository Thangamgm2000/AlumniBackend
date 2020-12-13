package Model;
import java.sql.*;
import java.util.ArrayList;

public class PerformSearch {
    
    public static Connection connect()
	{
		Connection connection=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver"); 
			connection = DriverManager.getConnection("jdbc:mysql://Your-MYSQL-Database-URL",
							"DatabaseName",
							"password"
							);
		}
		catch (Exception e)
		{
			System.out.println("Error!");
			e.printStackTrace();
		}
		return connection;
    }

    public static String profPicSearch (Connection conn, String rno) {
        
        String profile_pic = "https://s3.us-east-2.amazonaws.com/YOUR-BUCKET-NAME/profile.jpg";
        
        try {
            Connection con = conn;
            String sql = "select profile_pic from social_media where RollNumber=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, rno);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                profile_pic = rs.getString("profile_pic");
            }
            return profile_pic;
        }
        catch (Exception e) {
            e.printStackTrace();
            return profile_pic;
        }
    }
    
    public static ArrayList<SearchBase> dbSearch(SearchBase searchObject) {
        ArrayList<SearchBase> myResults=null;

        try {
            Connection con = connect();
            String sql = "select FirstName, LastName, RollNumber, AdacemicBatch, CourseEnrolled, concat(RoleName,', ', Organization) "
            + "as Role from profile_home_academic NATURAL JOIN Jobs where EndMonth = 'present' "
            + "and (FirstName like ? OR LastName like ?) "
            + "and RollNumber like ? "
            + "and AdacemicBatch like ? "
            + "and CourseEnrolled like ? " 
            + "and Organization like ? "
            + ";";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1,"%"+searchObject.getAnyName()+"%");
            ps.setString(2,"%"+searchObject.getAnyName()+"%");
            ps.setString(3,"%"+searchObject.getRollNumber()+"%");
            ps.setString(4,"%"+searchObject.getAcademicBatch()+"%");
            ps.setString(5,"%"+searchObject.getCourseEnrolled()+"%");
            ps.setString(6,"%"+searchObject.getLatestJob()+"%");
            
            ResultSet rs = ps.executeQuery();

            myResults = new ArrayList<SearchBase>();

            while (rs.next()) {
                SearchBase currObj = new SearchBase();
                currObj.setAnyName(rs.getString("FirstName")+" "+rs.getString("LastName"));
                currObj.setAcademicBatch(rs.getString("AdacemicBatch"));
                currObj.setCourseEnrolled(rs.getString("CourseEnrolled"));
                currObj.setLatestJob(rs.getString("Role"));
                currObj.setRollNumber(rs.getString("RollNumber"));
                currObj.setProfilePic(PerformSearch.profPicSearch(con,currObj.getRollNumber()));
                currObj.setProfileLink("/Profile/"+currObj.getRollNumber());
                myResults.add(currObj);
            }
            con.close();
            return myResults;
        }
        catch(Exception e) { 
            e.printStackTrace();
            return myResults;
        }
        
    }
    
}
