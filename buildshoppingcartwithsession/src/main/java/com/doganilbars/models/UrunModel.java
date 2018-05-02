package com.doganilbars.models;

import java.util.ArrayList;
import java.util.List;

import com.doganilbars.entities.Urun;

public class UrunModel {

	private List<Urun> urunler;

	public UrunModel() {
		super();
		this.urunler = new ArrayList<Urun>();
		this.urunler.add(new Urun("u01", "isim 1", "thumb1.gif", 20));
		this.urunler.add(new Urun("u02", "isim 2", "thumb2.gif", 21));
		this.urunler.add(new Urun("u03", "isim 3", "thumb3.gif", 22));
	}

	public List<Urun> findAll() {
		return this.urunler;
	}

	public Urun find(String id) {
		for (Urun urun : this.urunler) {
			if (urun.getId().equalsIgnoreCase(id)) {
				return urun;
			}
		}
		return null;
	}

}
