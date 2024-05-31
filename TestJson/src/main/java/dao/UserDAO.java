package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.User;
import service.GetConnection;

public class UserDAO {
   public static User save(User user) {
	   User u = null;
	   try(Connection con = GetConnection.getConnection();){
		   String sql = "insert into user(username,email,age,cityId) values(?,?,?,?)";
		   PreparedStatement ps = con.prepareStatement(sql);
		   ps.setString(1, user.getUsername());
		   ps.setString(2, user.getEmail());
		   ps.setInt(3, user.getAge());
		   ps.setInt(4, user.getCityId());
		   if(ps.executeUpdate()!=0) {
			   sql = "select * from user where email = ?";
			   ps = con.prepareStatement(sql);
			   ps.setString(1, user.getEmail()); 
		       ResultSet rs = ps.executeQuery();
		       if(rs.next()) {
		    	   int id = rs.getInt(1);
		    	   user.setId(id);
		    	   u = user;
		       }
		   }
	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	   return u;
   }
   public static ArrayList<User> getUserList(){
	   ArrayList<User> al = new ArrayList<User>();
	   try(Connection con = GetConnection.getConnection();){
		   String sql = "select * from user";
		   PreparedStatement ps = con.prepareStatement(sql);
		   ResultSet rs = ps.executeQuery();
		   while(rs.next()) {
			   int id = rs.getInt(1);
			   String username = rs.getString(2);
			   String email = rs.getString(3);
			   int age = rs.getInt(4);
			   int cityId = rs.getInt(5);
			   
			   User u = new User(id, username, email, age, cityId);
			   al.add(u);
		   }
	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	   return al;
   }
}
