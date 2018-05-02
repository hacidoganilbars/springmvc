package com.doganilbars.models;

import java.util.ArrayList;
import java.util.List;

import com.doganilbars.entities.Rol;

public class RolModel {

	private List<Rol> roller;

	public RolModel() {
		this.roller = new ArrayList<Rol>();
		this.roller.add(new Rol("r1", "Rol 1"));
		this.roller.add(new Rol("r2", "Rol 2"));
		this.roller.add(new Rol("r3", "Rol 3"));
		this.roller.add(new Rol("r4", "Rol 4"));
	}

	public List<Rol> findAll() {
		return this.roller;
	}

	public Rol find(String id) {
		for (Rol rol : this.roller) {
			if (rol.getId().equalsIgnoreCase(id)) {
				return rol;
			}
		}
		return null;
	}

}
