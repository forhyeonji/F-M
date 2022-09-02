package com.food.service;

import com.food.mapper.CommunityMapper;
import com.food.model.CommunityVO;
import com.food.model.ReqPageVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;


@Service
@RequiredArgsConstructor
public class CommunityService{

    private final CommunityMapper communityMapper;

    public int boardWrite(CommunityVO communityVO){
        return communityMapper.boardWrite(communityVO);
    }

    public Map<String, Object> getBoardList(ReqPageVO reqPageVO){
        Map<String, Object> resultMap = new HashMap<>();

        reqPageVO.setPage((reqPageVO.getPage() - 1) * reqPageVO.getSize());
        resultMap.put("data", communityMapper.selectBoardList(reqPageVO));
        resultMap.put("count", communityMapper.selectCommunityCount(reqPageVO));

        return resultMap;
    }
    public Map<String, Object> getBoardList(String bno){
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("data", communityMapper.selectCommunityOne(bno));

        return resultMap;
    }
    public int rowCount(CommunityVO communityVO){
        return communityMapper.rowCount(communityVO);
    }
}
