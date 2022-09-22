package com.food.model;

public class ShopdivisionVO {
			private String class1;
			private String class2;
			private int prodnum; 
			
			public int getProdnum() {
				return prodnum;
			}
			public void setProdnum(int prodnum) {
				this.prodnum = prodnum;
			}
			public String getClass1() {
				return class1;
			}
			public void setClass1(String class1) {
				this.class1 = class1;
			}
			public String getClass2() {
				return class2;
			}
			public void setClass2(String class2) {
				this.class2 = class2;
			}
			@Override
			public String toString() {
				return "ShopdivisionVO [class1=" + class1 + ", class2=" + class2 + ", prodnum=" + prodnum + "]";
			}
			
			
			
}
