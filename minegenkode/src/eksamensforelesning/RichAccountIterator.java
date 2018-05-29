package eksamensforelesning;

import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;

public class RichAccountIterator implements Iterator<Account>{

	private final List<Account> accounts;
	private final int amount;
	private int index;
	
	private Comparator<Account> c1 = (o1, o2) -> o1.getBalance() - o2.getBalance();
	
	// Constructor
	public RichAccountIterator(List<Account> accounts, int amount) {
		this.accounts = filterList(accounts);
		this.amount = amount;
	}
	

	// Methods
	@Override
	public boolean hasNext() {
		return index < accounts.size();
	}

	@Override
	public Account next() {
		if (hasNext())
			return accounts.get(index++);
		
		throw new NoSuchElementException("Iterator is exhausted");
	}
	
	// Helpers
	private List<Account> filterList(List<Account> list) {
		return list.stream()
				.filter(e -> e.getBalance() >= amount)
				.collect(Collectors.toList());
	}
}
