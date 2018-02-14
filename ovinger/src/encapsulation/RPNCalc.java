package encapsulation;

import java.util.Stack;

public class RPNCalc {
	//Instance variables
	Stack<Double> stack = new Stack<Double>();
	
	
	//Getters
	public int getSize() { return stack.size(); }
	
	
	//Actions
	public void push(double elem) { stack.push(elem); }
	
	public double pop() { return (!stack.isEmpty()) ? stack.pop() : Double.NaN; }
	
	public double peek(int depth) { 
		if (depth >= getSize()  ||  depth < 0) return Double.NaN;
		
		return stack.get(getSize() - depth - 1);
	}
	
	public void performOperation(char operator) {
		double oper1, oper2;
		//char[] supportedOperators = { '+', '-', '*', '/', '~', '\u03C0', '|' };
		
		switch (operator) {
		case '+':
			//Substitute missing operands with 0.
			oper1 = (peek(0) != Double.NaN) ? pop() : 0;
			oper2 = (peek(0) != Double.NaN) ? pop() : 0;
			
			push(oper1 + oper2);
			break;

		case '-':
			//Substitute missing operands with 0.
			oper1 = (peek(0) != Double.NaN) ? pop() : 0;
			oper2 = (peek(0) != Double.NaN) ? pop() : 0;
			
			push(oper2 - oper1);
			break;
		
		case '*':
			//Substitute missing operands with 0.
			oper1 = (peek(0) != Double.NaN) ? pop() : 0;
			oper2 = (peek(0) != Double.NaN) ? pop() : 0;
			
			push(oper1 * oper2);
			break;
		
		case '/':
			//Substitute missing operands with 0 then 1.
			oper1 = (peek(0) != Double.NaN) ? pop() : 0;
			oper2 = (peek(0) != Double.NaN) ? pop() : 1;
			
			if (oper1 == 0) throw new IllegalArgumentException("Division by zero.");
			
			push(oper2 / oper1);
			break;
		
		case '~':
			if (getSize() < 2) break;

			oper1 = pop();
			oper2 = pop();
			
			push(oper1);
			push(oper2);
			break;
		
		case '\u03C0':
			push(Math.PI);
			break;
		
		case '|':
			if (getSize() < 1) break;
			
			push(Math.abs(pop()));
			break;

		default:
			throw new IllegalArgumentException("Operator not supported.");
		}
	}
	
	
	//Other
	@Override
	public String toString() { return stack.toString(); }
	
	public static void main(String[] args) {
		RPNCalc calc1 = new RPNCalc();
		RPNCalc calc2 = new RPNCalc();
		
		for (double i = 1; i != 6; i++)
			calc1.push(i);
		for (int i = 0; i != 3; i++)
			calc2.performOperation('\u03C0');
		
		System.out.println("Calc 1:");
		System.out.println(calc1);
		
		System.out.println("\nCalc 2:");
		System.out.println(calc2);
	}
}
