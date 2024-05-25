package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.User;
import service.GetConnection;

public class UserDAO {

 public static User authenticate(User user) {
	 User u = null;
	 Connection con = null;
	 try {
		 con = GetConnection.getConnection();
		 String sql = "select * from user where email =? and password =?";
		 PreparedStatement ps = con.prepareStatement(sql);
		 ps.setString(1, user.getEmail());
		 ps.setString(2, user.getPassword());
		 
		 ResultSet rs = ps.executeQuery();
		 if(rs.next()) {
			 int id = rs.getInt(1);
			 String username = rs.getString(2);
			 u = new User();
			 u.setId(id);
			 u.setEmail(user.getEmail());
			 u.setUsername(username);
		 }
	 }
	 catch (Exception e) {
		// TODO: handle exception
		 e.printStackTrace();
	 }
	 finally {
	   try {
		   con.close();
	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	 }
	 return u;
 }
 public static boolean save(User user) {
	 Connection con = null;
	 boolean status = false;
	 try {
		 con = GetConnection.getConnection();
		 String sql = "insert into user(username,email,password) values(?,?,?)";
		 PreparedStatement ps = con.prepareStatement(sql);
		 ps.setString(1, user.getUsername());
		 ps.setString(2, user.getEmail());
		 ps.setString(3, user.getPassword());
		 if(ps.executeUpdate()!=0)
			 status = true;
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	 finally {
		try {
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	 return status;
 }
 public static boolean update(User user) {
	 return true;
 }
 public static User getUser(int id) {
	 return null;
 }
 public static ArrayList<User> allUser(){
	 return null;
 }
}
