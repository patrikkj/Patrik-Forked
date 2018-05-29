package eksamen2016;
public class Family {
   /**
    * Adds a Person as a new family member
    * @param person the Person to add
    */
   public void addMember(Person person) {
      ...
   }
 
   /**
    * Finds a member with the given name
    * @param name
    * @return the Person in this Family with the provided name
    */
 
   public Person findMember(String name) {
      ...
   }
 
   //
 
   /**
    * Writes the contents of this Family to the OutputStream,
    * so it can be reconstructed using load.
    * @param out
    */
   public void save(OutputStream out) ... {
      ...
   }
 
   /**
    * Helper method that splits a line into a list of tokens,
    * either words or quoted names (quotes are removed).
    * @param line – the string to tokenize
    */
   ... List<String> tokenize(String line) {
      ... no need to implement this method ...
   }
 
   /**
    * Loads contents from the provided InputStream into this Family.
    * @param in
    */
   public void load(InputStream in) ... {
      ...
   }
}