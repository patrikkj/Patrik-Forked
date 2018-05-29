package testing;

import junit.framework.TestCase;

public class AccountTest extends TestCase {
	private Account account;
	private double delta = 0.000001;
	
	@Override
	protected void setUp() throws Exception {
		super.setUp();
		account = init_account();
	}
	
	private Account init_account() {
		Account account = new Account(100, 5);
		return account;
	}
	
	public void testConstructor() {
		account = new Account(0, 0);
		assertEquals(0, account.getBalance(), delta);
		assertEquals(0, account.getInterestRate(), delta);
		
		account = new Account(100, 10);
		assertEquals(100, account.getBalance(), delta);
		assertEquals(10, account.getInterestRate(), delta);
		
		try {
			account = new Account(-10, 10);
			fail("IllegalArgumentException should be thrown if initial balance is negative.");
		}
		catch (Exception e) {
			assertEquals(100, account.getBalance(), delta);
			assertEquals(10, account.getInterestRate(), delta);
			assertTrue("Exception should be IllegalArgumentException", e instanceof IllegalArgumentException);
		}
		
		try {
			account = new Account(100, -10);
			fail("IllegalArgumentException should be thrown if initial interest rate is negative.");
		}
		catch (Exception e) {
			assertEquals(100, account.getBalance(), delta);
			assertEquals(10, account.getInterestRate(), delta);
			assertTrue("Exception should be IllegalArgumentException", e instanceof IllegalArgumentException);
		}
	}

	public void testSetInterestRate() {
		account.setInterestRate(0);
		assertEquals(0, account.getInterestRate(), delta);

		account.setInterestRate(3.5);
		assertEquals(3.5, account.getInterestRate(), delta);
		
		try {
			account.setInterestRate(-5);
			fail("Setting a negative interest rate should throw an IllegalArgumentException.");
		}
		catch (Exception e) {
			assertEquals(3.5, account.getInterestRate(), delta);
			assertTrue("Exception should be IllegalArgumentException.", e instanceof IllegalArgumentException);
		}
	}

	public void testDeposit() {
		account.deposit(20);
		assertEquals(120, account.getBalance(), delta);
		
		account.deposit(0);
		assertEquals(120, account.getBalance(), delta);
		
		try {
			account.deposit(-10);
			fail("Negative deposits should throw an IllegalArgumentException.");
		}
		catch (Exception e) {
			assertEquals(120, account.getBalance(), delta);
			assertTrue("Exception should be of type IllegalArgumentException.", e instanceof IllegalArgumentException);
		}
	}
	
	public void testWithdraw() {
		account.withdraw(20);
		assertEquals(80, account.getBalance(), delta);
		
		account.withdraw(80);
		assertEquals(0, account.getBalance(), delta);
	}
	
	public void testWithdrawNegative() {
		try {
			account.withdraw(-10);
			fail("Withdrawal of negative amount should throw an IllegalArgumentException.");
		}
		catch (Exception e) {
			assertEquals(100, account.getBalance(), delta);
			assertTrue("Exception should be of type IllegalArgumentException.", e instanceof IllegalArgumentException);
		}
	}
	
	public void testWithdrawTooLarge() {
		try {
			account.withdraw(120);
			fail("Withdrawals resulting in a negative balance should throw an IllegalArgumentException.");
		}
		catch (Exception e) {
			assertEquals(100, account.getBalance(), delta);
			assertTrue("Exception should be of type IllegalArgumentException.", e instanceof IllegalArgumentException);
		}
	}

	public void testAddInterest() {
		account.addInterest();
		assertEquals(105, account.getBalance(), delta);
		
		account = new Account(0, 5);
		account.addInterest();
		assertEquals(0, account.getBalance(), delta);
		
		account = new Account(100, 0);
		account.addInterest();
		assertEquals(100, account.getBalance(), delta);
	}
}
