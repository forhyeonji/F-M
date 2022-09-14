package com.food.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Page2VO {

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
    private int total2;
    
    
    
    public Page2VO(CriteriaVO criteriaVO,int total2){
        this.criteriaVO = criteriaVO;
        this.total2 = total2;

        // 시작번호, 끝번호, 이전버튼, 다음버튼 계산
        // 끝번호 식 : 현재 페이지 / 10(올림) * 10
        this.endPage = (int) (Math.ceil(criteriaVO.getPageNum() / 10.0)) * 10;

        // 시작번호 식 : 끝번호 - 9
        this.startPage = this.endPage - 9;
        // 제일 마지막 페이지 번호는 전체 건수를 고려해야함.
        // 제일 마지막 페이지 번호 식 : 전체건수(올림) / 페이지당 게시물 개수
        int realEnd = (int)(Math.ceil(total2 * 1.0/ criteriaVO.getAmount()));

        // realEnd 적용
        if(realEnd < this.endPage){
            this.endPage = realEnd;
        }

        // 이전버튼 활성화
        this.prevBtn = this.startPage > 1;

        // 다음버튼 활성화
        this.nextBtn = this.endPage < realEnd;
    }
	
}
