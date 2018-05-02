package com.doganilbars.entities;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Hesap {

	private String kullaniciAdi;
	private String adiVeSoyadi;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dogumTarihi;

	public String getKullaniciAdi() {
		return kullaniciAdi;
	}

	public void setKullaniciAdi(String kullaniciAdi) {
		this.kullaniciAdi = kullaniciAdi;
	}

	public String getAdiVeSoyadi() {
		return adiVeSoyadi;
	}

	public void setAdiVeSoyadi(String adiVeSoyadi) {
		this.adiVeSoyadi = adiVeSoyadi;
	}

	public Date getDogumTarihi() {
		return dogumTarihi;
	}

	public void setDogumTarihi(Date dogumTarihi) {
		this.dogumTarihi = dogumTarihi;
	}

}
