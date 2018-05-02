package com.doganilbars.entities;

public class Dil {

	private String id;
	private String isim;

	public Dil() {
		super();
	}

	public Dil(String id, String isim) {
		super();
		this.id = id;
		this.isim = isim;
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

}
