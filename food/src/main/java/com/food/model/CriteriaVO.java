package com.food.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

// pageNum과 amount(한페이지당 게시물 개수) 값을 전달하는 Model

@Getter
@Setter
@ToString
public class CriteriaVO {
	private int prodnum;
    private int pageNum;
    private int amount;
    private String keyword;
    private String type;
    private String sep;
    private String subsep;

    
    public CriteriaVO() {
    	this(1,10);
    }
    
    public CriteriaVO(int pageNum, int amount) {
    	this.pageNum = pageNum;
    	this.amount = amount;
    }


}
