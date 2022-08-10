package com.food.mapper;

import com.food.model.BoardVO;
import org.apache.ibatis.annotations.Mapper;
import java.util.ArrayList;

@Mapper
public interface BoardMapper {
    // 글쓰기에 해당되는 DB작업 설계
    public void write(BoardVO board);

    // 게시글 목록 리스트에 해당되는 DB작업 설계
    public ArrayList<BoardVO> list();

    // 게시글 상세보기에 해당되는 DB작업 설계
    public BoardVO detail(BoardVO board);

    // 게시글 수정에 해당되는 DB작업 설계
    public void modify(BoardVO board);

    // 게시글 삭제에 해당되는 DB작업 설계
    public void remove(BoardVO board);
}
