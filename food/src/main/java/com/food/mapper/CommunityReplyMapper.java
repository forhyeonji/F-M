package com.food.mapper;

import com.food.model.CommunityReplyVO;
import com.food.model.ReplyPageVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CommunityReplyMapper {
    /**
     * Reply 리스트 출력
     * @param replyPageVO
     * @return
     */
    List<CommunityReplyVO> selectCommunityReplyList(ReplyPageVO replyPageVO);

    /**
     * community 리스트 전체 카운터 쿼리
     * @param replyPageVO
     * @return
     */
    int selectCommunityReplyCount(ReplyPageVO replyPageVO);

    void insertCommunityReply(CommunityReplyVO communityReplyVO);
}
