package com.food.service;

import com.food.mapper.CommunityMapper;
import com.food.mapper.VoteMapper;
import com.food.model.CommunityVO;
import com.food.model.VoteVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class VoteService {

    private final VoteMapper voteMapper;

    public Map<String, Object> checkVote(VoteVo voteVo){
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("check", voteMapper.checkVote(voteVo));

        return resultMap;
    }

    public Map<String, Object> addVote(VoteVo voteVo){
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("addVote",voteMapper.addVote(voteVo));

        return resultMap;
    }
    public Map<String, Object> removeVote(VoteVo voteVo){
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("removeVote",voteMapper.removeVote(voteVo));

        return resultMap;
    }

    public Map<String, Object> countVote(int bno){
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("count",voteMapper.countVote(bno));

        return resultMap;
    }
}
