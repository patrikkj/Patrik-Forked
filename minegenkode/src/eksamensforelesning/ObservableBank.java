package eksamensforelesning;

public interface ObservableBank {
	public void addListener(BankListener listener);
	public void removeListener(BankListener listener);
	public void fireTransactionHappend(Account account, int amount);
}
