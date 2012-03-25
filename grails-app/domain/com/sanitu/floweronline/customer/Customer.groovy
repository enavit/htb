package com.sanitu.floweronline.customer

import com.sanitu.floweronline.address.Address;
import com.sanitu.floweronline.bank.CreditCard
import com.sanitu.floweronline.order.Order
import com.sanitu.floweronline.user.User

class Customer {
	
	String name
	
	String email
	
	CreditCard creditCard
	
	Address address
	
	static embedded = ['creditCard', 'address']
	
	static mappedBy = [orders: 'sender']
	
	static hasMany = [orders: Order]

    static constraints = {
		name(nullable: false, blank: false)
		email(nullable: true, blank: true, email: true, unique: true)
		creditCard(nullable: true)
		address(nullable: true)
    }
	
	static mapping = {
		version(false)
	}
}
