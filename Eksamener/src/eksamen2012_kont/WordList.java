package eksamen2012_kont;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;
import java.util.stream.Collectors;

public class WordList {
	private Set<String> words = new HashSet<String>();
	
	public boolean containsWord(String word) {
		return words.contains(word);
	}
	
	public Collection<String> getWordsStartingWith(String prefix){
		return words.stream().filter(w -> w.startsWith(prefix)).collect(Collectors.toList());
	}
	
	public boolean addWord(String word) {
		return words.add(word.trim());
	}
	
	public boolean removeWord(String word) {
		return words.remove(word);
	}
	
	public boolean removeWordsStartingWith(String prefix) {
		return words.removeAll(getWordsStartingWith(prefix));
	}
	
	public static String getPrefix(String word, String suffix) {
		if (!word.endsWith(suffix))
			return null;
					
		return word.substring(0, word.indexOf(suffix));
	}
	
	public boolean hasSuffixes(String prefix, List<String> suffixes) {
		Collection<String> matches = getWordsStartingWith(prefix);
		
		return suffixes.stream()
				.allMatch(
						s -> matches.stream().anyMatch(w -> w.endsWith(s))
						);
	}
	
	public List<String> findPrefixes(List<String> suffixes) {
		// Temporary collection of prefixes
		Collection<String> prefixes = new ArrayList<>();
		
		for (String word : words) {
			// Find matching suffix
			String suffix = suffixes.stream()
					.filter(suf -> word.endsWith(suf))
					.findFirst()
					.orElse(null);
			
			// Continue if no match was found
			if (suffix == null) continue;
			
			// Get corresponding prefix, add to prefixes
			prefixes.add(getPrefix(word, suffix));
		}
		
		// Remove prefixes that does not match all suffixes
		return prefixes.stream()
				.filter(prefix -> hasSuffixes(prefix, suffixes))
				.distinct()
				.collect(Collectors.toList());
	}
	
	public void read() throws FileNotFoundException {
//		Scanner scanner = new Scanner(input);
//		
//		while (scanner.hasNextLine()) {
//			// abc - 123, 432 # hei
//			String line = scanner.nextLine();
//			
//			// abc-123,432
//			line = line.substring(0, line.indexOf('#')).replaceAll(" ", "");
//			
//			if (!line.contains("-")) {
//				addWord(line);
//				continue;
//			}
//				
//			int hyphenIndex = line.indexOf('-');
//			String prefix = line.substring(0, hyphenIndex);
//			String suffix = line.substring(hyphenIndex);
//			
//			if (!suffix.contains(",")) {
//				addWord(prefix + suffix);
//				continue;
//			}
//
//			String[] suffixes = suffix.split(",");
//			for (String s : suffixes)
//				addWord(prefix + s);
//		}
//		
//		scanner.close();
	}
	
	
	
	
	
	
	public static void main(String[] args) {
		WordList ordbok = new WordList();
		ordbok.addWord("tjue-en");
		ordbok.addWord("tjue-to");
		ordbok.addWord("tretti-en");
		ordbok.addWord("tretti-to");
		ordbok.addWord("førti-en");
		List<String> suffixes = Arrays.asList(new String[] {"en","to"});
		System.out.println(ordbok.findPrefixes(suffixes));
	}
	
}
