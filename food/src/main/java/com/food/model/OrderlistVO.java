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
	//날ㅉㅏ수정한거
	private String o_date;
	
    //shopVO이랑 조인해서 필요한거만  추출 
    private String s_name;		//상품 이름
    private String s_content;	//상품 설명
    private int s_price;		//상품 단가
	
}
