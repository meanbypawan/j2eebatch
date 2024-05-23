package com.jdbcdemo.main;

import java.sql.*;
import java.util.Scanner;

public class UpdateMain {

	public static void main(String[] args) {
	
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter id of the product to be"
				+ " updated: ");
		int pid = scanner.nextInt();
		System.out.print("Enter new name of the product : ");
		String pname = scanner.next();
		System.out.print("Enter new price of the product : ");
		int prc = scanner.nextInt();
		
		try {
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/24thapriladv?useSSL=false",
			"root", "root");
			
			//3) create Statement to execute query
			PreparedStatement st = con.prepareStatement("UPDATE "
			+ "product SET name = ? , price = ? WHERE id = ?");
			st.setString(1, pname);
			st.setInt(2, prc);
			st.setInt(3, pid);
			
			//4) execute the query
			int count = st.executeUpdate();
			
			if(count > 0)
				System.out.println("product updated");
			else
				System.out.println("product updation failed"
						+ " or no such product found");
			
			//5) close the database Connection
			con.close();
			
		} catch (ClassNotFoundException | SQLException exc) {
			exc.printStackTrace();
		}
	}
}
