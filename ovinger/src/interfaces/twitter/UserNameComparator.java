package interfaces.twitter;

import java.util.Comparator;

public class UserNameComparator implements Comparator<TwitterAccount> {
	@Override
	public int compare(TwitterAccount acc1, TwitterAccount acc2) {
		return acc1.getUserName().compareTo(acc2.getUserName());
	}
}
