package eksamensforelesning;

//import java.util.HashSet;

public class Person {
	private final String SSN;
	private String name;
//	private HashSet<Account> accounts = new HashSet<>();
	
	
	// Constructors
	public Person(String name, String SSN) {
		if (!isValidSSN(SSN))
			throw new IllegalArgumentException("Invalid SSN.");
		
		this.name = name;
		this.SSN = SSN;
	}
	
	
	// Validation
	private boolean isValidSSN(String SSN) {
		// Validate length
		if (SSN.length() != 11)
			return false;
		
		// Validate date
		int day = Integer.valueOf(SSN.substring(0, 2));
		int month = Integer.valueOf(SSN.substring(2, 4));
		if (day < 1  ||  day > 31) return false;
		if (month < 1  ||  month > 12) return false;

		return true;
	}
	
	
	// Getters
	public String getName() {
		return name;
	}
	
	public String getSSN() {
		return SSN;
	}

	
//	// Other
//	public void addAccount(Account account) {
//		if (accounts.add(account))
//			account.setOwner(this);
//	}
//
//	public void removeAccount(Account account) {
//		accounts.remove(account);
//	}
	
}	
