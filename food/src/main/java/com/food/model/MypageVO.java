package com.food.model;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MypageVO {
	//tb_community
	private int bno;		//글번호
	private String title;	//제목
	private String context;	//내용
	private String reg_dt;	//작성일자
	private String mod_dt;	//수정일자
	private int cnt;		//조회수
	private String user_id;	//작성자
		
	//리스트 선언
	private List<MypageVO> mypageVOList;
	//페이징처리
    private int pageNum;
    private int amount;
    private String keyword;
    private String type;
    private String sep;
    private String subsep;
    
    //댓글VO포함
    private List<CommunityReplyVO> replyVOList;
    
    
    public MypageVO() {
    	this(1,10);
    }
    
    public MypageVO(int pageNum, int amount) {
    	this.pageNum = pageNum;
    	this.amount = amount;
    }

}
