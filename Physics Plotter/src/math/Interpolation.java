package math;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunctionLagrangeForm;


public class Interpolation {
	private boolean validateDataset(File filepath) {
		return true;
	}
	
	/*
	 * Returns an array of coefficients, corresponding to an N-1 degree polynomial interpolation.
	 * NOTE: Arrays of x and y coordinates must be of equal length
	 * Input parameters:
	 *  - double[] x: array of x coordinates in strictly increasing order
	 *  - double[] y: array of y coordinates at x coordinate specified in fist array
	 */
	public static double[] polynomialInterpolation(double[] x, double[] y) {
		//Validate array lengths
		if (x.length != y.length)
			throw new IllegalArgumentException("Arrays of x and y coordinates must be of equal length.");
		
		//Validate x coordinate array
		for (int i = 0; i < x.length - 1; i++)
			if (x[i] >= x[i+1])
				throw new IllegalArgumentException("Values in array of x coordinates must be strictly increasing.");
		
		PolynomialFunctionLagrangeForm rawPolynomial = new PolynomialFunctionLagrangeForm(x, y);
		
		return rawPolynomial.getCoefficients();
	}
	
	/*
	 * Returns an array of coefficients, corresponding to an N-1 degree polynomial interpolation.
	 * 
	 * update from here
	 * 
	 * NOTE: Arrays of x and y coordinates must be of equal length
	 * Input parameters:
	 *  - double[] x: array of x coordinates in strictly increasing order
	 *  - double[] y: array of y coordinates at x coordinate specified in fist array
	 */
	public static double[] polynomialInterpolation(File filepath) {
		return new double[1];
	}
	
	/*
	 * Parses tracking data from filepath to two arrays of doubles.
	 * Format: Trackers' default export (.txt)
	 * Output [double[] x, double[] y]:
	 *  - double[] x: array of x coordinates in strictly increasing order
	 *  - double[] y: array of y coordinates at x coordinate specified in fist array
	 */
	private static void parseFile(String filepath) throws FileNotFoundException {
		//Local variables
		Scanner input = new Scanner(new FileReader(filepath));
		StringBuilder stringBuilder = new StringBuilder();
		
		//Read file to StringBuilder object
		while (input.hasNext())
			stringBuilder.append(input.nextLine() + "\n");
		input.close();
		
		//Convert StringBuilder object to string
		String fileString = stringBuilder.toString();
		
		//Convert dataset to array of strings
		String[] fileArray = fileString.split("\n");
		
		for (int i = 2; i < fileArray.length; i++)
			System.out.println(fileArray[i]);
					//.split("\t")[2]);
		
	}
	
	public static void main(String[] args) throws FileNotFoundException {
		parseFile("C:\\Users\\Patrik\\git\\Patrik-Forked\\Physics Plotter\\src\\exports\\mass_A.txt");
	}
}
