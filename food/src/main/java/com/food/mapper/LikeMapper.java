package com.food.mapper;

import com.food.model.LikeVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LikeMapper {

    /**
     * 좋아요 입력 쿼리
     * @param likeVo
     */
    void addLike(LikeVo likeVo);

    /**
     * 좋아요 취소 쿼리
     * @param likeVo
     * @return
     */
    int removeLike(LikeVo likeVo);



}
