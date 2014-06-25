/**
 * 
 */
package com.ctdc.training;

import atg.nucleus.GenericService;

/**
 * @author rsankaran
 * 
 */
public class ComponentA extends GenericService {
	
	public String firstName;
	public String lastName;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}
