package com.doganilbars.conversion;

import java.beans.PropertyEditorSupport;

import com.doganilbars.entities.Rol;
import com.doganilbars.models.RolModel;

public class RolEditoru extends PropertyEditorSupport {

	@Override
	public void setAsText(String id) throws IllegalArgumentException {
		try {
			RolModel rolModel = new RolModel();
			this.setValue(rolModel.find(id));
		} catch (Exception e) {
			this.setValue(null);
		}
	}

	@Override
	public String getAsText() {
		Rol rol = (Rol) getValue();
		return rol.getId();
	}

}
