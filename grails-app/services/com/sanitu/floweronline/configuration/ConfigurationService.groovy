package com.sanitu.floweronline.configuration

import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes
import org.springframework.context.ApplicationContext

class ConfigurationService {
	
	static transactional = false
	
	ApplicationContext applicationContext = (ApplicationContext) ServletContextHolder.getServletContext().getAttribute(GrailsApplicationAttributes.APPLICATION_CONTEXT);
	
	static final String IMAGE_TYPE = ".png"

    def getRoleList() {
		["admin", "customer"]
    }
	
	def getOrderStatusList() {
		String open = applicationContext.getMessage("order.status.open", null, Locale.defaultLocale)
		String progress = applicationContext.getMessage("order.status.progress", null, Locale.defaultLocale)
		String close = applicationContext.getMessage("order.status.close", null, Locale.defaultLocale)
		[open, progress, close]
	}
	
	def getCategoryList() {
		String birthday = applicationContext.getMessage("category.birthday", null, Locale.defaultLocale)
		String wedding = applicationContext.getMessage("category.wedding", null, Locale.defaultLocale)
		[birthday, wedding]
	}
}
