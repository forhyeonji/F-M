package com.food.mapper;

import com.food.model.CommonCodeVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommonCodeMapper {
    List<CommonCodeVo> selectMenu(CommonCodeVo commonCodeVo);
}
