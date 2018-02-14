package objectstructures;

public class Partner {
	private Partner partner;
	private final String name;

	
	public Partner(String name) {
		this.partner = null;
		this.name = name;
	}
	
	public String getName() { return name; }
	
	public Partner getPartner() { return partner; }
	
	public void setPartner(Partner partner) {
		//Remove partnerships from 'this'
		removePartners(this);
		
		//Remove connections from 'partner'
		removePartners(partner);
		
		//Establish new partnership
		if (partner != null) {
			this.partner = partner;	
			this.partner.partner = this;			
		}
	}
	
	public void removePartners(Partner partner) {	
		//Break if null pointer
		if (partner == null) return;
		
		//Remove existing partnerships
		if (partner.getPartner() != null) {
			Partner oldPartner = partner.getPartner();
			partner.partner = null;
			removePartners(oldPartner);
		}
	}
	
	public String toString() {
		return String.format("%s [Name: %s, Partner: %s]", 
				getClass().getSimpleName(), name, (partner != null) ? partner.getName(): "null");
	}
}
