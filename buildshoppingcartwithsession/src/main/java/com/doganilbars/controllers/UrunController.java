package com.doganilbars.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doganilbars.models.UrunModel;

@Controller
@RequestMapping(value = "urun")
public class UrunController {

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		UrunModel urunModel = new UrunModel();
		modelMap.put("urunler", urunModel.findAll());
		return "urun/index";
	}

}
