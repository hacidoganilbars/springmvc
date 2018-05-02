package com.doganilbars.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doganilbars.repositories.IProductRepository;

@Transactional
@Service("productService")
public class ProductServiceImpl implements IProductService {

	@Autowired
	IProductRepository productRepository;

	@Override
	public List<String> search(String keyword) {
		return productRepository.search(keyword);
	}

}
