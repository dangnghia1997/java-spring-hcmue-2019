package org.o7planning.sbjdbc.model;

public class publisher {
	@org.springframework.data.annotation.Id
      private Integer id;
      private String publishername;
	public int getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPublishername() {
		return publishername;
	}
	public void setPublishername(String publisher_name) {
		this.publishername = publisher_name;
	}
	public publisher() {
		super();
	}
	public publisher(Integer id,String publisher_name) {
		super();
		this.id=id;
		this.publishername = publisher_name;
	}
      
}
