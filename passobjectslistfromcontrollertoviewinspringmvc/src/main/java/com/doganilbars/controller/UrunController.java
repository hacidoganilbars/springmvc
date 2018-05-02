package com.doganilbars.controller;

import java.util.ArrayList;
import java.util.List;

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
		List<Urun> urunler = new ArrayList<Urun>();
		urunler.add(new Urun("u01", "isim 1", "thumb1.gif", 20, 4));
		urunler.add(new Urun("u02", "isim 2", "thumb2.gif", 21, 5));
		urunler.add(new Urun("u03", "isim 3", "thumb3.gif", 22, 6));
		modelMap.put("urunler", urunler);
		return "urun/index";
	}
}
