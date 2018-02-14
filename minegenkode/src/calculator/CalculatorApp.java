package calculator;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

public class CalculatorApp extends Application {
	
	@Override
	public void start(Stage primaryStage) throws Exception {
		Parent root = FXMLLoader.load(getClass().getResource("Calculator.fxml"));
		Image titleIcon = new Image("https://cdn2.iconfinder.com/data/icons/ios7-inspired-mac-icon-set/1024/Calculator_5122x.png");
		
		//Initialize application window
		primaryStage.setScene(new Scene(root));
		primaryStage.setTitle("Casio fx-9660GII");
		primaryStage.getIcons().add(titleIcon);
		primaryStage.show();
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
