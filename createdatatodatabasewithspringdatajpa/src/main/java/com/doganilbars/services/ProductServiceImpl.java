package com.doganilbars.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doganilbars.entities.Product;
import com.doganilbars.repositories.IProductRepository;

@Transactional
@Service("productService")
public class ProductServiceImpl implements IProductService {

	@Autowired
	private IProductRepository productRepository;

	@Override
	public Product create(Product product) {
		return productRepository.save(product);
	}

}
