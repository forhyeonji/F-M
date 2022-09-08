package com.food.model;

public class ShopVO {

	private int prodnum; 
	private String NAME; 
	private String CONTENT;
	private String subcontent;
	private String useyn; 
	private String KIND ; 
	private int price2;
	private int discountprice;
	private String image;		
	private String IMG_NAME;
	private String Parcel;		/*택배회사이름*/
	private String packaging;
	private String unit;
	private String Origin;
	private String Import;
	private int boundary;		/*구매수량*/
	private String detail;
	
	public int getProdnum() {
		return prodnum;
	}
	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	public String getSubcontent() {
		return subcontent;
	}
	public void setSubcontent(String subcontent) {
		this.subcontent = subcontent;
	}

	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public String getKIND() {
		return KIND;
	}
	public void setKIND(String kIND) {
		KIND = kIND;
	}
	public int getPrice2() {
		return price2;
	}
	public void setPrice2(int price2) {
		this.price2 = price2;
	}
	public int getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(int discountprice) {
		this.discountprice = discountprice;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getIMG_NAME() {
		return IMG_NAME;
	}
	public void setIMG_NAME(String iMG_NAME) {
		IMG_NAME = iMG_NAME;
	}
	public String getParcel() {
		return Parcel;
	}
	public void setParcel(String parcel) {
		Parcel = parcel;
	}
	public String getPackaging() {
		return packaging;
	}
	public void setPackaging(String packaging) {
		this.packaging = packaging;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getOrigin() {
		return Origin;
	}
	public void setOrigin(String origin) {
		Origin = origin;
	}
	public String getImport() {
		return Import;
	}
	public void setImport(String import1) {
		Import = import1;
	}
	public int getBoundary() {
		return boundary;
	}
	public void setBoundary(int boundary) {
		this.boundary = boundary;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	@Override
	public String toString() {
		return "ShopVO [prodnum=" + prodnum + ", NAME=" + NAME + ", CONTENT=" + CONTENT + ", subcontent=" + subcontent
				+ ", useyn=" + useyn + ", KIND=" + KIND + ", price2=" + price2 + ", discountprice=" + discountprice
				+ ", image=" + image + ", IMG_NAME=" + IMG_NAME + ", Parcel=" + Parcel + ", packaging=" + packaging
				+ ", unit=" + unit + ", Origin=" + Origin + ", Import=" + Import + ", boundary=" + boundary
				+ ", detail=" + detail + "]";
	}
	
	
}
