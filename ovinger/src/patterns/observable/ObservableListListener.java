package patterns.observable;

public interface ObservableListListener<T> {
	public void listChanged(ObservableList<T> list, int index);
}
