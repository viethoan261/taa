package com.laptrinhjavaweb.model.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserRegisterRequest {
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String address;
}
