package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import service.GetConnection;

public class CartDAO {
  public static boolean addToCart(int productId, int userId) {
	  boolean status = false;
	  try(Connection con = GetConnection.getConnection();){
		 String sql = "select * from cart where userId = ?";
		 PreparedStatement ps = con.prepareStatement(sql);
		 ps.setInt(1, userId);
		 ResultSet rs = ps.executeQuery();
		 if(rs.next()) {
			 int cartId = rs.getInt(1);
			 if(CartItemsDAO.isProductExist(cartId, productId)==false) {
				 if(CartItemsDAO.save(cartId, productId))
					 status = true;
			 }
			 status = true;
		 }
		 else {
			sql = "insert into cart(userId) values(?)"; 
		    PreparedStatement ps2 = con.prepareStatement(sql);
			ps2.setInt(1, userId);
		    if(ps2.executeUpdate()!=0) {
		    	sql = "select id from cart where userId = ?";
		    	PreparedStatement ps3 = con.prepareStatement(sql);
		    	ps3.setInt(1, userId);
		    	rs = ps3.executeQuery();
		    	if(rs.next()) {
		    		int cartId = rs.getInt(1);
		    		status = CartItemsDAO.save(cartId, productId);
		    	}
		    }
		 }
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	  return status;
  }
}
