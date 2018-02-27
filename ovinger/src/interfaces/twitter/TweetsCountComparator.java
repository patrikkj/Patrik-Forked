package interfaces.twitter;

import java.util.Comparator;

public class TweetsCountComparator implements Comparator<TwitterAccount> {
	@Override
	public int compare(TwitterAccount acc1, TwitterAccount acc2) {
		return acc2.getTweetCount() - acc1.getTweetCount();
	}
	
}
