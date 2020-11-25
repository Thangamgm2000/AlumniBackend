import javax.servlet.http.HttpSession; 
public class SessionValidation
{
    public static String getSessionRollno()
    {
        HttpSession session=request.getSession(false);  
        if(session!=null){  
        String rollNumber=(String)session.getAttribute("rollNumber");
        return rollNumber;
        }  
        else{  
             
            return null;  
        }  
    }
}