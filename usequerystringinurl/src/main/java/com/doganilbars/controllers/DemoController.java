package com.doganilbars.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("demo")
public class DemoController {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "demo/index";
	}

	@RequestMapping(value = "hi", method = RequestMethod.GET)
	public String hi(@RequestParam("fullName") String fullName, ModelMap modelMap) {
		modelMap.put("result", "Hi " + fullName);
		return "demo/result";
	}

	@RequestMapping(value = "sum", method = RequestMethod.GET)
	public String sum(@RequestParam("a") int a, @RequestParam("b") int b, ModelMap modelMap) {
		modelMap.put("result", (a + b));
		return "demo/result";
	}
}
