package com.doganilbars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.doganilbars.entities.Urun;

@Controller
@RequestMapping(value = "demo")
public class DemoController {

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("urun", new Urun());
		return "demo/index";
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(@ModelAttribute("urun") Urun urun, @RequestParam("yas") int yas,
			@RequestParam("kullaniciadi") String kullaniciadi, RedirectAttributes redirectAttributes) {

		redirectAttributes.addFlashAttribute("yas", yas);
		redirectAttributes.addFlashAttribute("kullaniciadi", kullaniciadi);
		redirectAttributes.addFlashAttribute("urun", urun);

		return "redirect:./showFlashAttributes";

	}

	@RequestMapping(value = "showFlashAttributes", method = RequestMethod.GET)
	public String showFlashAttributes(RedirectAttributes redirectAttributes) {
		return "demo/result";
	}

}
