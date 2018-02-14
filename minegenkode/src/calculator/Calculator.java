package calculator;

public class Calculator {
	//Instance variables
	private String valueText; 
	private String historyText;			
	private char operator;				//Current operator
	private double memory;				//Value stored in memory
	private boolean firstOperation;  	//Used to prevent memory update at first operation
	
	
	//Constructor
	public Calculator() {
		this.valueText = "";
		this.historyText = "";
		this.operator = '\0';
		this.firstOperation = true;
	}
	
	
	//Getters
	public String getMemoryText() { return String.valueOf(memory); }
	
	public String getValueText() { return valueText; }
	
	public String getHistoryText() { return historyText; }

	public double getMemory() { return memory; }

	public double getValue() { return Double.parseDouble(valueText); }
	
	public char getOperator() { return operator; }
	
	
	//Actions
	//Updates memory, assigns new operator and clears input text
	public void performOperator(char operator) {
		if (!firstOperation) {
			//Compute (can set 10200 to case '÷' if DivisionByZero)
			switch (getOperator()) {
			case '+': 
				memory += getValue();
				break;
			case '-': 
				memory -= getValue();
				break;
			case '*': 
				memory *= getValue();
				break;
			case '÷': 
				memory /= getValue();
				if (getValue() == 0) memory = 10200;
				break;
			}
		} else {
			memory = getValue();
		}
		
		//Assigns new operator
		this.operator = operator;
		
		//Clear input text
		clearValueText();
		
		//Used to prevent memory update at first operation
		firstOperation = false;
	}
	
	//Updates memory, resets operator and clears input text
	public void performEquals() {		
		//Compute (can set 10200 to case '/' if DivisionByZero)
		switch (getOperator()) {
		case '+': 
			memory += getValue();
			break;
		case '-': 
			memory -= getValue();
			break;
		case '*': 
			memory *= getValue();
			break;
		case '÷': 
			memory /= getValue();
			if (getValue() == 0) memory = 10200;
			break;
		}
		
		//Reset operator
		operator = '\0';
		
		//Clear input text
		clearValueText();
	}
	
	//Appends digit to input text
	public void performDigit(char digit) { 
		valueText += digit; 
	}
	
	//Appends dot to input text
	public void performDot() {
		valueText += '.';
	}
	
	
	//Other
	public void clearValueText() { valueText = ""; }	
	
	@Override
	public String toString() {
		return String.format("%s: [valueText = %s, memory = %s, operator = %s]", 
				getClass().getSimpleName(), getValueText(), getMemoryText(), getOperator());
	}
	
}
