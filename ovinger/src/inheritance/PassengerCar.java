package inheritance;

public class PassengerCar extends TrainCar {
	private int passengerCount;
	private final int PASSENGER_WEIGHT = 80;
	
	
	public PassengerCar(int deadWeight, int passengerCount) {
		super(deadWeight);
		this.passengerCount = passengerCount;
	}
	
	
	public int getPassengerCount() {
		return passengerCount;
	}
	
	public void setPassengerCount(int passengerCount) {
		this.passengerCount = passengerCount;
	}

	@Override
	public int getTotalWeight() {
		return getDeadWeight() + passengerCount * PASSENGER_WEIGHT;
	}


	
	@Override
	public String toString() {
		return String.format("PassengerCar [passengerCount=%s]", passengerCount);
	}

}
