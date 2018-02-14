package stateandbehavior;

public class LineEditor {
	String text;
	int insertionIndex;
	
	
	public LineEditor() {
		this.text = "";
	}

	public String getText() {
		return text;
	}
	
	public void setText(String text) {
		this.text = text;
		this.insertionIndex = 0;
	}
	
	public int getInsertionIndex() {		
		return insertionIndex;
	}
	
	public void setInsertionIndex(int insertionIndex) {
		if (insertionIndex < 0) 
			this.insertionIndex = 0;
		else if (insertionIndex > text.length()) 
			this.insertionIndex = text.length();
		else 
			this.insertionIndex = insertionIndex;
	}
	
	public void left() {
		setInsertionIndex(insertionIndex - 1);
	}
	
	public void right() {
		setInsertionIndex(insertionIndex + 1);
	}
	
	public void insertString(String s) {
		text = text.substring(0, insertionIndex) + s + text.substring(insertionIndex);
		insertionIndex += s.length();
	}
	
	public void deleteLeft() {
		if (insertionIndex > 0) {
			text = text.substring(0, insertionIndex - 1) + text.substring(insertionIndex);
			setInsertionIndex(insertionIndex - 1);
		} else {
			System.out.println(String.format("Unable to delete character, non-positive index (\"%s\").", this));
		}
	}
	public void deleteRight() {
		if (insertionIndex < (text.length())) {
			text = text.substring(0, insertionIndex) + text.substring(insertionIndex + 1);
		} else {
			System.out.println(String.format("Unable to delete character, too high index (\"%s\").", this));
		}
	}
	
	@Override
	public String toString() {
		return text.substring(0, insertionIndex) + "|" + text.substring(insertionIndex);
	}

	public static void main(String[] args) {
		LineEditor myEdit = new LineEditor();
		
		myEdit.setText("Java");
		System.out.println(myEdit.toString());

		myEdit.right();
		System.out.println(myEdit.toString());

		myEdit.deleteLeft();
		System.out.println(myEdit.toString());
	}
}
