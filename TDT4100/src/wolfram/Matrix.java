package wolfram;

import java.util.ArrayList;
import java.util.Arrays;

public class Matrix {

	// Instance variables
	private ArrayList<ArrayList<Double>> matrix;


	// Validation
	private boolean isValidMatrix(int rows, int columns) {
		// Validation of input attributes
		if (rows <= 0 || columns <= 0)
			return false;

		return true;
	}

	private boolean isValidElement(int row, int column) {
		// Indices must be within matrix span
		if (row >= matrix.size() || column >= matrix.get(0).size())
			return false;

		// Indices cannot be negative
		if (row < 0 || column < 0)
			return false;

		return true;
	}

	private boolean isValidRow(int row) {
		// Index must be within matrix span
		if (row < 0 || row >= matrix.size())
			return false;

		return true;
	}

	private boolean isValidColumn(int column) {
		// Index must be within matrix span
		if (column < 0 || column >= matrix.get(0).size())
			return false;

		return true;
	}

	
	// Constructors
	public Matrix() {
		//Initializes an empty 2x2 matrix
		this(2, 2);
	}
	
	public Matrix(int rows, int columns) {
		// Validation of input attributes
		if (!isValidMatrix(rows, columns))
			throw new IllegalArgumentException("Number of rows and columns in matrix must be positive.");

		// Initialize empty 2D-array to build matrix
		Double[][] initArray = new Double[rows][columns];
		for (Double[] subArray : initArray)
			Arrays.fill(subArray, 0.0);
		
		// Convert 2D-array to 2D ArrayList
		matrix = parseArrayList(initArray);
	}
	
	public Matrix(Double[][] initArray) {
		// Convert 2D-array to 2D ArrayList
		matrix = parseArrayList(initArray);
	}

	
	// Getters
	public double getElement(int row, int column) throws IllegalArgumentException {
		// Validation of input attributes
		if (!isValidElement(row, column))
			throw new IllegalArgumentException("Indices must be within matrix span.");

		return matrix.get(row).get(column);
	}

	public ArrayList<Double> getRow(int row) throws IllegalArgumentException {
		// Validation of input attributes
		if (!isValidRow(row))
			throw new IllegalArgumentException("Row index must be within matrix span");

		return matrix.get(row);
	}

	public ArrayList<Double> getColumn(int column) throws IllegalArgumentException {
		// Validation of input attributes
		if (!isValidColumn(column))
			throw new IllegalArgumentException("Column index must be within matrix span");

		// Initialize empty ArrayList
		ArrayList<Double> outputArrList = new ArrayList<Double>();

		// Appends elements from specified column to output list
		for (ArrayList<Double> arrList : matrix)
			outputArrList.add(arrList.get(column));

		return outputArrList;
	}

	public Double[] getRowArray(int row) throws IllegalArgumentException {
		// Validation of input attributes
		if (!isValidRow(row))
			throw new IllegalArgumentException("Row index must be within matrix span");

		return (Double[]) matrix.toArray();
	}

	public Double[] getColumnArray(int column) throws IllegalArgumentException {
		if (!isValidRow(column))
			throw new IllegalArgumentException("Column index must be within matrix span");

		ArrayList<Double> columnArrList = getColumn(column);
		return (Double[]) columnArrList.toArray();
	}

	public int getRows() {
		return matrix.size();
	}

	public int getColumns() {
		return matrix.get(0).size();
	}

	
	//Setters
	public void set(int row, int column, double value) throws IllegalArgumentException {
		if (!isValidElement(row, column))
			throw new IllegalArgumentException("Indices must be within matrix span.");
		
		matrix.get(row).set(column, value);
	}
	
	@SuppressWarnings("unchecked")
	public void setRow(int row, ArrayList<Double> newArrList) throws IllegalArgumentException {
		if (newArrList.size() != getColumns())
			throw new IllegalArgumentException("New row and matrix must have the same number of columns.");
		
		matrix.set(row, (ArrayList<Double>) newArrList.clone());
	}

	public void setRow(int row, Double[] newArray) throws IllegalArgumentException {		
		if (newArray.length != getColumns())
			throw new IllegalArgumentException("New row and matrix must have the same number of columns.");
		
		matrix.set(row, new ArrayList<Double>(Arrays.asList(newArray.clone())));
	}
	
	public void setColumn(int column, ArrayList<Double> newArrList) throws IllegalArgumentException {
		if (newArrList.size() != getRows())
			throw new IllegalArgumentException("New column and matrix must have the same number of rows.");
		
		for (int i = 0; i != getRows(); i++) {
			matrix.get(i).set(column, newArrList.get(i));
		}
	}
	
