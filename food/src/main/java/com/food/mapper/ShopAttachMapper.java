package com.food.mapper;

import java.util.ArrayList;

import com.food.model.ShopAttachVO;

public interface ShopAttachMapper {
	//첨부파일 조회
	public ArrayList<ShopAttachVO> Shopattachlist(int prodnum);
	public void insert(ShopAttachVO attach);
}
