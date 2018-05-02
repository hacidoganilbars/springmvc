package com.doganilbars.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.doganilbars.entities.Account;

public class AccountValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {

		return Account.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub

	}

}
