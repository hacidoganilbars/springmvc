package com.doganilbars.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.doganilbars.services.IProductService;

@Controller
@RequestMapping("product")
public class ProductController {

	@Autowired
	private IProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "product/index";
	}
	
	@RequestMapping(value="search",method=RequestMethod.GET)
	@ResponseBody
	public List<String> search(HttpServletRequest request){
		return productService.search(request.getParameter("term"));
	}
}
