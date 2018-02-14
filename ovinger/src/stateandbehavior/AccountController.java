package stateandbehavior;

import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.text.Text;

public class AccountController {
	
	Account acc1 = new Account();
	
	@FXML TextField depositInput;
	@FXML TextField interestRateInput;
	@FXML Text balanceOutput;
	@FXML Text interestRateOutput;
	@FXML Label statusLabelLeft;
	@FXML Label statusLabelRight;
	
	@FXML private void initialize() { update(); }
	
	@FXML private void update() {
		balanceOutput.setText(String.valueOf(acc1.getBalance()) + " $");
		interestRateOutput.setText(String.valueOf(acc1.getInterestRate()) + " %");
		
		depositInput.setText("");
		interestRateInput.setText("");
		
		statusLabelLeft.setText(acc1.toString());
		}
	
	@FXML private void depositButtonClick() {
		double balance = Double.parseDouble(depositInput.getText());
		acc1.deposit(balance);
		update();
	}
	
	@FXML private void interestRateButtonClick() {
		double interestRate = Double.parseDouble(interestRateInput.getText());
		acc1.setInterestRate(interestRate);
		update();
	}
	
	@FXML private void addInterestButtonClick() {
		acc1.addInterest();
		
		update();
	}
	
	
	
	
}
