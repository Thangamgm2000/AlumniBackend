package ServletPackage;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
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
import java.io.File;
import java.io.IOException;

@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    public UploadServlet()
    {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
          // Get the absolute path of the image
          String bucket_name = "YOUR-BUCKET-NAME";
          InstanceProfileCredentialsProvider credentialsProvider = new InstanceProfileCredentialsProvider();
            try {
                credentialsProvider.getCredentials();
            } catch (Exception e) {
                throw new AmazonClientException(
                        "Cannot load the credentials from the credential profiles file.");
            }
            final AmazonS3 s3 = AmazonS3ClientBuilder.standard()
                    .withCredentials(credentialsProvider)
                    .withRegion("us-east-2").build();
                    String fileObjKeyName = "MyimgUploaded.jpg";
                    String imgfileName = request.getServletContext().getRealPath("img/kailash.jpg");
                    PutObjectRequest s3request = new PutObjectRequest(bucket_name, fileObjKeyName, new File(imgfileName));
                    ObjectMetadata metadata = new ObjectMetadata();
                    metadata.setContentType("image/jpg");
                    s3.putObject(s3request);
	}
}