package interfaces.twitter;

import java.util.Comparator;

public class FollowersCountComparator implements Comparator<TwitterAccount> {
	@Override
	public int compare(TwitterAccount acc1, TwitterAccount acc2) {
		return acc1.getFollowerCount() - acc2.getFollowerCount();
	}
}
