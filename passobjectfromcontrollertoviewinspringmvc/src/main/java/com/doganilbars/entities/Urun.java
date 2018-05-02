package com.doganilbars.entities;

public class Urun {
	private String id;

	private String isim;

	private String fotograf;

	private double fiyat;

	private int miktar;

	public Urun() {
		super();
	}

	public Urun(String id, String isim, String fotograf, double fiyat, int miktar) {
		super();
		this.id = id;
		this.isim = isim;
		this.fotograf = fotograf;
		this.fiyat = fiyat;
		this.miktar = miktar;
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

	public int getMiktar() {
		return miktar;
	}

	public void setMiktar(int miktar) {
		this.miktar = miktar;
	}

}
