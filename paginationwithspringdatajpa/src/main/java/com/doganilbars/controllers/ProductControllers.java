package com.doganilbars.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doganilbars.entities.Product;
import com.doganilbars.service.IProductService;

@Controller
@RequestMapping("product")
public class ProductControllers {

	@Autowired
	private IProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap modelMap) {
		List<Product> products = (List<Product>) productService.findAll();
		PagedListHolder<Product> pagedListHolder = new PagedListHolder<Product>(products);
		int page = ServletRequestUtils.getIntParameter(request, "p",0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(3);
		modelMap.put("pagedListHolder", pagedListHolder);
		return "product/index";
	}

}
