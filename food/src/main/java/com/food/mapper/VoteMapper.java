package com.food.mapper;

import com.food.model.VoteVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface VoteMapper {
    /**
     * 투표 확인
     * @param voteVo
     * @return
     */
    int checkVote(VoteVo voteVo);

    /**
     * 투표 입력
     * @param voteVo
     * @return
     */
    int addVote(VoteVo voteVo);

    /**
     * 투표 취소
     * @param voteVo
     */
    int removeVote(VoteVo voteVo);

    /**
     * 총 투표수
     * @param bno
     * @return
     */
    int countVote(int bno);
}
