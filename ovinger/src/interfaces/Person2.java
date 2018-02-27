package interfaces;

public class Person2 implements Named {
	//Instance variables
	private String fullName;
	
	
	//Constructor
	public Person2(String fullName) {
		this.fullName = fullName;
	}
	
	
	//Setters
	@Override
	public void setGivenName(String name) {
		// Find whitespace index
		int spaceIndex = fullName.indexOf(' ');
		
		// Replace surname with new name
		fullName = fullName.replace(fullName.substring(0, spaceIndex), name);
	}
	
	@Override
	public void setFamilyName(String name) {
		// Find whitespace index
		int spaceIndex = fullName.indexOf(' ');
		
		// Replace surname with new name
		fullName = fullName.replace(fullName.substring(spaceIndex + 1), name);
	}

	@Override
	public void setFullName(String name) {
		this.fullName = name;
	}
	
	
	//Getters
	@Override
	public String getGivenName() {
		return fullName.substring(0, fullName.indexOf(' '));
	}

	@Override
	public String getFamilyName() {
		return fullName.substring(fullName.indexOf(' ') + 1);
	}

	@Override
	public String getFullName() {
		return fullName;
	}
}
