package com.sanitu.floweronline.address

import com.sanitu.floweronline.bank.CreditCard
import com.sanitu.floweronline.order.Order

class InvoiceAddress {
	
	String firstName
	
	String lastName
	
	CreditCard creditCard
	
	Address address
	
	static embedded = ['creditCard', 'address']
	
	static belongsTo = Order

    static constraints = {
		firstName(nullable: false, blank: false)
		lastName(nullable: false, blank: false)
    }
	
	static mapping = {
		tablePerHierarchy(true)
	}
	
}
