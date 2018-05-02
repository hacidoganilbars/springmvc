package com.doganilbars.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import com.doganilbars.entities.Urun;

@Controller
@RequestMapping(value = "urun")
public class UrunController implements ServletContextAware {

	private ServletContext servletContext;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("urun", new Urun());
		return "urun/index";
	}

	@RequestMapping(value = "kaydet", method = RequestMethod.POST)
	public String kaydet(@ModelAttribute("urun") Urun urun, @RequestParam(value = "file") MultipartFile file,
			ModelMap modelMap) {
		String dosyaAdi = resimKaydet(file);
		urun.setFotograf(dosyaAdi);
		modelMap.put("urun", urun);
		return "urun/basarili";
	}

	private String resimKaydet(MultipartFile multipartFile) {
		try {

			byte[] bytes = multipartFile.getBytes();
			Path path = Paths
					.get(servletContext.getRealPath("/resources/images/" + multipartFile.getOriginalFilename()));
			Files.write(path, bytes);
			return multipartFile.getOriginalFilename();

		} catch (IOException e) {
			return null;
		}
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;

	}

}
