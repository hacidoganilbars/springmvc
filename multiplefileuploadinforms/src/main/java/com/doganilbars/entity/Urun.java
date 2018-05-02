package com.doganilbars.entity;

import java.util.List;

public class Urun {

	private String id;
	private String isim;
	private double fiyat;
	private List<String> fotograflar;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIsim() {
		return isim;
	}

	public void setIsim(String isim) {
		this.isim = isim;
	}

	public double getFiyat() {
		return fiyat;
	}

	public void setFiyat(double fiyat) {
		this.fiyat = fiyat;
	}

	public List<String> getFotograflar() {
		return fotograflar;
	}

	public void setFotograflar(List<String> fotograflar) {
		this.fotograflar = fotograflar;
	}

}
