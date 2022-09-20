package com.food.service;

import com.food.mapper.CommunityMapper;
import com.food.mapper.LikeMapper;
import com.food.model.LikeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LikeService {

    private final LikeMapper likeMapper;
    private final CommunityMapper communityMapper;

    /**
     * 좋아요 등록 쿼리
     * @param likeVo
     */
    public void addLike(LikeVo likeVo, int bno){
        likeMapper.addLike(likeVo);
        communityMapper.plusCount(bno);
    }

    public int removeLike(LikeVo likeVo, int bno){
        communityMapper.minusCount(bno);
        return likeMapper.removeLike(likeVo);
    }
}
