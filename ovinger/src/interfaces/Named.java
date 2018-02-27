package interfaces;

public interface Named {
	//Given name
	public void setGivenName(String name);
	public String getGivenName();
	
	//Family name
	public void setFamilyName(String name);
	public String getFamilyName();
	
	//Full name
	public void setFullName(String name);
	public String getFullName();
}
