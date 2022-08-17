package com.food.service;

import com.food.mapper.BoardMapper;
import com.food.model.BoardVO;
import com.food.model.CriteriaVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;


@Service
public class BoardServiceImpl implements BoardService{
    @Autowired
    BoardMapper boardMapper;

    // BoardService에서 설계되어진 write 추상메서드를 구현
    public void write(BoardVO board) {
        // BoardMapper에 잇는 write메서드를 호출
        // 메서드의 매개변수를 통해 BoardVO값을
        // BoardMapper의 write메서드로 전달

        boardMapper.write(board);
    }
    public ArrayList<BoardVO> list(CriteriaVO criteriaVO){
        return boardMapper.list(criteriaVO);
    }

    @Transactional
    public BoardVO detail(BoardVO board){
        boardMapper.cntup(board);
        return boardMapper.detail(board);
    }
    public void modify(BoardVO board){
        boardMapper.modify(board);
    }

    public void remove(BoardVO board){
        boardMapper.remove(board);
    }
    public int total(){
        return boardMapper.total();
    }
}
