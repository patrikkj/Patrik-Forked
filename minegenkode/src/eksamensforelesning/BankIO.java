package eksamensforelesning;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Scanner;
import java.util.stream.Collectors;

public class BankIO {
	
	public void save(String filename, Collection<Account> accounts) throws FileNotFoundException {
		PrintWriter writer = new PrintWriter(filename);
		writer.print(parseAccounts(accounts));
		writer.flush();
		writer.close();
	}
	
	public Collection<Account> load(String filename) throws FileNotFoundException {
		// Temporary list
		Collection<Account> accounts = new ArrayList<>();
		
		// Read file
		Scanner scanner = new Scanner(new File(filename));
		while (scanner.hasNextLine())
			accounts.add(parseString(scanner.nextLine()));
		scanner.close();
		
		return accounts;
	}
	
	
	private String parseAccounts(Collection<Account> accounts) {
		return accounts.stream()
				.map(e -> String.format("%s:%s", e.getId(), e.getBalance()))
				.collect(Collectors.joining(System.lineSeparator()));
	}
	
	private Account parseString(String line) {
		// TODO
		return null;
	}
}

