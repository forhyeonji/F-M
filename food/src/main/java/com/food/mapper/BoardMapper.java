package com.food.mapper;

import com.food.model.BoardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {
    // 글쓰기에 해당되는 DB작업 설계
    public void write(BoardVO board);

    public List<BoardVO> selectBoardList(BoardVO board) throws Exception;
}
