package Model;
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

public class InitializeImage {
    public static String uploadImage(String RollNumber,String ImagePath)
    {
        String bucket_name = "amrita-alumni-portal.io";
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
                    String fileObjKeyName = RollNumber+".jpg";
                    String imgfileName = ImagePath;
                    PutObjectRequest s3request = new PutObjectRequest(bucket_name, fileObjKeyName, new File(imgfileName));
                    ObjectMetadata metadata = new ObjectMetadata();
                    metadata.setContentType("image/jpg");
                    s3.putObject(s3request);
            return ("https://s3.us-east-2.amazonaws.com/amrita-alumni-portal.io/"+fileObjKeyName);
    }
}
