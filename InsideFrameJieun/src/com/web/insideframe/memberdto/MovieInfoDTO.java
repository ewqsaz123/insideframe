package com.web.insideframe.memberdto;

public class MovieInfoDTO {
	   private int movieno;
	   private String mtitle;
	   private String mimage;
	   private String director;
	   private String actor;
	   private String link;
	   private String category;
	   private String mdate;
	   private int like;
	   private int count;
	public int getMovieno() {
		return movieno;
	}
	public void setMovieno(int movieno) {
		this.movieno = movieno;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public String getMimage() {
		return mimage;
	}
	public void setMimage(String mimage) {
		this.mimage = mimage;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public MovieInfoDTO(int movieno, String mtitle, String mimage, String director, String actor, String link,
			String category, String mdate, int like, int count) {
		super();
		this.movieno = movieno;
		this.mtitle = mtitle;
		this.mimage = mimage;
		this.director = director;
		this.actor = actor;
		this.link = link;
		this.category = category;
		this.mdate = mdate;
		this.like = like;
		this.count = count;
	}
	public MovieInfoDTO() {
		super();
	}
	   
	   
	   
	   
	}