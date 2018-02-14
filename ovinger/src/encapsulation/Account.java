package encapsulation;

public class Account {

	//Declarations
	private double balance, interestRate;
	
	
	//Constructor
	public Account(double balance, double interestRate) throws IllegalArgumentException {
		if ((balance < 0)  || (interestRate < 0)) 
			throw new IllegalArgumentException("Input attributes cannot be negative.");
		
		this.balance = balance;
		this.interestRate = interestRate;
	}
	
	
	//Getters
	public double getBalance() {return balance;}
	
	public double getInterestRate() {return interestRate;}
	
	
	//Actions
	public void setInterestRate(double interestRate) {
		if (interestRate < 0) 
			throw new IllegalArgumentException("Negative interest rate.");
		
		this.interestRate = interestRate;
	}
	
	public void deposit(double balance) {
		if (balance < 0) 
			throw new IllegalArgumentException("Negative deposit.");
	
		this.balance += balance;
	}
	
	public void withdraw(double balance) {
		if (balance < 0) 
			throw new IllegalArgumentException("Negative withdrawl.");
		else if (this.balance - balance < 0) 
			throw new IllegalArgumentException("Withdrawl too large.");
		
		this.balance -= balance;
	}
	
	public void addInterest() {
		this.balance *= (1 + interestRate/100);
	}
	
	public static void main(String[] args) {
		Account acc = new Account(0, 0);
		
		System.out.println(acc);
	}
	
}
