package pet.join;
/*데이터 전달용 클래스 (DO 혹은 VO로도 혼용되기도 한다)*/

public class joinVO {
	
	public String user_id;
	public String user_name;
	public String user_pw;
	public String user_phone;
	public String user_address;
	public String user_email;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	
	// insert into user(user_id, user_name, user_pw, user_phone, user_address, user_email) 
	@Override
	public String toString() {
	    return "joinDto [user_id=" + user_id + ", user_name=" + user_name + ", user_pw=" + user_pw +
	            ", user_phone=" + user_phone + ", user_address=" + user_address + ", user_email=" + user_email + "]";
	}

}
