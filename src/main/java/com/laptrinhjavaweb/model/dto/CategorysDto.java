package com.laptrinhjavaweb.model.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategorysDto {
	private Long id;
	private String name;
	private String description;
}
