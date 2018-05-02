package com.doganilbars.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.doganilbars.entities.Product;

@Repository("productRepository")
public interface IProductRepository extends CrudRepository<Product, Integer> {

	@Query("SELECT name FROM Product WHERE name like %:keyword%")
	public List<String> search(@Param("keyword") String keyword);

}
