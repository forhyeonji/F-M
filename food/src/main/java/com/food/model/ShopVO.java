package com.food.model;

import java.util.ArrayList;

import com.food.model.ShopAttachVO;

public class ShopVO {

	private int prodnum; 
	private String NAME;
	private String CONTENT;
	private String today;
	private String subcontent;
	private int price2;
	private int discountprice;
	private String Parcel;		/*택배회사이름*/
	private String packaging;
	private String unit;
	private String origin;
	private int boundary;		/*구매수량*/
	private String detail;
	private String filename;
	private String division;
	
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	//AttachFileVO(파일 업로드 관련 model)
	private ArrayList<ShopAttachVO> attach;
	
	public ArrayList<ShopAttachVO> getAttach() {
		return attach;
	}
	public void setAttach(ArrayList<ShopAttachVO> attach) {
		this.attach = attach;
	}

	
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
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
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
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
	
	
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	@Override
	public String toString() {
		return "ShopVO [prodnum=" + prodnum + ", NAME=" + NAME + ", CONTENT=" + CONTENT + ", today=" + today
				+ ", subcontent=" + subcontent + ", price2=" + price2 + ", discountprice=" + discountprice + ", Parcel="
				+ Parcel + ", packaging=" + packaging + ", unit=" + unit + ", origin=" + origin + ", boundary="
				+ boundary + ", detail=" + detail + ", filename=" + filename + ", division=" + division + ", attach="
				+ attach + "]";
	}


	
}
