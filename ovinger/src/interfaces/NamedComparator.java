package interfaces;

import java.util.Comparator;

public class NamedComparator implements Comparator<Named> {
	@Override
	public int compare(Named name1, Named name2) {
		// Compare family names
		int familyNameEval = name1.getFamilyName().compareTo(name2.getFamilyName());
		if (familyNameEval != 0)
			return familyNameEval;
		
		// If family names match, compare given names
		return name1.getGivenName().compareTo(name2.getGivenName());
	}
}
