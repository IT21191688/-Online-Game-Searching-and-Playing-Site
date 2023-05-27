package games;

public class games {
	


	private int id;
	private String name;
	private String discription;
	private String image;
	private String link;
	
	public games(int id, String name, String discription, String image, String link) {
		super();
		this.id = id;
		this.name = name;
		this.discription = discription;
		this.image = image;
		this.link = link;
	}
	
	

	public games(int id2) {
		this.id=id;
		
	}



	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getDiscription() {
		return discription;
	}


	public String getImage() {
		return image;
	}


	public String getLink() {
		return link;
	}


	

}
