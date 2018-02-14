package encapsulation;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

public class PersonApplication extends Application {
	
	@Override
	public void start(Stage primaryStage) throws Exception {
	    Parent root = FXMLLoader.load(getClass().getResource("Person.fxml"));
	    Image titleIcon = new Image("http://www.freeiconspng.com/uploads/blank-face-person-icon-7.png");

	    primaryStage.getIcons().add(titleIcon);
	    primaryStage.setTitle("Person");
	    primaryStage.setScene(new Scene(root));
	    primaryStage.show();
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
