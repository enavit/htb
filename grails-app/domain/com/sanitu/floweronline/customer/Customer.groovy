package com.sanitu.floweronline.customer

import com.sanitu.floweronline.address.Address;
import com.sanitu.floweronline.bank.CreditCard
import com.sanitu.floweronline.order.Order
import com.sanitu.floweronline.user.User

class Customer extends User {
	
	String firstName
	
	String lastName
	
	CreditCard creditCard
	
	Address address
	
	static embedded = ['creditCard', 'address']
	
	static hasMany = [orders: Order]

    static constraints = {
		firstName(nullable: false, blank: false)
		lastName(nullable: false, blank: false)
		creditCard(nullable: true)
		address(nullable: true)
    }
	
	static mapping = {
		version(false)
	}
}
