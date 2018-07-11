package eksamen2012_kont;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.*;

public class DelegatingWordList implements Words {

      private Words words1, words2;

      public DelegatingWordList(Words words1, Words words2) {

            this.words1 = words1;

            this.words2 = words2;

      }

	@Override
	public boolean containsWord(String word) {
		return words1.containsWord(word)  ||  words2.containsWord(word);
	}

	@Override
	public Collection<String> getWordsStartingWith(String prefix) {
		return Stream.concat(
				words1.getWordsStartingWith(prefix).stream(), 
				words2.getWordsStartingWith(prefix).stream())
				.collect(Collectors.toSet());
	}

	@Override
	public boolean addWord(String word) {
		return words1.addWord(word) | words2.addWord(word);
	}

	@Override
	public boolean removeWord(String word) {
		return words1.addWord(word) | words2.addWord(word);
	}
}
