package app;

import functions.Differentiable;
import functions.Polynomial;

public class Trace {
	private Differentiable func;
	
	public static void main(String[] args) {
		Trace mytrace = new Trace();
		mytrace.func = new Polynomial(new double[] {1,2,3});
		System.out.println(mytrace.func);
	}
	
}
