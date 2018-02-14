package encapsulation;

public class LineEditor {
	//Declarations
	private String text;
	private int insertionIndex;
	
	
	//Constructor
	public LineEditor() {
		this.text = "";
	}
	
	
	//Validation
	public boolean isValidInsertionIndex(int insertionIndex) {
		return ((insertionIndex < 0)  ||  (insertionIndex > text.length())) ? false : true;
	}
	
	
	//Getters
	public String getText() { return text; }
	
	public int getInsertionIndex() { return insertionIndex; }
	
	
	//Setters
	public void setText(String text) {
		this.text = text;
		insertionIndex = text.length();
	}
	
	public void setInsertionIndex(int insertionIndex) throws IllegalArgumentException {
		if (!isValidInsertionIndex(insertionIndex))
			throw new IllegalArgumentException("Invalid insertionIndex.");
		
		this.insertionIndex = insertionIndex;
	}
	
	
	//Actions
	public void insertString(String s) {
		setText(text.substring(0, insertionIndex) + s + text.substring(insertionIndex));
	}
	
	public void left() { if (isValidInsertionIndex(insertionIndex - 1)) insertionIndex--; }
	
	public void right() { if (isValidInsertionIndex(insertionIndex + 1)) insertionIndex++; }

	public void deleteLeft() {
		if (isValidInsertionIndex(insertionIndex - 1))
			setText(text.substring(0, insertionIndex - 1) + text.substring(insertionIndex));
	}

	public void deleteRight() {
		if (isValidInsertionIndex(insertionIndex + 1))
			setText(text.substring(0, insertionIndex) + text.substring(insertionIndex + 1));
	}
	
	
//	public void left() throws IllegalStateException {
//		if (!isValidInsertionIndex(insertionIndex - 1)) 
//			throw new IllegalStateException("Invalid insertionIndex for left().");
//		
//		setInsertionIndex(insertionIndex - 1);
//	}
//	
//	public void right() throws IllegalStateException {
//		if (!isValidInsertionIndex(insertionIndex + 1)) 
//			throw new IllegalStateException("Invalid insertionIndex for right().");
//		
//		setInsertionIndex(insertionIndex + 1);
//	}
//
//	public void deleteLeft() throws IllegalStateException {
//		if (!isValidInsertionIndex(insertionIndex - 1)) 
//			throw new IllegalStateException("Invalid insertionIndex for deleteLeft().");
//		
//		setText(text.substring(0, insertionIndex - 1) + text.substring(insertionIndex));
//	}
//	
//	public void deleteRight() throws IllegalStateException {
//		if (!isValidInsertionIndex(insertionIndex + 1)) 
//			throw new IllegalStateException("Invalid insertionIndex for deleteRight().");
//		
//		setText(text.substring(0, insertionIndex) + text.substring(insertionIndex + 1));
//	}
}
