package com.sanitu.floweronline.item

class Item {
	
	String name
	
	String description
	
	String category
	
	double price
	
	/**
	 * At the moment the imagePath is the absolute path on the server
	 * ex.: www.mydomain.com/images/imagename.png
	 * to use it with javascript or html maybe we just need the relative path
	 * ex.: /images/imagename.png
	 * in this case we have to get the relative path from the imagePath
	 * (use the function split or substring of String or what ever)
	 * and set it in a variable before we render this variable to the views
	 */
	String imagePath
	
	int quantity
	
    static constraints = {
		name(nullable: false, blank: false, unique: true)
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
