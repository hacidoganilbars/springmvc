package com.doganilbars.entities;

import javax.validation.constraints.NotEmpty;

import com.doganilbars.interfaces.Group1;
import com.doganilbars.interfaces.Group2;

public class Account {

	@NotEmpty(groups= {Group1.class,Group2.class})
	private String username;

	@NotEmpty(groups= {Group1.class})
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
