package eksamensforelesning;

public class Account implements Comparable<Account> {
	private int balance;
	private double interestRate;
	private int id;
//	private Person owner;
	private static int accountCounter;
	
	
	// Constructors
	public Account(int balance, double interestRate) {
		this.balance = balance;
		this.interestRate = interestRate;
		this.id = accountCounter++;
	}
	
	public Account(int balance) {
		this(balance, 0.02);
	}
	
	public Account() {
		this(0, 0.02);
	}
	
	
	// Getters & Setters
	/**
	 * Returns account ID.
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * Gets balance.
	 */
	public int getBalance() {
		return balance;
	}
	
	/**
	 * Gets interest rate.
	 */
	public double getInterestRate() {
		return interestRate;
	}

	/**
	 * Sets interest rate.
	 * @throws IllegalArgumentException if {@code interestRate} is negative.
	 */ 
	public void setInterestRate(double interestRate) {
		if (checkIfNegative(interestRate))
			throw new IllegalArgumentException("Interest rate cannot be negative.");
		
		this.interestRate = interestRate;
	}

//	/**
//	 * Assigns an owner to this account.
//	 */
//	public void setOwner(Person person) {
//		// Check if person is current owner
//		if (owner == person) return;
//
//		// Cache old owner
//		Person oldOwner = owner;
//		
//		// Assign new owner
//		this.owner = person;
//		
//		// Add link to new account
//		if (person != null)
//			person.addAccount(this);
//		
//		// Remove link between account and old owner
//		if (oldOwner != null)
//			oldOwner.removeAccount(this);
//	}
	
//	/**
//	 * Returns assigned owner if any.
//	 */
//	public Person getOwner() {
//		return owner;
//	}
	
	// Other
	/**
	 * Deposits amount to account.
	 * @throws IllegalArgumentException if amount if negative.
	 */
	public void deposit(int amount) {
		if (checkIfNegative(amount))
			throw new IllegalArgumentException("Deposit amount cannot be negative.");
		
		balance += amount;
	}

	/**
	 * Subtracts amount from balance if valid.
	 */
	public void withdraw(int amount) {
		if (checkIfNegative(amount))
			throw new IllegalArgumentException("Withdrawal amount cannot be negative.");
		
		balance -= amount;
	}
	
	
	// Static
	/**
	 * Returns true if input parameter is negative.
	 */
	public boolean checkIfNegative(int amount) {
		return amount < 0;
	}
	
	/**
	 * Returns true if input parameter is negative.
	 */
	public boolean checkIfNegative(double amount) {
		return amount < 0;
	}

	@Override
	public int compareTo(Account acc2) {
		return getBalance() - acc2.getBalance();
	}
	
}
