package encapsulation;

public class Vehicle {

	//Declarations
	private char vehicleType, fuelType;
	private String registrationNumber;
	
	
	//Constructor
	public Vehicle(char vehicleType, char fuelType, String registrationNumber) throws IllegalArgumentException {
		if (!isValidVehicle(vehicleType, fuelType, registrationNumber))
			throw new IllegalArgumentException("Invalid initial attributes.");
		
		this.vehicleType = vehicleType;
		this.fuelType = fuelType;
		this.registrationNumber = registrationNumber;
	}
	
	
	//Validation
	public boolean isValidVehicle(char vehicleType, char fuelType, String registrationNumber) {
		
		String regPrefix = registrationNumber.substring(0, 2);
		String regSuffix = registrationNumber.substring(2);
		String[] regIllegalSubstrings = { "EL", "EK", "HY", "Æ", "Ø", "Å" };
		
		
		//Valid Vehicle Type
		if (vehicleType != 'M'  &&  vehicleType != 'C') return false;

		
		//Valid Fuel Type
		if (fuelType != 'H'  &&  fuelType != 'E'  &&  fuelType != 'D'  &&  fuelType != 'G') return false;

		
		//Valid Registration Number
		if (registrationNumber.length() != 6  &&  registrationNumber.length() != 7) return false;
		
		for (char c : regPrefix.toCharArray()) {if (!Character.isUpperCase(c)) return false;}
		for (char c : regSuffix.toCharArray()) {if (!Character.isDigit(c)) return false;}
		
		
	
		//// RULES BASED ON OTHER ATTRIBUTES ////
		
		//Electric vehicles' regNums are required to start with "EL" or "EK".
		if ((fuelType == 'E' && !regPrefix.equals("EL"))  &&  (fuelType == 'E' && !regPrefix.equals("EK"))) return false;

		//Hydrogen vehicles' regNums are required to start with "HY".
		if (fuelType == 'H' && !regPrefix.equals("HY")) return false;
		
		//Diesel and gas vehicles' regNums cannot contain "EL", "EK", "HY", "Æ", "Ø" or "Å".
		if (fuelType == 'D'  ||  fuelType == 'G')
			for (String subStr : regIllegalSubstrings) if (regPrefix.contains(subStr)) return false;
		
		//Regulations for suffix length based on vehicle.
		if ((vehicleType == 'M' && regSuffix.length() != 4)  ||  (vehicleType == 'C' && regSuffix.length() != 5)) return false;
		
		//Only cars can be fueled by hydrogen.
		if (fuelType == 'H'  &&  vehicleType != 'C') return false;
		
		return true;
	}
	
	
	//Getters
	public char getVehicleType() {return vehicleType;}
	
	public char getFuelType() {return fuelType;}
	
	public String getRegistrationNumber() {return registrationNumber;}
	
	
	//Setters
	public void setRegistrationNumber(String registrationNumber) throws IllegalArgumentException {
		if (!isValidVehicle(this.vehicleType, this.fuelType, registrationNumber))
			throw new IllegalArgumentException("Invalid registration number for current state.");
	
		this.registrationNumber = registrationNumber;
	}
	
	
	//Other
	@Override
	public String toString() {
		return String.format("[%s:  vehicleType = %s, fuelType = %s, registrationNumber = %s]", 
				this.getClass().getName(), vehicleType, fuelType, registrationNumber);
	}
	
	public static void main(String[] args) {
		Vehicle myBroom = new Vehicle('C', 'G', "YE79129");
		System.out.println(myBroom);
	}
	
}