//package com.food.controller;
//
//import com.food.model.CustomerVO;
//import com.food.model.ReqCustomerVO;
//import com.food.model.ResCommonCode;
//import com.food.service.CustomerService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.http.MediaType;
//import org.springframework.web.bind.annotation.*;
//
///**
// * crud 셈플
// *
// * @author 김성민
// */
//@RestController
//@RequestMapping("/api")
//@RequiredArgsConstructor
//public class CustomerController extends CommonController {
//    private final CustomerService customerService;
//
//    /**
//     * 리스트 출력
//     *
//     * @return
//     */
//    @GetMapping(path = "/", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
//    public ResCommonCode getCustomerList() {
//        logger.info("response : {}", customerService.getCustomerList(new ReqCustomerVO()));
//
//        return ResCommonCode.builder()
//                .data(customerService.getCustomerList(new ReqCustomerVO()))
//                .message("SUCCESS")
//                .build();
//    }
//
//    /**
//     * 생성
//     * @param customerVO
//     * @return
//     */
//    @PostMapping(path = "/", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
//    public ResCommonCode regCustomer(
//            @RequestBody CustomerVO customerVO
//    ) {
//        return ResCommonCode.builder().build();
//    }
//
//    /**
//     * 수정
//     * @param customerVO
//     * @param id
//     * @return
//     */
//    @PutMapping(path = "/{id}", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
//    public ResCommonCode modCustomer(
//            @RequestBody CustomerVO customerVO,
//            @PathVariable(value = "id", required = true) String id
//    ) {
//        return ResCommonCode.builder().build();
//    }
//
//    /**
//     * 삭제
//     * @param id
//     * @return
//     */
//    @DeleteMapping(path = "/{id}", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
//    public ResCommonCode delCustomer(
//            @PathVariable(value = "id", required = true) String id) {
//        return ResCommonCode.builder().build();
//    }
//}