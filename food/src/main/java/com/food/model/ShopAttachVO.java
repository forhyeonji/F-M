package com.food.model;

/*이미지VO*/
public class ShopAttachVO {
	//1.파일이 저장되어 있는 경로
	private String uploadPath;
	//2.업로드된 파일명
	private String fileName;
	//3.uuid 정보
	private String uuid;
	//4.업로드된 파일이 이미지 파일인지 아닌지 대한 정보
	private boolean image;	//true
	//외래키 역할의 prodnum;
	private int prodnum;
	//메인과 서브를 구분
	private String division;
	
	
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public boolean isImage() {
		return image;
	}
	public void setImage(boolean image) {
		this.image = image;
	}
	public int getProdnum() {
		return prodnum;
	}
	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}
	
	@Override
	public String toString() {
		return "ShopAttachVO [uploadPath=" + uploadPath + ", fileName=" + fileName + ", uuid=" + uuid + ", image="
				+ image + ", prodnum=" + prodnum + ", division=" + division + "]";
	}	
}
