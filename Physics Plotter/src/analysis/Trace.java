package analysis;

import java.io.FileNotFoundException;
import java.time.Duration;
import java.time.Instant;

import functions.Differentiable;
import functions.PolySpline;

public class Trace {
	// Instance variables
	private Differentiable func;	//Interpolation (analysis.Interpolation)
	private double mass;			//Mass of rolling object
	private double c;				//Constant for calculating moment of inertia
	private double v0;				//Initial velocity
	private double x0;				//Initial x-coordinate
	private double step;			//Step size for numerical integration (Eulers' method)
	private double[] domain;		//Automatically assigned function domain
	
	// Constants
	public static final double C_SPHERE = 2d/5d, C_SPHERE_HOLLOW = 2d/3d;
	public static final double G_CONST = 9.81;
	
	
	// Constructor
	/**
	 * Creates a Trace object used for numerical analysis
	 * 
	 * @param func - Differentiable interpolation of track (analysis.Interpolation)
	 * @param mass - Mass of rolling object (kg)
	 * @param c - Constant for calculating moment of inertia (predefined in Trace.C_SHAPE)
	 * @param v0 - Initial velocity (m/s)
	 * @param x0 - Initial x-coordinate
	 * @param step - Step size for numerical integration (Eulers' method)
	 */
	public Trace(Differentiable func, double mass, double c, double v0, double x0, double step) {
		//Validate initial x-value
		if (x0 < func.getDomain()[0]  ||  x0 > func.getDomain()[1])
			throw new IllegalArgumentException("Initial x value must be within function domain.");
		
		//Validate mass
		if (mass <= 0)
			throw new IllegalArgumentException("Mass must be positive.");
		
		//Validate c
		if (c < 0)
			throw new IllegalArgumentException("Constant describing moment of inertia must be positive.");
		
		//Validate step size
		if (step == 0)
			throw new IllegalArgumentException("Step size cannot be 0.");

		//Assign values
		this.func = func;
		this.mass = mass;
		this.c = c;
		this.v0 = v0;
		this.x0 = x0;
		this.step = step;
		this.domain = func.getDomain();
	}
	
	
	/**Method for evaulating the acceleration at given value of x*/
	public double getAccel(double x) {
		// Evaluates the slope angle α(x) 
		double angle = func.slopeAngle(x);
		
		// Numerator: g * sin α(x)				| 
		double numerator = G_CONST * Math.sin(angle);
		
		// Formula for moment of inertia: I₀ = c * mr²
		// Denominator: 1 + I₀ / mr²
		// 			  = 1 + c * mr² / mr²		| insert I₀ = c * mr²	
		// 			  = 1 + c					| cancel terms
		double denominator = 1 + c;
		
		// Return acceleration
		return numerator / denominator;
	}
	
	/**Prints a trace of the experiment described by this Trace object using Eulers' Method twice*/
	public void eulerTrace() {
		// Set initial parameters
		double iterations = 0;
		double a = 0;
		double x = x0;
		double v = v0;
		
		//Used to compute simulation time
		System.out.println("Start");
		Instant start = Instant.now();
		
		//Iterate until track is complete (x has reached its' end value)
		while (x < domain[1]) {
			a = getAccel(x);
			
//			v = Integration.eulerMethod(v, a, step);
//			x = Integration.eulerMethod(x, Math.cos(func.slopeAngle(x)), step);
		
			v = v + a * step;
			x = x + v * Math.cos(func.slopeAngle(x)) * step;
			
			//Print iteration results
			System.out.printf("a = %.8f\t\t v = %.8f\t\t x = %.8f\n", a, v, x);
			
			//Increment iteration counter
			iterations++;
		}
		
		//Print final result
		System.out.println("\nFinished!");
		System.out.printf("\nIterations: %.0f\nStep size (seconds): %s\nTotal time (seconds): %s\n",
							iterations, step, iterations * step);
		
		//Print computation time
		Instant end = Instant.now();
		System.out.printf("\nComputation time: %.3f seconds\n", (double) Duration.between(start, end).toMillis()/1000);
	}
	
	
	public static void main(String[] args) throws FileNotFoundException {
		PolySpline polySpline = Interpolation.polynomialSplineInterpolation("C:\\Users\\Patrik\\git\\Patrik-Forked\\Physics Plotter\\src\\imports\\mass_A.txt");
		
		double minX = polySpline.getDomain()[0];		
		double mass = 100;							//Mass of rolling object
		double c = 0 ;					//Constant for calculating moment of inertia
		double v0 = 0;								//Initial velocity
		double x0 = minX;							//Initial x-coordinate
		double step = 0.0001;						//Step size for numerical integration (Eulers' method)
		
		//Initialize new experiment
		Trace experiment = new Trace(polySpline, mass, c, v0, x0, step);
		
		//Print a trace using Eulers' method
		experiment.eulerTrace();
		
//		System.out.println("\nEquations:");
//		System.out.println(experiment.func.toString(true, true));
	}
	
}
