package com.doganilbars.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("news")
public class NewsController {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "news.index";
	}

	@RequestMapping(value = "news1", method = RequestMethod.GET)
	public String news1() {
		return "news.news1";
	}

	@RequestMapping(value = "news2", method = RequestMethod.GET)
	public String news2() {
		return "news.news2";
	}

	@RequestMapping(value = "news3", method = RequestMethod.GET)
	public String news3() {
		return "news.news3";
	}
}
