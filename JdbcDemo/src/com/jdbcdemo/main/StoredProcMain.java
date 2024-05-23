package com.jdbcdemo.main;

import java.sql.*;
import java.util.Scanner;

public class StoredProcMain {

	public static void main(String[] args) {
	
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter number of employee : ");
		int eno = scanner.nextInt();
		
		try {
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/24thapriladv?useSSL=false",
			"root", "root");
			
			//3) create CallableStatement to call stored proc
			CallableStatement cs = 
					con.prepareCall("{call myproc(?,?)}");
			cs.setInt(1, eno);
			cs.registerOutParameter(2, Types.CHAR);
			
			
			//4) call the stored proc
			cs.execute();
			
			//5) get result from the stored proc
			String dname = cs.getString(2);
			System.out.println("employee belong to "
					+ dname + " department");
			
			//6) close the database Connection
			con.close();
					
		} catch (ClassNotFoundException | SQLException exc) {
			exc.printStackTrace();
		}
	}
}
