package com.doganilbars.entities;

public class Urun {

	private String id;
	private String isim;
	private String fotograf;
	private double fiyat;

	public Urun() {
		super();
	}

	public Urun(String id, String isim, String fotograf, double fiyat) {
		super();
		this.id = id;
		this.isim = isim;
		this.fotograf = fotograf;
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

	public String getFotograf() {
		return fotograf;
	}

	public void setFotograf(String fotograf) {
		this.fotograf = fotograf;
	}

	public double getFiyat() {
		return fiyat;
	}

	public void setFiyat(double fiyat) {
		this.fiyat = fiyat;
	}

}
