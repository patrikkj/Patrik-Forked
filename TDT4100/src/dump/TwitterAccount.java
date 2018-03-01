package objectstructures;

import java.util.List;
import java.util.ArrayList;

public class TwitterAccount {
	
private String username;
private List<TwitterAccount> followers = new ArrayList<>();
private List<TwitterAccount> followedAccounts = new ArrayList<>();
private List<Tweet> tweets = new ArrayList<>();
private List<Tweet> retweets = new ArrayList<>();




public TwitterAccount(String username) {
	this.username = username;
	this.followedAccounts = new ArrayList<TwitterAccount>();
	this.followers = new ArrayList<TwitterAccount>();
	this.tweets = new ArrayList<Tweet>();
	this.retweets=new ArrayList<Tweet>();
}
public String getUserName() {
	return this.username;
}
public int getTweetCount() {
	return this.tweets.size();
}
public int getRetweetCount() {
	return retweets.size();
}
public Tweet getTweet(int i) {
	return tweets.get(tweets.size()-i);
}
public void tweet(String tweet) {
	Tweet tvitre = new Tweet(this, tweet);
	this.tweets.add(tvitre);
}
public void retweet(Tweet tweet) {
	Tweet kvakk = new Tweet(this, tweet);
	this.retweets.add(kvakk);
	this.tweets.add(kvakk);
}
public void follow(TwitterAccount account) {
	if(this == account || isFollowing(this) ) {
		throw new IllegalArgumentException("Cannot follow same account twice.");
	}
	this.followedAccounts.add(account);
	account.followers.add(this);
}
public void unfollow(TwitterAccount account) {
	if(this == account || isFollowedBy(this) ) {
		throw new IllegalArgumentException("Cannot follow no one");
	}
	this.followedAccounts.remove(account);
	account.followers.remove(this);
}
public boolean isFollowing(TwitterAccount account) {
	if(this.followedAccounts.contains(account)) {
		return true;
	}
	return false;
}
public boolean isFollowedBy(TwitterAccount account) {
	if(this.followers.contains(account)) {
		return true;
	}
	return false;
}

}
