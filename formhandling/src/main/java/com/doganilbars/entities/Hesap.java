package com.doganilbars.entities;

public class Hesap {

	private String id;
	private String kullaniciAdi;
	private String sifre;
	private String aciklama;
	private boolean durum;
	private String[] diller;
	private String cinsiyet;
	private String rol;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getKullaniciAdi() {
		return kullaniciAdi;
	}

	public void setKullaniciAdi(String kullaniciAdi) {
		this.kullaniciAdi = kullaniciAdi;
	}

	public String getSifre() {
		return sifre;
	}

	public void setSifre(String sifre) {
		this.sifre = sifre;
	}

	public String getAciklama() {
		return aciklama;
	}

	public void setAciklama(String aciklama) {
		this.aciklama = aciklama;
	}

	public boolean isDurum() {
		return durum;
	}

	public void setDurum(boolean durum) {
		this.durum = durum;
	}

	public String[] getDiller() {
		return diller;
	}

	public void setDiller(String[] diller) {
		this.diller = diller;
	}

	public String getCinsiyet() {
		return cinsiyet;
	}

	public void setCinsiyet(String cinsiyet) {
		this.cinsiyet = cinsiyet;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

}
