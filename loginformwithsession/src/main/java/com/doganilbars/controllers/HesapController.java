package com.doganilbars.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "hesap")
public class HesapController {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "hesap/index";
	}

	@RequestMapping(value = "giris", method = RequestMethod.POST)
	public String giris(@RequestParam("kullaniciadi") String kullaniciadi, @RequestParam("sifre") String sifre,
			HttpSession session, ModelMap modelMap) {
		if (kullaniciadi.equalsIgnoreCase("ilbars01") && sifre.equalsIgnoreCase("123")) {
			return "hesap/basarili";
		} else {
			modelMap.put("hata", "Geçersiz Hesap");
			return "hesap/index";
		}
	}
	
	@RequestMapping(value="cikis",method=RequestMethod.GET)
	public String cikis(HttpSession session) {
		session.removeAttribute("kullaniciadi");
		
		return "redirect:../hesap";
		
	}
}
