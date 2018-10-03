package com.huawei.model;

public class Category {
	private Integer cateId;
	private String cateName;
	public Integer getCateId() {
		return cateId;
	}
	public void setCateId(Integer cateId) {
		this.cateId = cateId;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	@Override
	public String toString() {
		return "Category [cateId=" + cateId + ", cateName=" + cateName + "]";
	}
	
}
