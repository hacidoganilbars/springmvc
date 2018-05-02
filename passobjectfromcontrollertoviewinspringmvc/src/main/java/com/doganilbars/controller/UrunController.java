package com.doganilbars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doganilbars.entities.Urun;

@Controller
@RequestMapping("urun")
public class UrunController {

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		Urun urun = new Urun("u01", "ayıcık", "thumb1.gif", 20, 4);
		modelMap.put("urun", urun);
		return "urun/index";
	}
}
