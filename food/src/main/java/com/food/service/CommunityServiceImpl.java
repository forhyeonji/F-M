package com.food.service;

import com.food.mapper.CommunityMapper;
import com.food.model.CommunityVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;


@Service
public class CommunityServiceImpl implements CommunityService {
    @Autowired
    CommunityMapper communityMapper;

    // BoardService에서 설계되어진 write 추상메서드를 구현
//    public void write(BoardVO board) {
//        // BoardMapper에 잇는 write메서드를 호출
//        // 메서드의 매개변수를 통해 BoardVO값을
//        // BoardMapper의 write메서드로 전달
//
//        boardMapper.write(board);
//    }

    public int boardWrite(CommunityVO communityVO){
        return communityMapper.boardWrite(communityVO);
    }

//    public ArrayList<BoardVO> list(CriteriaVO criteriaVO){
//        return boardMapper.list(criteriaVO);
//    }
    public ArrayList<CommunityVO> boardList(CommunityVO communityVO){
        return communityMapper.boardList(communityVO);
    }

    public CommunityVO boardDetail(CommunityVO communityVO){
//        boardMapper.cntup(bno);
        return communityMapper.boardDetail(communityVO);
    }
    public int boardModify(CommunityVO communityVO){
        return communityMapper.boardModify(communityVO);
    }

    public int boardDelete(CommunityVO communityVO){
       return communityMapper.boardDelete(communityVO);
    }
    public int total(){
        return communityMapper.total();
    }
}
