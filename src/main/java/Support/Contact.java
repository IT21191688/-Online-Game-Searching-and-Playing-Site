package Support;

public class Contact {
	
	private int id;
	private String name;
	private String email;
	private String phone;
	private String message;
	private String reply;
	
	public Contact(int id, String name, String email, String phone, String message, String reply) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.message = message;
		this.reply=reply;

	}
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMessage() {
		return message;
	}
	public String getReply() {
		return reply;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
