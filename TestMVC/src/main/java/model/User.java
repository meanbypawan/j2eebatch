package model;

public class User {
	private int id;
	private String username;
	private String email;
	private int age;
	private int cityId;
	private City city;

	public User(int id, String username, String email, int age, int cityId, City city) {
		this.id = id;
		this.username = username;
		this.email = email;
		this.age = age;
		this.cityId = cityId;
		this.city = city;
	}

	public User(String username, String email, int age, int cityId) {
		this.username = username;
		this.email = email;
		this.age = age;
		this.cityId = cityId;
	}

	public User() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

}
