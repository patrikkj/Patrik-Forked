package inheritance;

import java.util.HashSet;
import java.util.stream.Collectors;

public class Train {
	HashSet<TrainCar> trainCars = new HashSet<>();
	
	
	public void addTrainCar(TrainCar trainCar) {
		trainCars.add(trainCar);
	}
	
	public boolean contains(TrainCar trainCar) {
		return trainCars.contains(trainCar); 
	}
	
	public int getTotalWeight() {
		return trainCars.stream().mapToInt(TrainCar::getTotalWeight).sum();
	}
	
	public int getPassengerCount() {
		return trainCars.stream()
				.filter(e -> e instanceof PassengerCar)
				.map(e -> (PassengerCar) e)
				.mapToInt(PassengerCar::getPassengerCount)
				.sum();
	}
	
	public int getCargoWeight() {
		return trainCars.stream()
				.filter(e -> e instanceof CargoCar)
				.map(e -> (CargoCar) e)
				.mapToInt(CargoCar::getCargoWeight)
				.sum();
	}
	
	public String toString() {
		return trainCars.stream()
				.map(TrainCar::toString)
				.collect(Collectors.joining("\n", "Train: \n", ""));
	}
	
	public static void main(String[] args) {
		Train train = new Train();
		
		train.addTrainCar(new PassengerCar(1000, 20));
		train.addTrainCar(new PassengerCar(1200, 30));
		train.addTrainCar(new CargoCar(1200, 3000));
		
		System.out.println(train);
	}
}
