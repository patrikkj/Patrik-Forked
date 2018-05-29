package eksamensforelesning;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class Bank implements Iterable<Account>, ObservableBank {
	private Map<Person, List<Account>> customers = new HashMap<>();
	private Set<BankListener> listeners = new HashSet<>();
	
	// Constructor
	public Bank() {
		// TODO Auto-generated constructor stub
	}
	

	// Getters & setters
	public int getTotalBalance() {
		return customers.values().stream()
//				.flatMap(e -> e.stream())
				.flatMap(List<Account>::stream)
				.mapToInt(Account::getBalance)
				.sum();
	}
	
	// Methods
	public void addAccount(Person person, Account account) {
		List<Account> accounts = customers.get(person);
		
		// If person is a new customer
		if (accounts == null)
			customers.put(person, Arrays.asList(account));

		// If account is not contained in list
		else if (!accounts.contains(account))
			accounts.add(account);
	}
	
	public void removeAccount(Person person, Account account) {
		List<Account> accounts = customers.get(person);
		
		// Remove entry if present
		if (accounts != null)
			accounts.remove(account);
	}
	
	public void deposit(Account account, int amount) {
		if (isCustomer(account)) {
			account.deposit(amount);
			fireTransactionHappend(account, amount);
		}
	}
	
	public void withdraw(Account account, int amount) {
		if (isCustomer(account)) {
			account.withdraw(amount);
			fireTransactionHappend(account, amount);
		}
	}
	
	public List<Account> getAccounts(Person person) {
		return customers.get(person);
	}


	
	@Override
	public Iterator<Account> iterator() {
		return customers.values()
				.stream()
				.flatMap(e -> e.stream())
				.iterator();
	}


	
	
	@Override
	public void addListener(BankListener listener) {
		listeners.add(listener);
	}


	
	@Override
	public void removeListener(BankListener listener) {
		listeners.remove(listener);
	}
	


	@Override
	public void fireTransactionHappend(Account account, int amount) {
		listeners.forEach(e -> e.onTransaction(account, amount));
	}
	
	private boolean isCustomer(Account account) {
		return customers.values().stream().
				flatMap(e -> e.stream())
				.anyMatch(e -> e == account);
	}
	
}
