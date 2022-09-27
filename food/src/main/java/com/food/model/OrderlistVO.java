package com.food.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderlistVO {
	private int o_no;		//주문목록 넘버
	private int o_prodnum;	//주문목록 속 상품 넘버
	private int o_cnt;		//주문목록 상품 수량
	private int o_sum;		//주문목록 상품 가격
	private String user_id;	//주문목록 아이디
	private String o_dt;	//주문완료된 시각
	private String o_type;	//주문리스트 내 타입(order / cancle / refund)
	private String o_opt;	//취소 카테고리
	private String o_canclewhy; //취소 사유
	private String o_mod_dt;	//수정한 시간
	//날ㅉㅏ수정한거
	private String o_date;		//최초 시간 월/일 양식
	private String o_mod_date;	//수정한 시간 월/일 양식
	
    //shopVO이랑 조인해서 필요한거만  추출 
    private String s_name;		//상품 이름
    private String s_content;	//상품 설명
    private int s_price;		//상품 단가
    
    //주문목록 카운팅
    private int orderlistCnt;
    //주문취소 목록 카운팅
    private int canclelistCnt;
    
    //페이징 처리 위한 변수
    private int pageNum;
    private int amount;   
    
    public OrderlistVO() {
    	this(1,10);
    }
    
    public OrderlistVO(int pageNum, int amount) {
    	this.pageNum = pageNum;
    	this.amount = amount;
    }
	
}
