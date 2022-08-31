package com.food.model;

public class ShopVO {

	private int prodnum; 
	private String Name; 
	private String content;
	private String useyn; 
	private String kind ; 
	private int price1;
	private int price2;
	private boolean image;		
	private String IMG_NAME;
	
	
	public int getProdnum() {
		return prodnum;
	}
	
	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getPrice1() {
		return price1;
	}
	public void setPrice1(int price1) {
		this.price1 = price1;
	}
	public int getPrice2() {
		return price2;
	}
	public void setPrice2(int price2) {
		this.price2 = price2;
	}
	public boolean isImage() {
		return image;
	}
	public void setImage(boolean image) {
		this.image = image;
	}
	public String getIMG_NAME() {
		return IMG_NAME;
	}
	public void setIMG_NAME(String iMG_NAME) {
		IMG_NAME = iMG_NAME;
	}

	@Override
	public String toString() {
		return "ShopVO [prodnum=" + prodnum + ", Name=" + Name + ", content=" + content + ", useyn=" + useyn + ", kind="
				+ kind + ", price1=" + price1 + ", price2=" + price2 + ", image=" + image + ", IMG_NAME=" + IMG_NAME
				+ "]";
	}
	
	
	
}
