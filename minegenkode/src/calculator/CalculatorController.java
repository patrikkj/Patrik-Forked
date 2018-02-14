package calculator;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;

public class CalculatorController {
	private Calculator calc;
	
    @FXML private Label historyLabel;
    @FXML private Label valueLabel;

    
    @FXML private void initialize() {
    	//Initialize default Calculator object.
    	calc = new Calculator();
    	
    	//Initialize display
    	valueLabel.setText(calc.getMemoryText());
    	historyLabel.setText("");
    	
    	update();
    }
    
    @FXML private void update() {
    	//Update display
    	String displayText;
    	int sliceIndex;
    	
    	//Displays value in memory if text field is empty.
    	if (calc.getValueText().equals("")) 
        	displayText = calc.getMemoryText();
    	else 
        	displayText = calc.getValueText();

    	//Slices off decimal point from integer results.
    	if (displayText.endsWith(".0")) {
    		sliceIndex = displayText.lastIndexOf(".0");
    		displayText = displayText.substring(0, sliceIndex);
    	}
    	
    	valueLabel.setText(displayText);
    	System.out.println(calc);
    }
    
    
    @FXML private void handleClearButtonClick(ActionEvent event) {
    	//Clearing initializes a new calculator object.
    	initialize();
    }

    @FXML private void handleDotButtonClick() {
    	calc.performDot();
    	
    	update();
    }

    @FXML private void handleDigitButtonClick(ActionEvent event) {
    	//Determine source of method execution
    	Button digitButton = (Button) event.getSource();
    	char digitChar = digitButton.getText().charAt(0);
    	
    	calc.performDigit(digitChar);
    	
    	update();
    }

    @FXML private void handleEqualsButtonClick() {
    	calc.performEquals();
    	
    	update();
    }

    @FXML private void handleOperatorButtonClick(ActionEvent event) {
    	//Determine source of method execution
    	Button operatorButton = (Button) event.getSource();
    	char operatorChar = operatorButton.getText().charAt(0);
    	
    	calc.performOperator(operatorChar);
    	
    	update();
    }

    @FXML private void handleDeleteButtonClick(ActionEvent event) {
    	
    }
}
