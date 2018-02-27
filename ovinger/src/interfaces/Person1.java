package interfaces;

public class Person1 implements Named {
	//Instance variables
	private String givenName, familyName;
	
	
	// Constructor
	public Person1(String givenName, String familyName) {
		this.givenName = givenName;
		this.familyName = familyName;
	}
	
	
	//Setters
	@Override
	public void setGivenName(String name) {
		this.givenName = name;
	}

	@Override
	public void setFamilyName(String name) {
		this.familyName = name;
	}

	@Override
	public void setFullName(String name) {
		String[] fullName = name.split(" ");
		
		this.givenName = fullName[0];
		this.familyName = fullName[1];
	}
	
	
	//Getters
	@Override
	public String getGivenName() {
		return givenName;
	}
	
	@Override
	public String getFamilyName() {
		return familyName;
	}
	
	@Override
	public String getFullName() {
		return String.format("%s %s", givenName, familyName);
	}
}
