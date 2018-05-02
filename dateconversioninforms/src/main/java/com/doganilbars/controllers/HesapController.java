package com.doganilbars.controllers;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doganilbars.entities.Hesap;

@Controller
@RequestMapping(value = "hesap")
public class HesapController {

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		Hesap hesap = new Hesap();
		hesap.setKullaniciAdi("ilbars01");
		hesap.setAdiVeSoyadi("Hacı Doğan İlbars");
		hesap.setDogumTarihi(new Date());
		modelMap.put("hesap", hesap);
		return "hesap/index";
	}

	@RequestMapping(value = "kaydet", method = RequestMethod.POST)
	public String kaydet(@ModelAttribute("hesap") Hesap hesap, ModelMap modelMap) {
		modelMap.put("hesap", hesap);
		return "hesap/basarili";
	}

}
