package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.City;
import service.GetConnection;

public class CityDAO {
  public static ArrayList<City> getCityList() {
	  Connection con = null;
	  ArrayList<City> al = new ArrayList<City>();
	  try {
		  con = GetConnection.getConnection();
		  String sql = "select * from city";
		  PreparedStatement ps = con.prepareStatement(sql);
		  ResultSet rs = ps.executeQuery();
		  while(rs.next()) {
			  int id = rs.getInt(1);
			  String cityName = rs.getString(2);
			  City c = new City();
			  c.setId(id);
			  c.setCityName(cityName);
			  al.add(c);
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
