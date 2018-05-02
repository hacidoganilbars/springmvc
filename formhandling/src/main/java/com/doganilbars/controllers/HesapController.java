package com.doganilbars.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doganilbars.entities.Dil;
import com.doganilbars.entities.Hesap;
import com.doganilbars.entities.Rol;

@Controller
@RequestMapping(value="hesap")
public class HesapController {

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {

		List<Dil> diller = new ArrayList<Dil>();
		diller.add(new Dil("d1", "Dil 1"));
		diller.add(new Dil("d2", "Dil 2"));
		diller.add(new Dil("d3", "Dil 3"));
		diller.add(new Dil("d4", "Dil 4"));
		modelMap.put("diller", diller);

		List<Rol> roller = new ArrayList<Rol>();
		roller.add(new Rol("r1", "Rol 1"));
		roller.add(new Rol("r2", "Rol 2"));
		roller.add(new Rol("r3", "Rol 3"));
		roller.add(new Rol("r4", "Rol 4"));
		modelMap.put("roller", roller);

		Hesap hesap = new Hesap();
		hesap.setId("h1");
		hesap.setCinsiyet("Erkek");
		hesap.setDurum(true);
		hesap.setDiller(new String[] { "d2", "d4" });
		modelMap.put("hesap", hesap);

		return "hesap/index";
	}

	@RequestMapping(value = "kayit", method = RequestMethod.POST)
	public String kayit(@ModelAttribute("hesap") Hesap hesap, ModelMap modelMap) {
		modelMap.put("hesap", hesap);
		return "hesap/basarili";
	}

}
