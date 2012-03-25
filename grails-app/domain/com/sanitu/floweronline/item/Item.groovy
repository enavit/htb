package com.sanitu.floweronline.item

class Item {
	
	String name
	
	String description
	
	String category
	
	double price
	
	String imagePath
	
	int quantity
	
    static constraints = {
		name(nullable: false, blank: false)
		description(nullable: true, blank: true)
		category(nullable: false)
		price(nullable: false, min: 0D)
		imagePath(nullable: true, blank: true)
		quantity(nullable: false, min: 0)
    }
	
	static mapping = {
		version(false)
		description(type: 'text')
	}
	
	String toString() {
		name
	}
}
