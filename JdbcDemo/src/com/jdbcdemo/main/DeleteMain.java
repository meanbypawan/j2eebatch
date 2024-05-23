package com.jdbcdemo.main;

import java.sql.*;
import java.util.Scanner;

public class DeleteMain {

	public static void main(String[] args) {
	
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter id of the product to be"
				+ " deleted: ");
		int pid = scanner.nextInt();
		
		try {
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/24thapriladv?useSSL=false",
			"root", "root");
			
			//3) create Statement to execute query
			PreparedStatement st = con.prepareStatement("DELETE "
					+ "FROM product WHERE id = ?");
			st.setInt(1, pid);
			
			//4) execute the query
			int count = st.executeUpdate();
			
			if(count > 0)
				System.out.println("product deleted");
			else
				System.out.println("product deletion failed"
						+ " or no such product found");
			
			//5) close the database Connection
			con.close();
			
		} catch (ClassNotFoundException | SQLException exc) {
			exc.printStackTrace();
		}
	}
}
