package com.doganilbars.entities;

public class Urun {

	private String id;
	private String isim;
	private double fiyat;

	public Urun() {
		super();
	}

	public Urun(String id, String isim, double fiyat) {
		super();
		this.id = id;
		this.isim = isim;
		this.fiyat = fiyat;
	}

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

}
