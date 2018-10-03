package com.huawei.model;

public class Article {
	private Integer artId;
	private String artTitle;
	private String artReledate;
	private String artText;
	private String artImg;
	private String artDisplay;
	private User user;
	private Category catetory;
	public Integer getArtId() {
		return artId;
	}
	public void setArtId(Integer artId) {
		this.artId = artId;
	}
	public String getArtTitle() {
		return artTitle;
	}
	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}
	public String getArtReledate() {
		return artReledate;
	}
	public void setArtReledate(String artReledate) {
		this.artReledate = artReledate;
	}
	public String getArtText() {
		return artText;
	}
	public void setArtText(String artText) {
		this.artText = artText;
	}
	public String getArtImg() {
		return artImg;
	}
	public void setArtImg(String artImg) {
		this.artImg = artImg;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Category getCatetory() {
		return catetory;
	}
	public void setCatetory(Category catetory) {
		this.catetory = catetory;
	}
	
	public String getArtDisplay() {
		return artDisplay;
	}
	public void setArtDisplay(String artDisplay) {
		this.artDisplay = artDisplay;
	}
	@Override
	public String toString() {
		return "Article [artId=" + artId + ", artTitle=" + artTitle + ", artReledate=" + artReledate + ", artText="
				+ artText + ", artImg=" + artImg + ", user=" + user + ", catetory=" + catetory + "]";
	}
	
	
	
}
