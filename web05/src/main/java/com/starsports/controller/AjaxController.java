package com.starsports.controller;

import java.awt.PageAttributes.MediaType;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/ajax/")
public class AjaxController {
	@Autowired
	ResourceLoader rsloader;
	
	@ResponseBody
	@RequestMapping(value="/ajax0.do", produces = "text/plain; charset=UTF-8")
	public String ajax0() {
		log.info("MIME TYPE :"+MediaType.LETTER);
		return "";
	}
	
	@ResponseBody
	@RequestMapping(value="/ajax1.do", produces = "text/plain; charset=UTF-8")
	public EMP ajax1() {
		log.info("MIME TYPE :"+MediaType.LETTER);
		return new EMP(1, "이름", "주소");
	}
	
	@ResponseBody
	@GetMapping(value="/ajax2.do")
	public Map<String, EMP> ajax2() {
		Map<String, EMP> map = new HashMap<>();
		map.put("first", new EMP(1, "이름", "주소"));
		map.put("second", new EMP(1, "이름", "주소"));
		return map;
	}
}
