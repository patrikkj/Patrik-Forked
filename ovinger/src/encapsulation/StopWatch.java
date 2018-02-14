package encapsulation;

public class StopWatch {
	//Declarations
	private int time, ticks, lapTime, lastLapTime;
	private boolean started, stopped;
	
	
	//Getters
	public int getTime() { return (started) ? time : -1; }
	
	public int getTicks() { return ticks; }
	
	public int getLapTime() { return (started) ? lapTime : -1; }
	
	public int getLastLapTime() { return (lastLapTime != 0) ? lastLapTime : -1; }
	
	public boolean isStarted() { return started; }
	
	public boolean isStopped() { return stopped; }
	
	
	//Actions
	public void tick(int ticks) throws IllegalArgumentException {
		if (ticks < 0) throw new IllegalArgumentException("Ticks cannot be negative.");
		
		this.ticks += ticks;
		this.time += (started && !stopped) ? ticks : 0;
		this.lapTime += (started && !stopped) ? ticks : 0;
	}
	
	public void start() throws IllegalStateException { 
		if (started || stopped) throw new IllegalStateException("StopWatch cannot be running nor stopped when starting.");
		
		started = true; 
	}
	
	public void lap() throws IllegalStateException {
		if (!started || stopped) throw new IllegalStateException("StopWatch must be running in order to take laps.");
			
		lastLapTime = lapTime;
		lapTime = 0;
	}
	
	public void stop() throws IllegalStateException {
		if (!started || stopped) throw new IllegalStateException("StopWatch must be running in order to stop.");
		
		lap();
		stopped = true;
	}
	
	
	//Others
	@Override
	public String toString() {
		return String.format("[%s:  time = %s, ticks = %s, lapTime = %s, lastLapTime = %s]", 
				this.getClass().getName(), time, ticks, lapTime, lastLapTime);
	}
}
