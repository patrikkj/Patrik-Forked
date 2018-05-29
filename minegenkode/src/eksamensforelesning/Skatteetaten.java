package eksamensforelesning;

public class Skatteetaten implements BankListener {
	public Skatteetaten() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public void onTransaction(Account account, int amount) {
		System.out.println("hei");
	}

}
