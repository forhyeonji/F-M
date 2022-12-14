package com.food.service;

import com.food.mapper.CommunityMapper;
import com.food.model.CommunityVO;
import com.food.model.ReqPageVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;


@Service
@RequiredArgsConstructor
public class CommunityService {

    private final CommunityMapper communityMapper;

    public void writeCommunity(CommunityVO communityVO){ communityMapper.insertCommunity(communityVO); }

    public Map<String, Object> getBoardList(ReqPageVO reqPageVO) {
        Map<String, Object> resultMap = new HashMap<>();

        reqPageVO.setPage((reqPageVO.getPage() - 1) * reqPageVO.getSize());
        resultMap.put("data", communityMapper.selectBoardList(reqPageVO));
        resultMap.put("count", communityMapper.selectCommunityCount(reqPageVO));

        return resultMap;
    }
    public Map<String, Object> getBoardRankList(ReqPageVO reqPageVO) {
        Map<String, Object> resultMap = new HashMap<>();

        reqPageVO.setPage((reqPageVO.getPage() - 1) * reqPageVO.getSize());
        resultMap.put("data", communityMapper.selectBoardRankList(reqPageVO));
        resultMap.put("count", communityMapper.selectCommunityCount(reqPageVO));

        return resultMap;
    }

    @Transactional
    public CommunityVO seleteComuunityOne(String bno){
        communityMapper.cntUp(bno);
        return communityMapper.selectCommunityOne(bno);
    }

    public Map<String, Object> getBoardList(String bno) {
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("data", communityMapper.selectCommunityOne(bno));

        return resultMap;
    }

    public int rowCount(CommunityVO communityVO) {
        return communityMapper.rowCount(communityVO);
    }

    public Map<String, Object> putCommunity(CommunityVO communityVO, int bno) {
        Map<String, Object> resultMap = new HashMap<>();

        communityVO.setBno(bno);
        resultMap.put("data", communityMapper.putCommunity(communityVO));

        return resultMap;
    }

    public int deleteCommunity(int bno){
        return communityMapper.deleteCommunity(bno);
    }

    public Map<String, Object> votePlus(CommunityVO communityVO){
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("data",communityMapper.votePlus(communityVO));

        return resultMap;
    }
    public Map<String, Object> voteMinus(CommunityVO communityVO){
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("data",communityMapper.voteMinus(communityVO));

        return resultMap;
    }
}
