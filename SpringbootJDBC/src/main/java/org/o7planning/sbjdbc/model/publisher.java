package org.o7planning.sbjdbc.model;

public class publisher {
      private int id;
      private String publisher_name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPublisher_name() {
		return publisher_name;
	}
	public void setPublisher_name(String publisher_name) {
		this.publisher_name = publisher_name;
	}
	public publisher(String publisher_name) {
		super();
		this.publisher_name = publisher_name;
	}
      
}
