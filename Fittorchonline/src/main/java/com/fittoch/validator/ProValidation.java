package com.fittoch.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.fittorch.model.Product;

@Component
public class ProValidation implements Validator {

	@Override
	public boolean supports(Class<?> s) {
		return Product.class.isAssignableFrom(s);
		
	}

	@Override
	public void validate(Object ob, Errors errors) {
		Product probean=(Product)ob;
	}

}
