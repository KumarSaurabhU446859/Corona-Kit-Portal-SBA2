package com.eval.coronakit.entity;

import javax.persistence.Embeddable;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Embeddable
public class UserAddress {
	
	@NotNull(message="Address Line 1 is mandatory")
	@NotBlank(message="Address Line 1 is mandatory")
	private String Address1;
	
	@NotNull(message="Address Line 2 is mandatory")
	@NotBlank(message="Address Line 2 is mandatory")
	private String Address2;
	
	@NotNull(message="City is mandatory")
	@NotBlank(message="City is mandatory")
	private String City;
	
	@NotNull(message="State is mandatory")
	@NotBlank(message="State is mandatory")
	private String State;
	
	@NotNull(message="Pin Code is mandatory")
	private Integer PinCode;
	
	public String getAddress1() {
		return Address1;
	}
	public void setAddress1(String address1) {
		Address1 = address1;
	}
	public String getAddress2() {
		return Address2;
	}
	public void setAddress2(String address2) {
		Address2 = address2;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public Integer getPinCode() {
		return PinCode;
	}
	public void setPinCode(Integer pinCode) {
		PinCode = pinCode;
	}
	
}
