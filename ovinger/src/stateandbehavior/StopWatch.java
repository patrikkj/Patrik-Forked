package stateandbehavior;

public class StopWatch {

	int ticks, time, lapTime, lastLapTime;
	boolean started, stopped;
	
	
	public void tick(int ticks) {
		this.time += ((started && !stopped) ? ticks : 0);
		this.ticks += ticks;
		this.lapTime += ((started && !stopped) ? ticks : 0);
	}
	
	public void start() {
		started = true;
	}
	
	public void lap() {
		if (started && !stopped) {
			lastLapTime = lapTime;
			lapTime = 0;
		}
	}
	
	public void stop() {
		if (started && !stopped) {
			lap();
			stopped = true;
		}
	}
		
	public boolean isStarted() {
		return started;
	}
	
	public boolean isStopped() {
		return stopped;
	}
	
	public int getTicks() {
		return ticks;
	}
	
	public int getTime() {
		return (started) ? time : -1;
	}
	
	public int getLapTime() {
		return (started) ? lapTime : -1;
	}
	
	public int getLastLapTime() {
		return (lastLapTime != 0) ? lastLapTime : -1;
	}
		
	@Override
	public String toString() {
		return String.format("[%s: ticks = %s, time = %s, lapTime = %s, lastLapTime = %s, started = %s, stopped = %s]",
				this.getClass().getSimpleName(),
				ticks,
				time,
				lapTime,
				lastLapTime,
				started,
				stopped);
	}
	
	
	public static void main(String[] args) {
		StopWatch stopWatch = new StopWatch();
		System.out.println(stopWatch.toString());

		stopWatch.tick(20);
		stopWatch.start();
		stopWatch.tick(22);
		stopWatch.lap();
		stopWatch.tick(10);
		stopWatch.stop();
		
		System.out.println(stopWatch.toString());
	}
}
