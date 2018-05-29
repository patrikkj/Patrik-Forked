package inheritance;

public class SavingsAccount implements Account {
	private int balance;
	private final double interestRate;
	
	
	public SavingsAccount(double interestRate) {
		if (interestRate < 0)
			throw new IllegalArgumentException("Interest rate cannot be negative.");
		
		this.interestRate = interestRate;
	}
	
	
	@Override
	public void deposit(double amount) {
		if (amount < 0)
			throw new IllegalArgumentException("Deposit must be positive.");
		
		balance += amount;
	}

	@Override
	public void withdraw(double amount) {
		if (amount < 0)
			throw new IllegalArgumentException("Withdrawal must be positve.");
		
		if (balance - amount < 0)
			throw new IllegalStateException("No more Johnny Cash.");
			
		balance -= amount;
	}

	@Override
	public double getBalance() {
		return balance;
	}

	public void endYearUpdate() {
		balance *= (1 + interestRate);
	}
	
}
