package com.food.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {
	private int c_no;		//장바구니 속 상품 넘버
	private int c_prodnum;	//상품 넘버 (상품테이블에서 찾아주는 키)
	private int c_cnt;		//장바구니 속 상품 수량
	private String user_id;	//장바구니에 담은 id
	private String c_dt;	//장바구니에 넣은 시각
	   
    //shopVO이랑 조인해서 필요한거만  추출 
    private String s_name;	//상품 이름
    private String s_content;//상품 설명
    private int s_price;	//상품 단가
    private int c_sumprod;	//상품단가*고객선택수량
}
