package com.doganilbars.services;

import com.doganilbars.entities.Product;

public interface IProductService {

	public Iterable<Product> findAll();

	public void delete(int id);
}
