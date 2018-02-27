package interfaces.twitter;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

public class TwitterAccount {
	//Instance variables
	private final String username;
	private HashSet<TwitterAccount> following;
	private HashSet<TwitterAccount> followers;
	private List<Tweet> tweetList;
	private int retweetCount;
	
	
	//Constructor
	public TwitterAccount(String username) {
		this.username = username;
		
		//Initialize collections
		following = new HashSet<TwitterAccount>();
		followers = new HashSet<TwitterAccount>();
		tweetList = new ArrayList<Tweet>();
	}
	
	
	//Getters
	public String getUserName() {
		return username;
	}
	
	public Tweet getTweet(int i) {
		//Validate tweet index
		if (i < 1  ||  i > tweetList.size())
			throw new IndexOutOfBoundsException("Tweet index is not within list boundaries. Index: " + i);
		
		return tweetList.get(tweetList.size() - i);
	}
	
	public int getTweetCount() {
		return tweetList.size();
	}
	
	public int getRetweetCount() {
		return retweetCount;
	}
	
	public int getFollowerCount() {
		return followers.size();
	}
	
	public Collection<TwitterAccount> getFollowers(Comparator<TwitterAccount> comparator) {
		// Return original list 
		if (comparator == null) return followers;
		
		//
		return followers.stream().sorted(comparator).collect(Collectors.toList());
	}
	
	public boolean isFollowing(TwitterAccount account) {
		//If HashSet contains account, return true, else false
		return following.contains(account);
	}
	
	public boolean isFollowedBy(TwitterAccount account) {
		return account.isFollowing(this);
	}
	
	
	//Actions
	public void follow(TwitterAccount account) {
		//Add account to following list
		following.add(account);
		
		//Additional method to handle followers in Øv. 6
		account.addFollower(this);
	}
	
	public void unfollow(TwitterAccount account) {
		//Remove account from list of following accounts
		following.remove(account);
		
		//Additional method to handle followers in Øv. 6
		account.removeFollower(this);
	}
	
	//Additional method to handle followers in Øv. 6
	public void addFollower(TwitterAccount account) {
		followers.add(account);
	}
	
	//Additional method to handle followers in Øv. 6
	public void removeFollower(TwitterAccount account) {
		followers.remove(account);
	}
	
	public void tweet(String text) {
		//Add new tweet to tweetList
		tweetList.add(new Tweet(this, text));
	}
	
	public void retweet(Tweet tweet) {
		//Retweet with tweet as parent
		tweetList.add(new Tweet(this, tweet));
		
		//Root tweet
		Tweet originalTweet = tweet.getOriginalTweet();
		
		//Increment retweet count of original tweet owner
		if (originalTweet != null)
			//If the tweet parent is not the original owner
			originalTweet.getOwner().retweetCount++;
		else 
			//If this is the first retweet in the chain
			tweet.getOwner().retweetCount++;
	}
	
	
	//Other
	public static void main(String[] args) {
		TwitterAccount acc1 = new TwitterAccount("Acc1");
		TwitterAccount acc2 = new TwitterAccount("Acc1");
		TwitterAccount acc3 = new TwitterAccount("Acc1");
		
		acc1.follow(acc3);
		acc2.follow(acc3);
		
		System.out.println(acc1.getFollowerCount());
		System.out.println(acc2.getFollowerCount());
		System.out.println(acc3.getFollowerCount());
	}
}
