package org.o7planning.sbjdbc.model;



public class books {
	@org.springframework.data.annotation.Id
	private Integer id;
	private int id_author;
	private int id_publisher;
	private String bookname;
	private String publish_year;
	private String description;
	private int page_number;
	private String type;
	private int number;
	private String image;
	
	public books(Integer id, int id_author, int id_publisher, String bookname,  String type, int number,
			String image) {
		super();
		this.id = id;
		this.id_author = id_author;
		this.id_publisher = id_publisher;
		this.bookname = bookname;
		
		this.type = type;
		this.number = number;
		this.image = image;
	}
	public books() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_author() {
		return id_author;
	}
	
	public int getId_publisher() {
		return id_publisher;
	}
	
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String book_name) {
		this.bookname = book_name;
	}
	public String getPublish_year() {
		return publish_year;
	}
	public void setPublish_year(String publish_year) {
		this.publish_year = publish_year;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPage_number() {
		return page_number;
	}
	public void setPage_number(int page_number) {
		this.page_number = page_number;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int status) {
		this.number = status;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getType() {
		return type;
	}
	public void setType(String image) {
		this.type = image;
	}
	

}
