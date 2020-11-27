package Model;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
public class EventsManager {
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
    public static ArrayList<EventData> getData()
    {
        ArrayList<EventData> allData = new ArrayList<EventData>();
        try 
        {
            Connection con = connect();
            PreparedStatement ps=con.prepareStatement("select * from upcoming_events order by event_id limit 4");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                EventData e = new EventData();
                e.setImage("img/"+rs.getString("image_link"));
                e.setLink(rs.getString("full_link"));
                e.setSummary(rs.getString("summary"));
                allData.add(e);
            }
        }catch(Exception e){System.out.println(e);}  
        return allData;
    }
    public static ArrayList<String> getImages(){
        ArrayList<String> images = new ArrayList<String>();
        try {
            Connection con = connect();
            PreparedStatement ps=con.prepareStatement("select image_link from upcoming_events order by event_id limit 4");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                images.add("img/"+rs.getString("image_link"));
            }
        }catch(Exception e){System.out.println(e);}  
        return images;
    }
    public static ArrayList<String> getLink(){
        ArrayList<String> images = new ArrayList<String>();
        try {
            Connection con = connect();
            PreparedStatement ps=con.prepareStatement("select full_link from upcoming_events order by event_id limit 4");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                images.add(rs.getString("full_link"));
                System.out.println("haha");
            }
        }catch(Exception e){System.out.println(e);}  
        return images;
    }
    public static ArrayList<String> getSummary(){
        ArrayList<String> images = new ArrayList<String>();
        try {
            Connection con = connect();
            PreparedStatement ps=con.prepareStatement("select summary from upcoming_events order by event_id limit 4");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                images.add(rs.getString("summary"));
            }
        }catch(Exception e){System.out.println(e);}  
        return images;
    }
}
