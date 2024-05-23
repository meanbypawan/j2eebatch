package com.jdbcdemo.main;

import java.sql.*;

public class ShowAllMain {

	public static void main(String[] args) {
	
		try {
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/24thapriladv?useSSL=false",
			"root", "root");
			
			//3) create Statement to execute query
			PreparedStatement st = con.prepareStatement("SELECT"
					+ " * FROM product");
			
			//4) execute the query
			//5) store result of the query into ResultSet
			ResultSet rs = st.executeQuery();
			
			//6) process data from the ResultSet
			if(rs.isBeforeFirst()) {
				while(rs.next()) {
					System.out.println(rs.getInt("id") + " : "
					+ rs.getString(2) + " : " + rs.getInt("price"));
				}
			} else {
				System.out.println("no products found");
			}
			
			//7) close the database Connection
			con.close();
					
		} catch (ClassNotFoundException | SQLException exc) {
			exc.printStackTrace();
		}
	}
}
