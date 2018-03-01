package objectstructures;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

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
	
	public int getFollowersCount() {
		return followers.size();
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
		account.followers.add(this);
	}
	
	public void unfollow(TwitterAccount account) {
		//Remove account from list of following accounts
		following.remove(account);
		
		//Additional method to handle followers in Øv. 6
		account.followers.remove(this);
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
			//Executed if the tweet parent is not the original owner
			originalTweet.getOwner().retweetCount++;
		else 
			//Executed if this is the first retweet in the chain
			tweet.getOwner().retweetCount++;
	}
	
	
	//Other
	public static void main(String[] args) {
		
	}
}
