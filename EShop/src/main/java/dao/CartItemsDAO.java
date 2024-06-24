package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import service.GetConnection;

public class CartItemsDAO {
  public static boolean save(int cartId, int productId) {
	  boolean status = false;
	  try(Connection con = GetConnection.getConnection();){
		  String sql = "insert into cartItems(cartId,productId) values(?,?)";
		  PreparedStatement ps = con.prepareStatement(sql);
		  ps.setInt(1, cartId);
		  ps.setInt(2, productId);
		  if(ps.executeUpdate()!=0)
			  status = true;
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	  return status;
  }
  public static boolean isProductExist(int cartId, int productId) {
	  boolean status = false;
	  try(Connection con = GetConnection.getConnection();){
		  String sql = "select * from cartItems where productId = ? and cartId = ?";
		  PreparedStatement ps = con.prepareStatement(sql);
		  ps.setInt(1, productId);
		  ps.setInt(2, cartId);
		  ResultSet rs = ps.executeQuery();
		  if(rs.next())
			  status = true;
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	  return status;
  }
}
