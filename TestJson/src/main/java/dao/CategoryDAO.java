package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import model.Category;
import service.GetConnection;

public class CategoryDAO {
  public static boolean saveInBulk(ArrayList<Category> al) {
	  boolean status = false,doCommit = true;
	  Connection con = GetConnection.getConnection();
	  try {
		  con.setAutoCommit(false);
		  String sql = "insert into category(slug,name,url) values(?,?,?)";
		  PreparedStatement ps = con.prepareStatement(sql);
		  for(Category c : al) {
			  ps.setString(1, c.getSlug());
			  ps.setString(2, c.getName());
			  ps.setString(3,c.getUrl());
			  if(ps.executeUpdate()==0) {
				  doCommit = false;
				  break;
			  }
			}
		  if(doCommit) {
			  con.commit();
		      status = true;
		  }	  
		  
	  }
	  catch(Exception e) {
		try {  
		  e.printStackTrace();
		  con.rollback();
		}
		catch(Exception ee) {
			ee.printStackTrace();
		}
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
}
