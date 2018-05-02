package com.doganilbars.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("demo")
public class DemoControllers {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "demo/index";
	}

	@RequestMapping(value = "hi/{fullName}", method = RequestMethod.GET)
	public String hi(@PathVariable("fullName") String fullName, ModelMap modelMap) {
		modelMap.put("result", "Hi " + fullName);
		return "demo/result";
	}

	@RequestMapping(value = "sum/{a}/{b}", method = RequestMethod.GET)
	public String sum(@PathVariable("a") int a, @PathVariable("b") int b, ModelMap modelMap) {
		modelMap.put("result", "Sum: " + (a + b));
		return "demo/result";
	}
}
