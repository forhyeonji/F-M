package com.food.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;
import com.food.service.ShopService;

@Controller


public class ShiodivisionController {
	@Autowired
	ShopService sh;
	
	@RequestMapping(value="/Shop/{s}",method=RequestMethod.GET)	
	public ResponseEntity<ArrayList<ShopdivisionVO>> getshopdivision(@PathVariable String s){
		System.out.println(s);
		
		return new ResponseEntity<>(sh.shopdivision(s),HttpStatus.OK);
		}
}
