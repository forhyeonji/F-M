package com.food.service;

import com.food.mapper.CustomerMapper;
import com.food.model.CustomerVO;
import com.food.model.ReqCustomerVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CustomerService {
    private final CustomerMapper customerMapper;

    public List<CustomerVO> getCustomerList(ReqCustomerVO reqVo){
        return customerMapper.getCustomerList(reqVo);
    }
}
