package com.food.mapper;

import com.food.model.BoardVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
    // 글쓰기에 해당되는 DB작업 설계
    public void write(BoardVO board);
}
