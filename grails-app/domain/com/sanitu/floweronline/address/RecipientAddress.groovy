package com.sanitu.floweronline.address

import com.sanitu.floweronline.order.Order

class RecipientAddress {
	
	String recipient
	
	Address address
	
	static belongsTo = Order
	
	static embedded = ['address']

    static constraints = {
		recipient(nullable: false, blank: false)
    }
	
	static mapping = {
		version(false)
	}
}
