package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.cj.xdevapi.Result;

import model.City;
import model.User;
import service.GetConnection;

public class UserDAO {
  
	 public static boolean deleteUser(int userId){
		 boolean status = false; 
		 Connection con = null;
		  try {
			  con = GetConnection.getConnection();
			  String sql = "delete from user where id = ?";
			  PreparedStatement ps = con.prepareStatement(sql);
			  ps.setInt(1, userId);
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
	
	public static ArrayList<User> getUserList(){
	  ArrayList<User> al = new ArrayList<User>();
	  Connection con = null;
	  try {
		  con = GetConnection.getConnection();
		  String sql = "select *, city.cityName from user inner join city on user.cityId = city.id";
	      PreparedStatement ps = con.prepareStatement(sql);
	      ResultSet rs = ps.executeQuery();
	      while(rs.next()) {
	    	  int userId = rs.getInt(1);
	    	  String username = rs.getString(2);
	    	  String email = rs.getString(3);
	    	  int age = rs.getInt(4);
	    	  int cityId = rs.getInt(5);
	    	  String cityName = rs.getString(7);
	    	  
	    	  City c = new City();
	    	  c.setId(cityId);
	    	  c.setCityName(cityName);
	          User user = new User(userId, username, email, age, cityId, c);
	          al.add(user);
	      }
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
	  return al;
  }
}
