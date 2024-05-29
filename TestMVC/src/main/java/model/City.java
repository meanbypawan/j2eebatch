package model;

import java.util.ArrayList;

public class City {
	private int id;
	private String cityName;
	private ArrayList<User> userList;

	public City(int id, String cityName) {
		this.id = id;
		this.cityName = cityName;
	}

	public City(String cityName) {
		this.cityName = cityName;
	}

	public City() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public ArrayList<User> getUserList() {
		return userList;
	}

	public void setUserList(ArrayList<User> userList) {
		this.userList = userList;
	}

}
