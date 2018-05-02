package com.doganilbars.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doganilbars.entities.Urun;

@Controller
@RequestMapping(value = "demo")
public class DemoController {

	@RequestMapping(method = RequestMethod.GET)
	public String index(HttpSession session) {

		session.setAttribute("yas", 20);
		session.setAttribute("kullaniciadi", "ilbars01");

		// Assign Object
		Urun urun = new Urun("u01", "isim 1", 15);
		session.setAttribute("urun", urun);

		// Assign Object List
		List<Urun> urunler = new ArrayList<Urun>();
		urunler.add(new Urun("u01", "isim 1", 15));
		urunler.add(new Urun("u02", "isim 2", 25));
		urunler.add(new Urun("u03", "isim 3", 21));
		session.setAttribute("urunler", urunler);

		return "demo/index";

	}

}
