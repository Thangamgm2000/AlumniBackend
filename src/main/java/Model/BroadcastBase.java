package Model;

import java.sql.*;
import java.util.ArrayList;

public class BroadcastBase {

    String broadcast_id;
    String rollNumber;
    String message;
    String time;

    public BroadcastBase() {
        this.broadcast_id = "";
        this.rollNumber = "";
        this.message = "";
        this.time = "";
    }

    public String getBroadcast_id() {
        return this.broadcast_id;
    }

    public void setBroadcast_id(String broadcast_id) {
        this.broadcast_id = broadcast_id;
    }

    public String getRollNumber() {
        return this.rollNumber;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    
    public static void sendBroadcast(BroadcastBase brdcst) throws SQLException {
        Connection con = DataConnector.connect();
        String sql = "insert into broadcast values (?,?,?,?)";
        
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, RandomIdGenerator.getRandomNumber());
        ps.setString(2, brdcst.getRollNumber());
        ps.setString(3, brdcst.getMessage());
        ps.setString(4, brdcst.getTime());

        ps.executeUpdate();
        con.close();
    }

    public static ArrayList<BroadcastBase> getBroadcasts() throws SQLException {
        Connection con = DataConnector.connect();
        
        String sql = "select * from broadcast";
        PreparedStatement ps = con.prepareStatement(sql);
        
        ResultSet rs = ps.executeQuery();
        
        ArrayList<BroadcastBase> brdCasts  = new ArrayList<BroadcastBase>();
        
        while(rs.next()) {
            BroadcastBase tmp = new BroadcastBase();
            tmp.setBroadcast_id(rs.getString(1));
            tmp.setRollNumber(rs.getString(2));
            tmp.setMessage(rs.getString(3));
            tmp.setTime(rs.getString(4));
            brdCasts.add(tmp);
        }

        return brdCasts;
    }
    
}
