package Model;
import java.io.IOException;
import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.InstanceProfileCredentialsProvider;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.simpleemail.AmazonSimpleEmailService;
import com.amazonaws.services.simpleemail.AmazonSimpleEmailServiceClientBuilder;
import com.amazonaws.services.simpleemail.model.Body;
import com.amazonaws.services.simpleemail.model.Content;
import com.amazonaws.services.simpleemail.model.Destination;
import com.amazonaws.services.simpleemail.model.Message;
import com.amazonaws.services.simpleemail.model.SendEmailRequest;

public class SimpleEmailServiceAPI
{
    static final String FROM = "Your Email Id";  // Replace with your "From" address. This address must be verified.
    static final String SUBJECT = "Query Received from Alumni Portal";

    public static String sendMessage(String TO, String name, String bodyMessage) throws IOException
    {
        Destination destination = new Destination().withToAddresses(new String[]{TO});
        String BODY = "Hi "+ name + ",\n\n" +
                "We have received your request, we will get back to you soon.\n" +
                "Your message received: " + bodyMessage + "\n\n" +
                "Regards,\n" +
                "Amrita Alumni Portal";
        // Create the subject and body of the message.
        Content subject = new Content().withData(SUBJECT);
        Content textBody = new Content().withData(BODY);
        Body body = new Body().withText(textBody);

        // Create a message with the specified subject and body.
        Message message = new Message().withSubject(subject).withBody(body);

        // Assemble the email.
        SendEmailRequest request = new SendEmailRequest().withSource(FROM).withDestination(destination).withMessage(message);

        try {
            //System.out.println("Attempting to send an email through Amazon SES by using the AWS SDK for Java...");

            
            InstanceProfileCredentialsProvider credentialsProvider = new InstanceProfileCredentialsProvider();
            try {
                credentialsProvider.getCredentials();
            } catch (Exception e) {
                throw new AmazonClientException(
                        "Cannot load the credentials from the credential profiles file. "
                        );
               
            }

            // Instantiate an Amazon SES client, which will make the service call with the supplied AWS credentials.
            AmazonSimpleEmailService client = AmazonSimpleEmailServiceClientBuilder.standard()
                .withCredentials(credentialsProvider)
                // Choose the AWS region of the Amazon SES endpoint you want to connect to. Note that your production
                // access status, sending limits, and Amazon SES identity-related settings are specific to a given
                // AWS region, so be sure to select an AWS region in which you set up Amazon SES. Here, we are using
                // the US East (N. Virginia) region. Examples of other regions that Amazon SES supports are US_WEST_2
                // and EU_WEST_1. For a complete list, see http://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html
                .withRegion("us-east-2")
                .build();

            // Send the email.
            client.sendEmail(request);
            return "Success";
            //System.out.println("Email sent!");

        } catch (Exception ex) {
            //System.out.println("The email was not sent.");
            return ("Error message: " + ex.getMessage());
            
            
        }
    }
}