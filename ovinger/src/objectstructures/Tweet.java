package objectstructures;

public class Tweet {
	//All tweets
	private String text;
	private TwitterAccount owner;
	
	//Retweets
	private Tweet parentTweet;
	private int retweetCount;
	
	
	//Constructors
	//Original tweet
	public Tweet(TwitterAccount account, String text) {
		this.owner = account;
		this.text = text;
	}
	
	//Retweet
	public Tweet(TwitterAccount account, Tweet parentTweet) {
		this.owner = account;
		this.parentTweet = parentTweet;
		this.text = parentTweet.getText();
		
		//If original tweet and retweet has same owner, throw exception
		if (getOriginalTweet().getOwner() == this.getOwner())
			throw new IllegalStateException("Sorry, you cannot retweet your own tweets");
		
		//Increment retweet counter
		getOriginalTweet().retweetCount++;
	}
	
	
	//Getters
	public String getText() {
		return text;
	}
	
	public TwitterAccount getOwner() {
		return owner;
	}
	
	public Tweet getOriginalTweet() {
		//Check if tweet is original tweet
		if (parentTweet == null) return null;
		
		//Recursively get parent tweet
		if (parentTweet.parentTweet != null)
			return parentTweet.getOriginalTweet();
		
		return parentTweet;
	}
	
	public int getRetweetCount() {
		return retweetCount;
	}

	
	
	
	
	
}
