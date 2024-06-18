package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.StringJoiner;

import model.Product;
import model.Review;
import service.GetConnection;

public class ProductDAO {
   public static boolean saveInBulk(ArrayList<Product> al) {
	   boolean status = true;
	   Connection con = null;
	   try {
		   con = GetConnection.getConnection();
		   con.setAutoCommit(false);
		   String sql = "insert into product(id,title,description,category,price,discountPercentage,stock,brand,sku,weight,warrantyInformation,shippingInformation,availabilityStatus,returnPolicy,minimumOrderQuantity,images,thumbnail) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	       PreparedStatement ps1 = con.prepareStatement(sql);
	       boolean outer = false;
	       for(Product p : al) {
	    	  int id =  p.getId();
	    	  String title = p.getTitle();
	    	  String description = p.getDescription();
	    	  String category = p.getCategory();
	    	  double price = p.getPrice();
	    	  double discountPercentage = p.getDiscountPercentage();
	    	  int stock = p.getStock();
	    	  String brand = p.getBrand();
	    	  String sku = p.getSku();
	    	  int weight = p.getWeight();
	    	  String warrantyInformation = p.getWarrantyInformation();
	    	  String shippingInformation = p.getShippingInformation();
	    	  String availabilityStatus = p.getAvailabilityStatus();
	    	  String returnPolicy = p.getReturnPolicy();
	    	  int minimumOrderQuantity = p.getMinimumOrderQuantity();
	    	  StringJoiner sj = new StringJoiner(",");
	    	  for(String imageUrl : p.getImages()) {
	    		  sj.add(imageUrl);
	    	  }
	    	  String images = sj.toString();
	    	  String thumbnail = p.getThumbnail();
	    	  ps1.setInt(1, id);
	    	  ps1.setString(2,title);
	    	  ps1.setString(3, description);
	    	  ps1.setString(4, category);
	    	  ps1.setDouble(5, price);
	    	  ps1.setDouble(6, discountPercentage);
	    	  ps1.setInt(7, stock);
	    	  ps1.setString(8, brand);
	    	  ps1.setString(9, sku);
	    	  ps1.setInt(10, weight);
	    	  ps1.setString(11, warrantyInformation);
	    	  ps1.setString(12, shippingInformation);
	    	  ps1.setString(13, availabilityStatus);
	    	  ps1.setString(14, returnPolicy);
	    	  ps1.setInt(15, minimumOrderQuantity);
	    	  ps1.setString(16, images);
	    	  ps1.setString(17, thumbnail);
	    	  if(ps1.executeUpdate()!=0) {
	    		 ArrayList<Review> reviewList =  p.getReviews();
	    		 for(Review r: reviewList) {
	    			 int rating = r.getRating();
	    			 String comment = r.getComment();
	    			 String date = r.getDate();
	    			 String reviewerName = r.getReviewerName();
	    			 String reviewerEmail = r.getReviewerEmail();
	    			 int productId = p.getId();
	    			 
	    			 String reviewSql = "insert into review(rating,comment,date,reviewerName,reviewerEmail,productId) values(?,?,?,?,?,?)";
	    			 PreparedStatement ps2 = con.prepareStatement(reviewSql);
	    			 ps2.setInt(1, rating);
	    			 ps2.setString(2, comment);
	    			 ps2.setString(3, date);
	    			 ps2.setString(4, reviewerName);
	    			 ps2.setString(5, reviewerEmail);
	    			 ps2.setInt(6, productId);
	    			 if(ps2.executeUpdate()!=0) {
	    				 continue;
	    			 }
	    			 else {
	    				 status = false;
	    				 outer = true;
	    				 con.rollback();
	    				 break;
	    			 }
	    		 }
	    		 if(outer) {
	    			 con.rollback();
	    			 status = false;
	    			 break;
	    		 }
	    	  }
	    	  else {
	    		  status = false;
	              con.rollback();
	    		  break;
	    	  }
	       }
	       if(status)
	        con.commit();
	   }
	   catch (Exception e) {
		// TODO: handle exception
		   e.printStackTrace();
		   status =false;
		   
	   }
	   finally {
		  try {
			  con.close();
		  }
		  catch(Exception e) {
			status = false;  
			try {  
			  e.printStackTrace();
		      con.rollback();
			}
			catch(Exception ee) {
				ee.printStackTrace();
			}
		  }
	   }
	   return status;
   }
}
