package com.doganilbars.entities;

public class Materyal {
	private Urun urun;
	private int miktar;

	public Materyal() {
		super();
	}

	public Materyal(Urun urun, int miktar) {
		super();
		this.urun = urun;
		this.miktar = miktar;
	}

	public Urun getUrun() {
		return urun;
	}

	public void setUrun(Urun urun) {
		this.urun = urun;
	}

	public int getMiktar() {
		return miktar;
	}

	public void setMiktar(int miktar) {
		this.miktar = miktar;
	}

}
