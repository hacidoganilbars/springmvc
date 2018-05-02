package com.doganilbars.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("aboutus")
public class AboutUsController {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "aboutus.index";
	}

	@RequestMapping(value = "about1", method = RequestMethod.GET)
	public String about1() {
		return "aboutus.about1";
	}

	@RequestMapping(value = "about2", method = RequestMethod.GET)
	public String about2() {
		return "aboutus.about2";
	}
}
