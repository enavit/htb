package com.sanitu.floweronline.order

import com.sanitu.floweronline.address.InvoiceAddress;
import com.sanitu.floweronline.address.RecipientAddress;
import com.sanitu.floweronline.item.Item

class Order {

	String status
	
	Date orderDate
	
	Date shippingDate
	
	double amount
	
	InvoiceAddress invoiceAddress
	
	RecipientAddress recipientAddress
	
	static hasMany = [items: Item]
	
    static constraints = {
		status(nullable: false, blank: false)
		orderDate()
		shippingDate(min: new Date())
		amount(nullable: false, min: 0D)
    }
	
	static mapping = {
		table 'ORDERS'
		version(false)
	}
	
}
