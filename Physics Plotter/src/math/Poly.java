package math;

public class Poly {
	/*
	 * Evaluates polyonmial represented by an array of coefficients, using Horner's method
	 * NOTE: Coefficcents must be given in descending order of degrees
	 */
	public static double eval(double[] coeffArray, double x) {
		double result = coeffArray[0];
		
		for (int i = 0; i < coeffArray.length - 1; i++)
			result = (result * x) + coeffArray[i + 1];
		
		return result;
	}
	
	/*
	 * Evaluates derivative of polynomial, represented by an array of coefficients
	 * NOTE: Coefficcents must be given in descending order of degrees
	 */
	public static double evalDerivative(double[] coeffArray, double x) {
		//Derivative of given polynomial
		double[] derivativeArray = derivative(coeffArray);
		
		//Derivative evaulated at x
		return eval(derivativeArray, x);
	}
	
	/*
	 * Evaluates nth-derivative of polynomial, represented by an array of coefficients
	 * NOTE: Coefficcents must be given in descending order of degrees
	 */
	public static double evalNthDerivative(double[] coeffArray, double x, int n) {
		//Nth-derivative of given polynomial
		double[] derivativeArray = nthDerivative(coeffArray, n);
		
		//Nth-derivative evaulated at x
		return eval(derivativeArray, x);
	}
	
	/*
	 * Returns an array of coefficients, representing the derivative of given polynomial
	 * NOTE: Coefficcents must be given in descending order of degrees
	 */
	public static double[] derivative(double[] coeffArray) {
		double[] outputArray = new double[coeffArray.length - 1];
		
		//Multiply coefficients with corresponding degree
		for (int i = 0; i < outputArray.length; i++)
			outputArray[i] = coeffArray[i] * (coeffArray.length - i - 1);
		
		return outputArray;
	}
	
	/*
	 * Returns an array of coefficients, representing the nth-derivative of given polynomial
	 * NOTE: Coefficcents must be given in descending order of degrees
	 */
	public static double[] nthDerivative(double[] coeffArray, int n) {
		//Derivative of higher degree than polynomial will always return 0.
		if (n >= coeffArray.length)
			return new double[1];
		
		//Temporary array for storing current polynomial
		double[] outputArray = coeffArray;
		
		//Perform n derivations
		for (int i = 0; i < n; i++)
			outputArray = derivative(outputArray);
		
		return outputArray;
	}
	
	/*
	 * Returns the slope angle at given point, in radians
	 * Slope angle is positive for a curve with a negative derivative
	 */
	public static double slopeAngle(double[] coeffArray, double x) {
		return Math.atan(-evalDerivative(coeffArray, x));
	}
	
	/*
	 * Returns the slope angle at given point, in degrees
	 * Slope angle is positive for a curve with a negative derivative
	 */
	public static double slopeAngleDegrees(double[] coeffArray, double x) {
		//Compute angle in radians
		double radians = slopeAngle(coeffArray, x);
		
		//Return converted angle
		return Math.toDegrees(radians);
	}
	
	/*
	 * Returns the radius of the osculating circle describing the curvature at a given point
	 * The sign of the radius of the osculating circle, is the same as that of the second derivative
	 * https://en.wikipedia.org/wiki/Radius_of_curvature
	 */
	public static double radiusOfCurvature(double[] coeffArray, double x) {
		double dy_dx_1 = evalDerivative(coeffArray, x);
		double dy_dx_2 = evalNthDerivative(coeffArray, x, 2);
		
		//Prevent division by zero (y'' = 0)
		if (dy_dx_2 == 0)
			throw new ArithmeticException("Radius of curvature is only defined for polynomials of degree 2 and higher.");
		
		return Math.pow((1 + Math.pow(dy_dx_1, 2)), 3/2) / dy_dx_2;
	}

	
	//Other
	/*
	 * Returns a string representing the polynomial described by the coefficient array
	 */
	public static String toString(double[] coeffArray, boolean includeZeroCoeffs) {
		//Degree of polynomial
		int degree = coeffArray.length - 1;
		
		StringBuilder stringBuilder = new StringBuilder();
		
		
	}
}
