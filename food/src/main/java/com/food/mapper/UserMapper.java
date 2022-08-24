package com.food.mapper;

import com.food.model.UserVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    String join(UserVO userVO);

    void login(UserVO userVO);

}
