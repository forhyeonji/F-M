package com.food.model;

public class PageVO {
    // 시작번호
    private int startPage;
    // 끝번호
    private int endPage;
    // 이전버튼
    private boolean prevBtn;
    // 다음버튼
    private boolean nextBtn;
    // CriteriaVO 포함
    private CriteriaVO criteriaVO;
    // board테이블의 전체 건수를 저장
    private int total;
    

    
    
 


	public PageVO(CriteriaVO criteriaVO,int total){
        this.criteriaVO = criteriaVO;
        this.total = total;

        // 시작번호, 끝번호, 이전버튼, 다음버튼 계산
        // 끝번호 식 : 현재 페이지 / 10(올림) * 10
        this.endPage = (int) (Math.ceil(criteriaVO.getPageNum() / 10.0)) * 10;

        // 시작번호 식 : 끝번호 - 9
        this.startPage = this.endPage - 9;
        // 제일 마지막 페이지 번호는 전체 건수를 고려해야함.
        // 제일 마지막 페이지 번호 식 : 전체건수(올림) / 페이지당 게시물 개수
        int realEnd = (int)(Math.ceil(total * 1.0/ criteriaVO.getAmount()));

        // realEnd 적용
        if(realEnd < this.endPage){
            this.endPage = realEnd;
        }

        // 이전버튼 활성화
        this.prevBtn = this.startPage > 1;

        // 다음버튼 활성화
        this.nextBtn = this.endPage < realEnd;
    }
    

    
    
    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public boolean isPrevBtn() {
        return prevBtn;
    }

    public void setPrevBtn(boolean prevBtn) {
        this.prevBtn = prevBtn;
    }

    public boolean isNextBtn() {
        return nextBtn;
    }

    public void setNextBtn(boolean nextBtn) {
        this.nextBtn = nextBtn;
    }

    public CriteriaVO getCriteriaVO() {
        return criteriaVO;
    }

    public void setCriteriaVO(CriteriaVO criteriaVO) {
        this.criteriaVO = criteriaVO;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }




	@Override
	public String toString() {
		return "PageVO [startPage=" + startPage + ", endPage=" + endPage + ", prevBtn=" + prevBtn + ", nextBtn="
				+ nextBtn + ", criteriaVO=" + criteriaVO + ", total=" + total + "]";
	}
    


   
}
