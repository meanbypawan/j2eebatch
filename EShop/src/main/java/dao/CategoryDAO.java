package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Category;
import service.GetConnection;

public class CategoryDAO {
  public static ArrayList<Category> getCategoryList(){
	  ArrayList<Category> al = new ArrayList<Category>();
	  try(Connection con = GetConnection.getConnection();){
		  String sql = "select id,name from category";
		  PreparedStatement ps = con.prepareStatement(sql);
		  ResultSet rs = ps.executeQuery();
		  while(rs.next()) {
			  int id = rs.getInt(1);
			  String name = rs.getString(2);
			  Category c = new Category();
			  c.setId(id);
			  c.setName(name);
			  al.add(c);
		  }
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	  return al;
  }
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
