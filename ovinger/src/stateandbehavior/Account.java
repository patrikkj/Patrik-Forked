package stateandbehavior;

public class Account {

	double balance;
	double interestRate;
	
	
	public double getBalance() {
		return balance;
	}
	
	public void deposit(double balance) {
		if (balance >= 0) {
			this.balance += balance;
		}
	}
	
	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}
	
	public double getInterestRate() {
		return interestRate;
	}
	
	public void addInterest() {
		balance *= (1 + (interestRate / 100));
	}
	
	public String toString() {
		return String.format("[%s: balance = %s, interestRate = %s]", 
				this.getClass().getSimpleName(), 
				getBalance(), 
				getInterestRate());
	}
	
	public static void main(String[] args) {
		Account myAcc = new Account();
		
		System.out.println(myAcc.toString());
		
		myAcc.setInterestRate(12);
		myAcc.deposit(1005.20);
		myAcc.addInterest();
		
		System.out.println(myAcc.toString());
	}
}