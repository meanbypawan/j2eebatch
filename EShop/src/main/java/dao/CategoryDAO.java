package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import model.Category;
import service.GetConnection;

public class CategoryDAO {
  public static boolean saveInBulk(ArrayList<Category> al) {
	  boolean status = true;
	  Connection con = null;
	  boolean doCommit = true;
	  try {
		  con = GetConnection.getConnection();
		  con.setAutoCommit(false);
		  String sql = "insert into category(slug,name,url) values(?,?,?)";
		  PreparedStatement ps = con.prepareStatement(sql);
		  for(Category c : al) {
			  ps.setString(1, c.getSlug());
			  ps.setString(2, c.getName());
			  ps.setString(3, c.getUrl());
			  if(ps.executeUpdate()!=0)
				  continue;
			  else {
				 doCommit = false;
				 status = false;
				 break;
			  }
		  }
		  if(doCommit)
			  con.commit();
		  else
			  con.rollback();
	  }
	  catch(Exception e) {
		 status = false; 
		 try { 
		  con.rollback();
		 }
		 catch(Exception ee) {
			 ee.printStackTrace();
		 }
		 e.printStackTrace();
	  }
	  return status;
  }
}
