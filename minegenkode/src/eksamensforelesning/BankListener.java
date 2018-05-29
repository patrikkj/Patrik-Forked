package eksamensforelesning;

public interface BankListener {
	public void onTransaction(Account account, int amount);
}
