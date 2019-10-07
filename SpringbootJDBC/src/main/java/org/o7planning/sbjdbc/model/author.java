package org.o7planning.sbjdbc.model;

public class author {
	@org.springframework.data.annotation.Id
	private Integer id;	
	private String authorname;
	public author() {
		super();
		
	}
	public author(Integer id,String name) {
		this.id=id;
		this.authorname=name;
		
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAuthorname() {
		return this.authorname;
	}
	public void setAuthorname(String author_name) {
		this.authorname = author_name;
	}
	

}
