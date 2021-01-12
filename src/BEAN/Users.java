package BEAN;

public class Users {
	private int id;
	private String user;
	private String password;
	private String firstname;
	private String lastname;

	public Users(int id, String user, String password, String firstname, String lastname) {
		this.id = id;
		this.user = user;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
	}

	public Users(String user, String password) {
		this.user = user;
		this.password = password;
	}

	public Users(int id, String firstname, String lastname) {
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

}