	public void setColumn(int column, Double[] newArray) throws IllegalArgumentException {
		if (newArray.length != getRows())
			throw new IllegalArgumentException("New column and matrix must have the same number of rows.");
		
		for (int i = 0; i != getRows(); i++) {
			matrix.get(i).set(column, newArray[i]);
		}
	}
	
	
	// Modifiers
	public void addRows(int n) {
		if (n < 0)
			return;
		for (int i = 0; i != n; i++) {
			Double[] newArray = new Double[getColumns()];
			matrix.add(new ArrayList<Double>(Arrays.asList(newArray)));
		}
	}

	public void addColumns(int n) {
		if (n < 0)
			return;
		for (ArrayList<Double> currentRow : matrix) {
			Double[] newArray = new Double[n];
			currentRow.addAll(Arrays.asList(newArray));
		}
	}

	public void removeRows(int n) throws IllegalArgumentException {
		if (n < 0  ||  n >= getRows()) 
			throw new IllegalArgumentException("Unable to remove set number of rows.");
		
		for (int i = 0; i != n; i++)
			matrix.remove(matrix.size() - 1);
	}
	
	public void removeColumns(int n) throws IllegalArgumentException {
		if (n < 0  ||  n >= getColumns()) 
			throw new IllegalArgumentException("Unable to remove set number of columns.");
		
		for (ArrayList<Double> currentRow : matrix)
			for (int i = 0; i != n; i++)
				currentRow.remove(currentRow.size() - 1);
	}
	
	
	//// OPERATIONS
	
	public void scale(double factor) {		
		for (int row = 0; row != getRows(); row++)
			for (int column = 0; column != getColumns(); column++)
				//Assigns new value to specified element
				set(row, column, getElement(row, column) * factor);
	}
	
	public void swapRows(int row1, int row2) {
		ArrayList<Double> tempRow1 = getRow(row1);
		ArrayList<Double> tempRow2 = getRow(row2);
		
		setRow(row1, tempRow2);
		setRow(row2, tempRow1);
	}
	
	////
	

	public Matrix multiply(Matrix matrix) throws IllegalArgumentException {
		//Matrix 1: n x m
		//Matrix 2: m x p
		if (this.getColumns() != matrix.getRows())
			throw new IllegalArgumentException("Matrices cannot be multiplied.");
		
		//Initialize empty n * p matrix
		Matrix outputMatrix = new Matrix(this.getRows(), matrix.getColumns());
		
		//Iterate through every entry in outputMatrix
		for (int row = 0; row != outputMatrix.getRows(); row++)
			for (int column = 0; column != outputMatrix.getColumns(); column++) {
				
				//Temporary variable to store elements in outputMatrix
				int elementSum = 0;
				
				//Compute element in outputMatrix
				for (int i = 0; i != this.getColumns(); i++)
					elementSum += this.getElement(row, i)  *  matrix.getElement(i, column);
				
				//Assert value to outputMatrix
				outputMatrix.set(row, column, elementSum);
				
			}
		
		//Return new matrix
		return outputMatrix;
	}
	
	//Gauss-elimination (1 & 2) - AugmentedMatrix
	//Determinant

	//Multiplication (Matrix)
	//Addition
	//Subtraction
	//Plot
		
	////
	
	
	// Other
	public String asTable() {
		String outputStr = "";
		for (ArrayList<Double> currentRow : matrix)
			outputStr += currentRow.toString() + "\n";

		return outputStr.trim();
	}

	public static void main(String[] args) {
		Double[][] matArray1 = {{1.0, 2.0},
								{3.0, 4.0}};

		Double[][] matArray2 = {{6.0, 7.0},
								{8.0, 9.0}};
		
		Matrix mat1 = new Matrix(matArray1);
		Matrix mat2 = new Matrix(matArray2);
		
		Matrix mat3 = mat1.multiply(mat2);
		
		System.out.println(mat3.asTable());		
	}					

	
	// Parsers
	private ArrayList<ArrayList<Double>> parseArrayList(Double[][] initArray) {
		ArrayList<ArrayList<Double>> outputArrList = new ArrayList<ArrayList<Double>>();

		for (Double[] array : initArray) {
			// Initialize temporary ArrayList to build matrix
			ArrayList<Double> initArrList = new ArrayList<Double>();
			initArrList.addAll(Arrays.asList(array));

			// Append temporary ArrayList to matrix
			outputArrList.add(initArrList);
		}

		return outputArrList;
	}

}
