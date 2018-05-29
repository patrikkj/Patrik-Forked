package inheritance;

public class BSU extends SavingsAccount {
	private final double depositLimit;
	private double currentYearBalance;
	
	
	public BSU(double interestRate, double depositLimit) {
		super(interestRate);
		this.depositLimit = depositLimit;
	}
	
	@Override
	public void deposit(double amount) {
		if (currentYearBalance + amount > depositLimit)
			throw new IllegalStateException("Deposit limit reached.");
		
		super.deposit(amount);
		currentYearBalance += amount;
	}
	
	@Override
	public void withdraw(double amount) {
		if (amount > currentYearBalance)
			throw new IllegalStateException("Withdrawals can only be made from this years deposits.");
		
		super.withdraw(amount);
		currentYearBalance -= amount;
	}
	
	@Override
	public void endYearUpdate() {
		currentYearBalance = 0;
		super.endYearUpdate();
	}
	
	public double getTaxDeduction() {
		return currentYearBalance * 0.20;
	}
}
