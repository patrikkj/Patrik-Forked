package inheritance;

public class ForeldreSpar extends SavingsAccount {
	private final int withdrawals;
	private int remainingWithdrawals;
	
	
	public ForeldreSpar(double interestRate, int withdrawals) {
		super(interestRate);
		this.withdrawals = withdrawals;
		remainingWithdrawals = withdrawals;
	}
	
	
	@Override
	public void withdraw(double amount) {
		if (remainingWithdrawals <= 0)
			throw new IllegalStateException("Withdrawal limit reached.");
			
		super.withdraw(amount);
		remainingWithdrawals--;
	}
	
	@Override
	public void endYearUpdate() {
		super.endYearUpdate();
		remainingWithdrawals = withdrawals;
	}
	
	public int getRemainingWithdrawals() {
		return remainingWithdrawals;
	}
}
