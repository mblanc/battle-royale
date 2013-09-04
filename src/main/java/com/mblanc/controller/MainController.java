package com.mblanc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.common.collect.Lists;

@Controller
@RequestMapping(value = "/rest")
public class MainController {

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	@ResponseBody
	public List<String> list() {
		return Lists.newArrayList("Hello", "World");
	}
	
	

}
