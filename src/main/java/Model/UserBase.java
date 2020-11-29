package Model;
import java.util.ArrayList;
public class UserBase {

	String rollNumber,firstName,lastName,mobileNumber,officialEmail,personalEmail,
	city,shortBio,courseEnrolled,academicBatch,dept,academicAdvisor,
	linkedin,twitter,facebook,instagram,reddit,slack,websiteLink,profilePic;
	float cgpa;
	ArrayList<AchievementsBase> achievements;
	ArrayList<JobsBase> jobs;
	public UserBase()
	{
		rollNumber = "";firstName="";lastName="";mobileNumber="";officialEmail="";
		personalEmail="";city="";shortBio="";courseEnrolled="";academicBatch="";dept="";
		academicAdvisor=""; linkedin="";twitter="";facebook="";instagram="";
		reddit="";slack="";websiteLink="";profilePic="";
		cgpa=-1;
		achievements = new ArrayList<AchievementsBase>();
		jobs = new ArrayList<JobsBase>();
	}
	//generate Getters andSetters
	public ArrayList<AchievementsBase> getAchievements() {
		return achievements;
	}
	public void setAchievements(ArrayList<AchievementsBase> achievements) {
		this.achievements = achievements;
	}
	public ArrayList<JobsBase> getJobs() {
		return jobs;
	}
	public void setJobs(ArrayList<JobsBase> jobs) {
		this.jobs = jobs;
	}
	public String getRollNumber() {
		return rollNumber;
	}
	public void setRollNumber(String rollNumber) {
		this.rollNumber = rollNumber;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getOfficialEmail() {
		return officialEmail;
	}
	public void setOfficialEmail(String officialEmail) {
		this.officialEmail = officialEmail;
	}
	public String getPersonalEmail() {
		return personalEmail;
	}
	public void setPersonalEmail(String personalEmail) {
		this.personalEmail = personalEmail;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getShortBio() {
		return shortBio;
	}
	public void setShortBio(String shortBio) {
		this.shortBio = shortBio;
	}
	public String getCourseEnrolled() {
		return courseEnrolled;
	}
	public void setCourseEnrolled(String courseEnrolled) {
		this.courseEnrolled = courseEnrolled;
	}
	public String getAcademicBatch() {
		return academicBatch;
	}
	public void setAcademicBatch(String academicBatch) {
		this.academicBatch = academicBatch;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getAcademicAdvisor() {
		return academicAdvisor;
	}
	public void setAcademicAdvisor(String academicAdvisor) {
		this.academicAdvisor = academicAdvisor;
	}
	public float getCgpa() {
		return cgpa;
	}
	public void setCgpa(float cgpa) {
		this.cgpa = cgpa;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}

	public String getTwitter() {
		return twitter;
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getInstagram() {
		return instagram;
	}

	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}

	public String getReddit() {
		return reddit;
	}

	public void setReddit(String reddit) {
		this.reddit = reddit;
	}

	public String getSlack() {
		return slack;
	}

	public void setSlack(String slack) {
		this.slack = slack;
	}

	public String getWebsiteLink() {
		return websiteLink;
	}

	public void setWebsiteLink(String websiteLink) {
		this.websiteLink = websiteLink;
	}

	public String getProfilePic() {
		return profilePic;
	}

	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
}
