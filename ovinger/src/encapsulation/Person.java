package encapsulation;

import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

public class Person {
	//Declarations
	private String surname, lastname, email, ssn;
	private Date birthday;
	private char gender;
	private static final String[] COUNTRY_CODES = { "ad", "ae", "af", "ag", "ai", "al", "am", "ao", "aq", "ar", "as", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bl", "bm", "bn", "bo", "bq", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "eh", "er", "es", "et", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mf", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "ss", "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "ye", "yt", "za", "zm", "zw" };

	
	//Constructor
	public Person() {
		this.gender = '\0';
	}
	
	
	//Validation 
	private boolean isValidName(String name) {
		String[] nameArray = name.split(" ");
		
		if (nameArray.length != 2) return false;
	
		if ((nameArray[0].length() < 2)  ||  (nameArray[1].length() < 2)) return false;
		
		for (char c : name.toCharArray())
			if (!Character.isLetter(c)  &&  c != ' ') return false;
		
		return true;
	}

	private boolean isValidEmail(String email) {
		List<String> countryCodesList = Arrays.asList(COUNTRY_CODES);
		HashSet<String> countryCodesSet = new HashSet<String>(countryCodesList);		
		
		String[] emailArray = email.split("@");
		if (emailArray.length != 2) return false;
		
		String prefix = emailArray[0];
		if (!prefix.contains(".")) return false;
		int prefixDotIndex = prefix.indexOf(".");
		
		String suffix = emailArray[1];
		if (!suffix.contains(".")) return false;
		int suffixDotIndex = suffix.indexOf(".");
		
		String prefixSurname = prefix.substring(0, prefixDotIndex);
		String prefixLastname = prefix.substring(prefixDotIndex + 1);
		String suffixDomainName = suffix.substring(0, suffixDotIndex);
		String suffixCountryCode = suffix.substring(suffixDotIndex + 1);
		
		if (!prefixSurname.equalsIgnoreCase(surname)  ||  (!prefixLastname.equalsIgnoreCase(lastname))) return false;
		for (char c : suffixDomainName.toCharArray()) if (!Character.isLetterOrDigit(c)) return false;
		if (!countryCodesSet.contains(suffixCountryCode)) return false;
		
		return true;
	}
	
	private boolean isValidBirthday(Date birthday) {
		Date currentDate = new Date();
		if (birthday.after(currentDate)) return false;
		
		return true;
	}
	
	private boolean isValidGender(char gender) {
		if ((gender != 'M')  &&  (gender != 'F')  &&  (gender != '\0')) return false;
		
		return true;
	}
	
	@SuppressWarnings("deprecation")
	private boolean isValidSSN(String ssn) {
		//Check length
		if (ssn.length() != 11) return false;
		
		//Check character type
		for (char c : ssn.toCharArray()) if (!Character.isDigit(c)) return false;
		
		//Gender and date of birth required
		if (gender == '\0'  ||  birthday == null) return false;
		
		int ssnDay = Integer.parseInt(ssn.substring(0, 2));
		
		int ssnMonth = Integer.parseInt(ssn.substring(2, 4));
		int ssnYear = Integer.parseInt(ssn.substring(4, 6));
		char ssnGenderChar = ssn.charAt(8);
		int ssnKey1 = Character.getNumericValue(ssn.charAt(9));
		int ssnKey2 = Character.getNumericValue(ssn.charAt(10));
		
		//Check valid date
		if (ssnDay != birthday.getDate()) return false;
		if (ssnMonth != (birthday.getMonth() + 1)) return false;
		if (ssnYear != birthday.getYear()) return false;
		
		//Check valid mid
		int ssnGenderMod = Character.getNumericValue(ssnGenderChar) % 2;
		if (gender == 'M' && ssnGenderMod != 1) return false;
		if (gender == 'F' && ssnGenderMod != 0) return false;
		
		//Check valid keys
		int[] keyWeights1 = { 3, 7, 6, 1, 8, 9, 4, 5, 2, 0 }; //0 excludes 10th digit.
		int[] keyWeights2 = { 5, 4, 3, 2, 7, 6, 5, 4, 3, 2 };
		int keySum1 = 0;  //Weighted sum based on first 9 digits in SSN.
		int keySum2 = 0;  //Weighted sum based on first 10 digits in SSN.
		
		for (int i = 0; i < 10; i++) {
			int ssnDigit = Character.getNumericValue(ssn.charAt(i));
			int weight1 = keyWeights1[i];
			int weight2 = keyWeights2[i];
			
			keySum1 += (ssnDigit * weight1);
			keySum2 += (ssnDigit * weight2);
		}
		
		int key1 = (11 - (keySum1 % 11)) % 11;
		int key2 = (11 - (keySum2 % 11)) % 11;
		
		if (key1 != ssnKey1  ||  key2 != ssnKey2) return false;
		
		return true;
	}
	
	
	//Setters
	public void setName(String name) throws IllegalArgumentException {
		if (!isValidName(name)) throw new IllegalArgumentException("Invalid name.");
		
		String[] nameArray = name.split(" ");
		this.surname = nameArray[0];
		this.lastname = nameArray[1];
	}
	
	public void setEmail(String email) throws IllegalArgumentException {
		if (!isValidEmail(email)) throw new IllegalArgumentException("Invalid email.");
		
		this.email = email;
	}
	
	public void setBirthday(Date birthday) throws IllegalArgumentException {
		if (!isValidBirthday(birthday)) throw new IllegalArgumentException("Invalid date.");
		
		this.birthday = birthday;
	}
	
	public void setGender(char gender) throws IllegalArgumentException {
		if (!isValidGender(gender)) throw new IllegalArgumentException("Invalid gender.");
		
		this.gender = gender;
	}
	
	public void setSSN(String ssn) throws IllegalArgumentException {
		if (!isValidSSN(ssn))
			throw new IllegalArgumentException("SSN is not valid.");
		
		this.ssn = ssn;
	}
	
	
	//Getters
	public String getName() {
		if (surname == null  &&  lastname == null) return null;
		return String.format("%s %s", surname, lastname);
		}

	public String getEmail() { return email; }
	
	public Date getBirthday() { return birthday; }
	
	public char getGender() { return gender; }
	
	public String getSSN() { return ssn; }
	 
	//Simple getters (Default return value: null)
	public String getSimpleName() {
		return getName();
	}
	
	public String getSimpleEmail() {		
		return getEmail();
	}
	
	public String getSimpleBirthday() {
		if (birthday == null) return null;
		
		@SuppressWarnings("deprecation")
		String[] birthdayArray = birthday.toLocaleString().split(",");
		String [] birthdayDate = birthdayArray[0].split(" ");
		
		return birthdayDate[0];
	}
	
	public String getSimpleGender() {
		if (gender == 'M') return "Male";
		if (gender == 'F') return "Female";
		return null;		
	}
	
	public String getSimpleSSN() {
		if (ssn == null) return null;
		return String.format("%s %s", ssn.substring(0, 6), ssn.substring(6));
	}
	
	
	//Main
	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		Person patrik = new Person();
		patrik.setName("Patrik Kjarran");
		patrik.setEmail("patrik.kjarran@outlook.no");
		patrik.setBirthday(new Date(97, 10, 24));  //Why is month 0-indexed??!
		patrik.setGender('M');
		System.out.println(patrik);
		patrik.setSSN("24119735315");
		
		Person person = new Person();
		person.setBirthday(new Date(94, 0, 1));  //Why is month 0-indexed??!
		System.out.println(person.getBirthday().toString());
		System.out.println(person.getSimpleBirthday());
		person.setGender('M');
		person.setSSN("01019411156");
	}

	@Override
	public String toString() {
		return String.format("%s: [%s, %s, %s, %s, %s]", 
				getClass().getSimpleName(), getSimpleName(), getSimpleEmail(), 
				getSimpleBirthday(), getSimpleGender(), getSimpleSSN());
	}

}
