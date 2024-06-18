package service;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
  private static Connection con = null;
  static {
	  try {
	    con = establishConnection();
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
  }
  public static Connection getConnection() throws Exception{
	  if(con == null)
		  con = establishConnection();
	  return con;
  }
  private static Connection establishConnection() throws Exception {
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshopdb?useSSL=false","root","root");
      return con;
  }
}
