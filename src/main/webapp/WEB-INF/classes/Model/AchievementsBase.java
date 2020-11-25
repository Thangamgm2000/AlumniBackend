package Model;
public class AchievementsBase {
	String achievementId, type,name,organization,dateOfAccomplishment,link,description;
	public AchievementsBase() {
		achievementId="";
		type="";
		name="";
		organization="";
		dateOfAccomplishment="";
		link="";
		description="";
	}
	public String getAchievementId() {
		return achievementId;
	}
	public void setAchievementId(String achievementId) {
		this.achievementId = achievementId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getDateOfAccomplishment() {
		return dateOfAccomplishment;
	}
	public void setDateOfAccomplishment(String dateOfAccomplishment) {
		this.dateOfAccomplishment = dateOfAccomplishment;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
