package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Admin;
import service.GetConnection;

public class AdminDAO {
  public static Admin authenticate(Admin admin) {
	  Admin a = null;
	  Connection con = null;
	  try {
		 con = GetConnection.getConnection();
		 System.out.println(con);
		 String sql = "select * from admin where email = ? and password = ?";
		 PreparedStatement ps = con.prepareStatement(sql);
		 ps.setString(1, admin.getEmail());
		 ps.setString(2, admin.getPassword());
		 ResultSet rs = ps.executeQuery();
		 if(rs.next()) {
			 a = new Admin();
			 int id = rs.getInt(1);
			 String email = rs.getString(2);
			 String password = rs.getString(3);
			 a.setId(id);
			 a.setEmail(email);
			 a.setPassword(password);
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
	  return a;
  }
}
