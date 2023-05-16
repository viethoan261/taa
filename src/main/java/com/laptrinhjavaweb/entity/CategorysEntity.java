package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "categorys")
@Data
public class CategorysEntity {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "name", unique = true)
	private String name;
	
	@Column(name = "description", columnDefinition = "TEXT")
	private String description;
	
	@OneToMany(mappedBy = "categoryEntity")
	private List<ProductsEntity> productsEntities = new ArrayList<>();
}
