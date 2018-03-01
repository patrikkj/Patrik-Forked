package encapsulation;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import javafx.fxml.FXML;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;

public class PersonController {
	//Declarations - default access modifiers
	int listViewIndex;
	Exception activeException;
	Person activePerson;
	ArrayList<Person> personArray;
	
	
	//ListView view
	@FXML ListView<String> listView;
	//Edit view
	@FXML TextField nameTextField;
	@FXML TextField emailTextField;
	@FXML DatePicker datePicker;
	@FXML ChoiceBox<String> genderChoiceBox;
	//Details view
	@FXML Label nameLabel;
	@FXML Label emailLabel;
	@FXML Label birthdayLabel;
	@FXML Label genderLabel;
	//StatusBar
	@FXML Label statusLabelLeft;
	@FXML Label statusLabelRight;
	
	
	@SuppressWarnings("deprecation")
	@FXML private void initialize() {
		//Initialize object array
		personArray = new ArrayList<Person>();

		//Set up default person
		Person defaultPerson = new Person();
		defaultPerson.setName("Patrik Kjarran");
		defaultPerson.setEmail("patrik.kjarran@hotmail.no");
		defaultPerson.setBirthday(new Date(97, 10, 24));  //Why is month 0-indexed??!
		defaultPerson.setGender('M');
		defaultPerson.setSSN("24119735315");
		personArray.add(defaultPerson);
		activePerson = personArray.get(0);
				
		//Initialize ChoiceBox (genderChoiceBox)
		genderChoiceBox.getItems().addAll("Male", "Female");

		update();
	}
	
	@FXML private void update() {
		//ListView
		listView.getItems().setAll(getNames(personArray));
		listView.getSelectionModel().select(listViewIndex);
		
		//Edit
		nameTextField.setText("");
		emailTextField.setText("");
		datePicker.getEditor().clear();
		genderChoiceBox.setValue(activePerson.getSimpleGender());
		
		//Details
		nameLabel.setText((activePerson.getSimpleName() != null) ? activePerson.getSimpleName() : "---");
		emailLabel.setText((activePerson.getSimpleEmail() != null) ? activePerson.getSimpleEmail() : "---");
		birthdayLabel.setText((activePerson.getSimpleBirthday() != null) ? activePerson.getSimpleBirthday() : "---");
		genderLabel.setText((activePerson.getSimpleGender() != null) ? activePerson.getSimpleGender() : "---");
		
		//StatusBar
		statusLabelLeft.setText(activePerson.toString());
		statusLabelRight.setText((activeException != null) ? activeException.toString() : "");
		if (activeException != null) System.out.println(activeException.toString());
		activeException = null;
	}
	
	
	@FXML private void nameButtonClicked() {
		String name = nameTextField.getText();
		try {
			activePerson.setName(name);
		} catch (Exception IllegalArgumentException) {
			activeException = IllegalArgumentException;
		}
		
		update();
	}
	
	@FXML private void emailButtonClicked() {
		String email = emailTextField.getText();
		try {
			activePerson.setEmail(email);
		} catch (Exception IllegalArgumentException) {
			activeException = IllegalArgumentException;
		}
		
		update();
	}
	
	@FXML private void birthdayButtonClicked() {
		String rawEditorText;
		LocalDate editorLocalDate;
		
		try {
			rawEditorText = datePicker.getEditor().getText();
			editorLocalDate = parseDate(rawEditorText);
		} catch (Exception e) {
			activeException = e;
			update();
			return;
		}
			
		System.out.println("Editor (raw string): " + datePicker.getEditor().getText());	
		System.out.println("Editor (parsed string): " + editorLocalDate);
		
		datePicker.setValue(editorLocalDate);
		Date birthday = java.sql.Date.valueOf(datePicker.getValue());
		
		try {
			activePerson.setBirthday(birthday);
		} catch (Exception IllegalArgumentException) {
			activeException = IllegalArgumentException;
		}
		
		update();
	}
	
	@FXML private void birthdayEnterPressed(KeyEvent event) {
		if(event.getCode().equals(KeyCode.ENTER)) birthdayButtonClicked();
	}
		
	@FXML private void genderButtonClicked() {
		String gender = genderChoiceBox.getValue();
		try {
			activePerson.setGender(gender.charAt(0));
		} catch (Exception IllegalArgumentException) {
			activeException = IllegalArgumentException;
		}
		
		update();
	}
	
	@FXML private void newPersonClicked() {
		personArray.add(new Person());
		
		update();
	}
	
	@FXML private void listViewClicked() {
		listViewIndex = listView.getSelectionModel().getSelectedIndex();
		
		if (listViewIndex != -1)
			activePerson = personArray.get(listViewIndex);
		
		System.out.println(String.format("listViewIndex = %s, listViewItem = \"%s\"", 
				listViewIndex, listView.getSelectionModel().getSelectedItem()));
		
		update();
	}
	
	
	//Returns an ArrayList of all names from ArrayList<Person>
	private ArrayList<String> getNames(ArrayList<Person> personArray) {
		ArrayList<String> outputArray = new ArrayList<String>();
		for (Person p : personArray) {
			String pName = p.getName();
			outputArray.add((pName != null) ? pName : "New Person");
		}
		return outputArray;
	}
		
	//Parser from String "DD.MM.YYYY" to corresponding LocalDate object.
	private LocalDate parseDate(String dateString) {
		String[] dateArray = dateString.split("\\.");
		String newDateString = String.format("%s-%s-%s", dateArray[2], dateArray[1], dateArray[0]);
		return java.time.LocalDate.parse(newDateString);
	}
	
}	
