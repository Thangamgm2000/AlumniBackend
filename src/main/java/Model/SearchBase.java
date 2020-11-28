package Model;

import java.util.ArrayList;

public class SearchBase {

    String anyName, rollNumber, academicBatch, courseEnrolled, latestJob, profilePic, profileLink;


    public SearchBase() {
        this.anyName = "%";
        this.rollNumber = "%";
        this.academicBatch = "%";
        this.courseEnrolled = "%";
        this.latestJob = "%";
        this.profilePic = "";
        this.profileLink = "#";
    }

    public static String[][] getRecords(ArrayList<SearchBase> res) {
        String ret[][] = new String[res.size()][5];
        for(int i=0;i<res.size();i++)
            for(int j=0;j<5;j++)
                ret[i][j] = res.get(i).getRecords(j);
        return ret;
    }

    public String getRecords(int j) {
        SearchBase newres = this;
        switch(j) {
            case 0:
                return newres.getRollNumber();
            case 1:
                return newres.getAnyName();
            case 2:
                return newres.getAcademicBatch();
            case 3:
                return newres.getCourseEnrolled();
            case 4:
                return newres.getLatestJob();
            default:
                return "INVALID";
        }
    }

    public String getProfilePic() {
        return this.profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }

    public String getProfileLink() {
        return this.profileLink;
    }

    public void setProfileLink(String profileLink) {
        this.profileLink = profileLink;
    }

    public String getAnyName() {
        return this.anyName;
    }

    public void setAnyName(String anyName) {
        this.anyName = anyName;
    }

    public String getRollNumber() {
        return this.rollNumber;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }

    public String getAcademicBatch() {
        return this.academicBatch;
    }

    public void setAcademicBatch(String academicBatch) {
        this.academicBatch = academicBatch;
    }

    public String getCourseEnrolled() {
        return this.courseEnrolled;
    }

    public void setCourseEnrolled(String courseEnrolled) {
        this.courseEnrolled = courseEnrolled;
    }

    public String getLatestJob() {
        return this.latestJob;
    }

    public void setLatestJob(String latestJob) {
        this.latestJob = latestJob;
    }
    
}