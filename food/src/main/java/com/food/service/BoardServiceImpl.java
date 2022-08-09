package com.food.service;

import com.food.mapper.BoardMapper;
import com.food.model.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService, BoardMapper{
    @Autowired
    BoardMapper bm;

    // BoardService에서 설계되어진 write 추상메서드를 구현
    public void write(BoardVO board) {
        // BoardMapper에 잇는 write메서드를 호출
        // 메서드의 매개변수를 통해 BoardVO값을
        // BoardMapper의 write메서드로 전달

        bm.write(board);
    }
    @Override
    public List<BoardVO> selectBoardList(BoardVO board) throws Exception {
        List<BoardVO> list = null;
        list = bm.selectBoardList(board);
        return list;
    }

}
