package com.food.service;

import com.food.mapper.CommunityReplyMapper;
import com.food.model.CommunityReplyVO;
import com.food.model.CommunityVO;
import com.food.model.ReplyPageVO;
import com.food.model.ReqPageVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CommunityReplyService {

    private final CommunityReplyMapper communityReplyMapper;

    public Map<String, Object> getReplyList(ReplyPageVO replyPageVO, int bno){
        Map<String, Object> resultMap = new HashMap<>();

        replyPageVO.setBno(bno);
        replyPageVO.setPage((replyPageVO.getPage() - 1) * replyPageVO.getSize());
        resultMap.put("data", communityReplyMapper.selectCommunityReplyList(replyPageVO));
        resultMap.put("count", communityReplyMapper.selectCommunityReplyCount(replyPageVO));

        return resultMap;
    }
}
