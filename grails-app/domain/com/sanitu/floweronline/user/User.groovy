package com.sanitu.floweronline.user

import com.sanitu.floweronline.customer.Customer;

class User {
	
	String username

	String password
	
	String email
	
	String role
	
	Customer customer

    static constraints = {
		username(nullable: false, blank: false, size: 3..20, matches: '[^|:]*[a-zA-Z]+[^|:]*')
		password(nullable: false, blank: false)
		email(nullable: false, blank: false, email: true)
		role(nullable: false, blank: false)
		customer(nullable: true)
	}
	
	static mapping = {
		version(false)
	}
}
