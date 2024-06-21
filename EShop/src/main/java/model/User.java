package model;

import jakarta.servlet.http.HttpSession;

public class User {
	private int id;
	private String username;
	private String email;
	private String password;

	public User(int id, String username, String email, String password) {
		this.id = id;
		this.username = username;
		this.email = email;
		this.password = password;
	}

	public User(String username, String email, String password) {
		this.username = username;
		this.email = email;
		this.password = password;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    public static void saveUser(HttpSession session,User user) {
       session.setAttribute("id", user.getId());
       session.setAttribute("username", user.getUsername());
       session.setAttribute("email", user.getEmail());
    }
    public static boolean isLoggedIn(HttpSession session) {
    	if(session.getAttribute("email")!=null)
    		 return true;
    	return false;
    }
}
