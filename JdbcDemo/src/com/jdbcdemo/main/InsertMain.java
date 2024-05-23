package com.jdbcdemo.main;

import java.sql.*;
import java.util.Scanner;

public class InsertMain {

	public static void main(String[] args) {
	
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter name of the new product : ");
		String pname = scanner.next();
		System.out.print("Enter price of the new product : ");
		int prc = scanner.nextInt();
		
		try {
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/24thapriladv?useSSL=false",
			"root", "root");
			
			//3) create Statement to execute query
			PreparedStatement st = con.prepareStatement("INSERT"
			+ " INTO product(name,price) VALUES (?,?)");
			st.setString(1, pname);
			st.setInt(2, prc);
			
			//4) execute the query
			int count = st.executeUpdate();
			
			if(count > 0)
				System.out.println("new product added");
			else
				System.out.println("product insertion failed");
			
			//5) close the database Connection
			con.close();
			
		} catch (ClassNotFoundException | SQLException exc) {
			exc.printStackTrace();
		}
	}
}
