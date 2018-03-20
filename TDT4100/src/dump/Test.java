package dump;

import java.util.ArrayList;
import java.util.List;


public class Test {
	public static void main(String[] args) {
		List<Object> mylist = new ArrayList<>();
		mylist.add("Heiaa");
		mylist.add("Heiaa");
		mylist.add("Heiaa");
		mylist.add("adsd");
		mylist.add("Heiaa");
		
		mylist.forEach(a->System.out.println(a));
	}
}
