package ServletPackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.InstanceProfileCredentialsProvider;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

/**
 * Servlet implementation class ImageHandler
 */
@WebServlet("/ImageHandler")
@MultipartConfig
public class ImageHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext cntx= request.getServletContext();
	      // Get the absolute path of the image
	      String filename = cntx.getRealPath("images/MyimgUploaded.jpg");
	      // retrieve mimeType dynamically
	      String mime = cntx.getMimeType(filename);
	      if (mime == null) {
	        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	        return;
	      }

	      response.setContentType(mime);
	      File file = new File(filename);
	      response.setContentLength((int)file.length());

	      FileInputStream in = new FileInputStream(file);
	      OutputStream out = response.getOutputStream();

	      // Copy the contents of the file to the output stream
	       byte[] buf = new byte[1024];
	       int count = 0;
	       while ((count = in.read(buf)) >= 0) {
	         out.write(buf, 0, count);
	      }
	    out.close();
	    in.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session=request.getSession(false);
			String rollNumber="";
			if(session!=null && session.getAttribute("rollNumber")!=null){  
				rollNumber=(String)session.getAttribute("rollNumber");
				}  
				else{
					response.sendRedirect("login_page.jsp");  
				}
			response.setContentType("text/html");
	        PrintWriter out = response.getWriter(); 
            // Getting File data
            String bucket_name = "amrita-alumni-portal.io";
            Part part = request.getPart("imageFile");
            /*InstanceProfileCredentialsProvider credentialsProvider = new InstanceProfileCredentialsProvider();
            try {
                credentialsProvider.getCredentials();
            } catch (Exception e) {
                throw new AmazonClientException(
                        "Cannot load the credentials from the credential profiles file.");
            }*/
            final AmazonS3 s3 = AmazonS3ClientBuilder.standard()
                    //.withCredentials(credentialsProvider)
                    .withRegion("us-east-2").build();
	        // Getting Application Path
	        String appPath = request.getServletContext().getRealPath("");
	 
	        // File path where all files will be stored
	        String imagePath = appPath + "images";
	        // Creates the file directory if it does not exists
	        File fileDir = new File(imagePath);
	        if (!fileDir.exists()) {
	            fileDir.mkdirs();
	        }
	         
	        //Get Image Name
	        String imageName = "MyimgUploaded.jpg";
	         
	        if(validateImage(imageName)){
	            try{
	                part.write(imagePath + File.separator + imageName);
                    out.print("<img src=\"images/"+imageName+"\" >");
                    String fileObjKeyName = rollNumber+".jpg";
                    String imgfileName = request.getServletContext().getRealPath("images/MyimgUploaded.jpg");
                    PutObjectRequest s3request = new PutObjectRequest(bucket_name, fileObjKeyName, new File(imgfileName));
                    ObjectMetadata metadata = new ObjectMetadata();
                    metadata.setContentType("image/jpg");
                    s3.putObject(s3request);
	                System.out.println("<img src=\"images/"+imageName+"\" >");
	            }catch (Exception ex) {
	                out.print("Exception: "+ex);
	               //System.out.println(""+ex);
	               //ex.printStackTrace();
	            }
	        }else{
	            out.print("<h1>Invalid Image Format</h1>");
	            //System.out.println("<h1>Invalid Image Format</h1>");
	        }
	    }
	     
	    //Validates uploaded file is Image or not
	    private boolean validateImage(String imageName){
	        String fileExt = imageName.substring(imageName.length()-3);
	        if("jpg".equals(fileExt) || "png".equals(fileExt) || "gif".equals(fileExt))
	            return true;
	         
	        return false;
	    }
	

}
