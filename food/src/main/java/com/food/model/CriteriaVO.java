package com.food.model;

// pageNum과 amount(한페이지당 게시물 개수) 값을 전달하는 Model
public class CriteriaVO {
    private int pageNum;
    private int amount;
    private String keyword;
    private String type;

    

    
    /* 검색기능 - keyword, type */
    public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	
	
	
	
	/* 페이징 처리 - pageNum, amount */
	
	public CriteriaVO(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }

    public CriteriaVO(){
        this(1,10);
    }

    @Override
	public String toString() {
		return "CriteriaVO [pageNum=" + pageNum + ", amount=" + amount + ", keyword=" + keyword + ", type=" + type
				+ "]";
	}

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
