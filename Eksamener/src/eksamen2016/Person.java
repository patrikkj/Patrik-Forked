package eksamen2016;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.stream.Collectors;

public class Person implements Iterable<Person> {

	private final String name;
	private Gender gender;
	private Person mother, father;
	private Set<Person> children = new HashSet<>();

	public Person(String name) {
		this(name, null);
	}

	public Person(String name, Gender gender) {
		this.name = name;
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public Gender getGender() {
		return gender;
	}

	public Person getMother() {
		return mother;
	}

	public Person getFather() {
		return father;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}
	
	public void setMother(Person mother) {
		this.mother = mother;
	}
	
	public void setFather(Person father) {
		this.father = father;
	}

	/**
	 * @return the number of children of this Person
	 */
	public int getChildCount() {
		return children.size();
	}

	/**
	 * @param child
	 * @return if this Person has the provided Person as a child
	 */
	public boolean hasChild(Person child) {
		return children.contains(child);
	}

	/**
	 * Returns all children of this Person with the provided Gender. If gender is
	 * null, all children are returned. Can be used to get all daughters or sons of
	 * a person.
	 * 
	 * @param gender
	 */
	public Collection<Person> getChildren(Gender gender) {
		if (gender == null)
			return new ArrayList<>(children);

		return children.stream()
				.filter(e -> e.getGender() == gender)
				.collect(Collectors.toList());
	}

	/**
    * Adds the provided Person as a child of this Person.
    * Also sets the child's father or mother to this Person,
    * depending on this Person's gender.
    * To ensure consistency, if the provided Person already
    * has a parent of that gender,
    * it is removed as a child of that parent.
    * @param child
    */
   public void addChild(Person child) {
	   // Validate child
	   if (child == null) return;
	   
	   // Make sure child was not previously present
	   if (children.add(child)) {
		   
		   if (gender == Gender.MALE) {
			   // Remove potential father-child link
			   Person father = child.getFather();
			   if (father != null) 
				   father.removeChild(child);
			   
			   // Set new father
			   child.setFather(this);
		   }
		   
		   else if (gender == Gender.FEMALE) {
			   // Remove potential mother-child link
			   Person mother = child.getMother();
			   if (mother != null) 
				   mother.removeChild(child);
			   
			   // Set new mother
			   child.setMother(this);
		   }
	   }
   }
   
   public void removeChild(Person child) {
	   children.remove(child);
   }

	@Override
	public Iterator<Person> iterator() {
		return children.iterator();
	}
}