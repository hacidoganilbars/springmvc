package com.doganilbars.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doganilbars.conversion.RolEditoru;
import com.doganilbars.entities.Hesap;
import com.doganilbars.entities.Rol;
import com.doganilbars.models.RolModel;

@Controller
@RequestMapping(value = "hesap")
public class HesapController {

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(Rol.class, new RolEditoru());
	}

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		RolModel rolModel = new RolModel();
		Hesap hesap = new Hesap();
		hesap.setRol(rolModel.find("r3"));
		modelMap.put("hesap", hesap);
		modelMap.put("roller", rolModel.findAll());
		return "hesap/index";
	}

	@RequestMapping(value = "kaydet", method = RequestMethod.POST)
	public String kaydet(@ModelAttribute("hesap") Hesap hesap, ModelMap modelMap) {
		modelMap.put("hesap", hesap);
		return "hesap/basarili";

	}

}
