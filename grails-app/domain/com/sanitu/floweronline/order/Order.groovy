package com.sanitu.floweronline.order

import com.sanitu.floweronline.customer.Customer
import com.sanitu.floweronline.item.Item

class Order {

	String status
	
	Date orderDate
	
	Date shippingDate
	
	double amount
	
	Customer recipient
	
	Customer sender
	
	boolean anonymous
	
	static hasMany = [items: Item]
	
    static constraints = {
		status(nullable: false, blank: false)
		orderDate()
		shippingDate(min: new Date())
		amount(nullable: false, min: 0D)
		recipient(nullable: false)
		sender(nullable: false)
    }
	
	static mapping = {
		table 'ORDERS'
		version(false)
	}
	
}
