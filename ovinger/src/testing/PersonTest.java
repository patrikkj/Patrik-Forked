package testing;

import javafx.scene.input.PickResult;
import junit.framework.TestCase;

public class PersonTest extends TestCase {
	private Person p1, p2, p3, p4;
	
	private void init_person() {
		p1 = new Person("Ola", 'M');
		p2 = new Person("Per", 'M');
		p3 = new Person("Kari", 'F');
		p4 = new Person("Thea", 'F');
	}
	
	@Override
	protected void setUp() throws Exception {
		super.setUp();
		init_person();
	}
	
	public void testConstructor() {
		assertEquals("Ola", p1.getName());
		assertEquals('M', p1.getGender());
		
		assertEquals("Per", p2.getName());
		assertEquals('M', p2.getGender());
		
		assertEquals("Kari", p3.getName());
		assertEquals('F', p3.getGender());
		
		assertEquals("Thea", p4.getName());
		assertEquals('F', p4.getGender());
		
		try {
			p1 = new Person("Ola", 'X');
			fail("'X' should not be a valid gender.");
		}
		catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after new Person (\"Ola\", 'X').", e instanceof IllegalArgumentException);
			assertEquals('M', p1.getGender());
		}
	}
	
	public void testConstructorFinal() {
		
	}
}
