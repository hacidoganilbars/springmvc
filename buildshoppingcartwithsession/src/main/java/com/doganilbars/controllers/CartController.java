package com.doganilbars.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doganilbars.entities.Materyal;
import com.doganilbars.models.UrunModel;

@Controller
@RequestMapping(value = "cart")
public class CartController {

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index() {
		return "cart/index";
	}

	@RequestMapping(value = "buy/{id}", method = RequestMethod.GET)
	public String buy(@PathVariable("id") String id, HttpSession session) {

		UrunModel urunModel = new UrunModel();
		if (session.getAttribute("cart") == null) {
			List<Materyal> cart = new ArrayList<Materyal>();
			cart.add(new Materyal(urunModel.find(id), 1));
			session.setAttribute("cart", cart);
		} else {
			@SuppressWarnings("unchecked")
			List<Materyal> cart = (List<Materyal>) session.getAttribute("cart");
			int index = this.exists(id, cart);
			if (index == -1) {
				cart.add(new Materyal(urunModel.find(id), 1));
			} else {
				int miktar = cart.get(index).getMiktar() + 1;
				cart.get(index).setMiktar(miktar);
			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/cart/index";
	}

	@RequestMapping(value = "remove/{id}", method = RequestMethod.GET)
	public String remove(@PathVariable("id") String id, HttpSession session) {
//		UrunModel urunModel = new UrunModel();
		@SuppressWarnings("unchecked")
		List<Materyal> cart = (List<Materyal>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "redirect:/cart/index";
	}

	private int exists(String id, List<Materyal> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getUrun().getId().equalsIgnoreCase(id)) {
				return i;
			}
		}
		return -1;
	}
}
