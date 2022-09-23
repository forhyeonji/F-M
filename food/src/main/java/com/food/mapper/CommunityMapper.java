package com.food.mapper;

import com.food.model.CommunityVO;
import com.food.model.ReqPageVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommunityMapper {
    /**
     * community 등록 쿼리
     * @param communityVO
     */
    void insertCommunity(CommunityVO communityVO);

    /**
     * community 리스트 출력 쿼리
     * @param reqPageVO
     * @return
     */
    List<CommunityVO> selectBoardList(ReqPageVO reqPageVO);

    /**
     * 인기순 출력 쿼리
     * @param reqPageVO
     * @return
     */
    List<CommunityVO> selectBoardRankList(ReqPageVO reqPageVO);

    /**
     * community 리스트 전체 카운터 쿼리
     * @param reqPageVO
     * @return
     */
    int selectCommunityCount(ReqPageVO reqPageVO);

    /**
     * community 상세 쿼리
     * @param bno
     * @return
     */
    CommunityVO selectCommunityOne(String bno);

    /**
     * community 번호 출력 쿼리
     * @param communityVO
     * @return
     */
    int rowCount(CommunityVO communityVO);

    /**
     * community 수정 쿼리
     * @param communityVO
     * @return
     */
    int putCommunity(CommunityVO communityVO);

    /**
     * community 삭제 쿼리
     * @param bno
     * @return
     */
    int deleteCommunity(int bno);

    /**
     * community 조회수 출력 쿼리
     * @param bno
     */
    void cntUp(String bno);

    int votePlus(CommunityVO communityVO);
    int voteMinus(CommunityVO communityVO);
}
