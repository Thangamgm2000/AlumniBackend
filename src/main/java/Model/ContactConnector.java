package Model;
//import org.graalvm.compiler.hotspot.nodes.profiling.RandomSeedNode;

import java.io.*;
import java.sql.*;
import java.util.Date;

public class ContactConnector {
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

    public static ContactBase getRecordByEmail(String email){
        ContactBase u = null;
        try{
            Connection con= connect();
            PreparedStatement ps=con.prepareStatement("select * from contact_us where "
                    + "email=?");
            ps.setString(1, email);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                u = new ContactBase();
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email_id"));
                u.setMessage(rs.getString("message"));
                u.setPhone(rs.getString("phone_number"));
            }
        }catch(Exception e){System.out.println(e);}
        return u;
    }
    public static int updateContact(ContactBase u){
        int status=0;
        try{
            Connection con= connect();
            PreparedStatement ps=con.prepareStatement(
                    "insert into contact_us values (?,?,?,?,?,?);");
            ps.setString(1, new RandomIdGenerator().getRandomNumber());
            ps.setString(2,u.getName());
            ps.setString(3,u.getEmail());
            ps.setString(4,u.getPhone());
            ps.setString(5,u.getMessage());
            Date today = new Date();
            java.sql.Date sqlDate = new java.sql.Date(today.getTime());
            ps.setDate(6, sqlDate);
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }

}
