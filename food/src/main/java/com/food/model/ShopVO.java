package com.food.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class ShopVO {

	private int prodnum; 
	private String NAME; 
	private String CONTENT;
	private Date today;
	private String useyn; 
	private String KIND ; 
	private int price1;
	private int price2;
	private boolean image;		
	private String IMG_NAME;
	private String Parcel;
	private String packaging;
	private int unit;
	private String Origin;
	private String Import;

}
