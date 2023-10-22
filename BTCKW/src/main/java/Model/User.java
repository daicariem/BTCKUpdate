package Model;

public class User {
	private int id;
	private String username;
	private String password;
	private int isSell;
	private int isAdmin;
	public User() {
		
	}
	
	

	public User(int id,String username, String password,int isSell,int isAdmin) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.isSell = isSell;
		this.isAdmin = isAdmin;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}



	public int getIsSell() {
		return isSell;
	}



	public void setIsSell(int isSell) {
		this.isSell = isSell;
	}



	public int getIsAdmin() {
		return isAdmin;
	}



	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}


	
}
