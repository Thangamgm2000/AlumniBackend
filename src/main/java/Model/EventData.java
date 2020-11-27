package Model;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
public class EventData {
    String summary,image,link;
    public void setSummary(String s)
    {
        this.summary = s;
    }
    public void setImage(String i)
    {
        this.image = i;
    }
    public void setLink(String l)
    {
        this.link = l;
    }
    public String getSummary()
    {
        return this.summary;
    }
    public String getLink()
    {
        return this.link;
    }
    public String getImage()
    {
        return this.image;
    }
}