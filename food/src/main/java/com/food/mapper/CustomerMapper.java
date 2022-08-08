package com.food.mapper;

import com.food.model.CustomerVO;
import com.food.model.ReqCustomerVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CustomerMapper {
    List<CustomerVO> getCustomerList(ReqCustomerVO reqVo);
}
