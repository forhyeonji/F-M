package com.food.mapper;

import com.food.model.UserVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    int join(UserVO userVO);

    UserVO login(UserVO userVO);

}
