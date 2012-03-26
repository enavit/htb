package com.sanitu.floweronline.item

import org.springframework.dao.DataIntegrityViolationException

class ItemController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	def configurationService
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [itemInstanceList: Item.list(params), itemInstanceTotal: Item.count()]
    }

    def create() {
        [itemInstance: new Item(params), categories: configurationService.categoryList]
    }

    def save() {
        def itemInstance = new Item(params)
		
		def selectedImage = request.getFile('imagePath')
		
		if (!selectedImage?.empty && selectedImage.size <= 1024*500) { // ensures file size less than 500Kb
			/* here we need to get the absolute path to upload the image into the server
			 * without the absolute path the image will be uploaded into the root directory, where the server is installed (ex.: /var)
			 * and we haven't access to this directory
			 */
			File imagesFolder = grailsApplication.parentContext.getResource("images").file
			def absolutePath = imagesFolder.absolutePath
			def imageCategoryDirPath = absolutePath + File.separator + itemInstance.category + File.separator
			def imageCategoryDir = new File(imageCategoryDirPath)
			if (!imageCategoryDir || !imageCategoryDir?.isDirectory()) {
				imageCategoryDir = new File(imageCategoryDirPath).mkdir()
			}
			itemInstance.imagePath = imageCategoryDirPath + itemInstance.name + configurationService.IMAGE_TYPE
			// upload photo into server with the absolute path
			selectedImage.transferTo(new File(itemInstance.imagePath))
			// response.sendError(200, 'Done')
		}
		
        if (!itemInstance.save(flush: true)) {
            render(view: "create", model: [itemInstance: itemInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'item.label', default: 'Item'), itemInstance.id])
        redirect(action: "show", id: itemInstance.id)
    }

    def show() {
        def itemInstance = Item.get(params.id)
        if (!itemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
            return
        }

        [itemInstance: itemInstance]
    }

    def edit() {
        def itemInstance = Item.get(params.id)
        if (!itemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
            return
        }

        [itemInstance: itemInstance]
    }

    def update() {
        def itemInstance = Item.get(params.id)
        if (!itemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (itemInstance.version > version) {
                itemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'item.label', default: 'Item')] as Object[],
                          "Another user has updated this Item while you were editing")
                render(view: "edit", model: [itemInstance: itemInstance])
                return
            }
        }

        itemInstance.properties = params

        if (!itemInstance.save(flush: true)) {
            render(view: "edit", model: [itemInstance: itemInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'item.label', default: 'Item'), itemInstance.id])
        redirect(action: "show", id: itemInstance.id)
    }

    def delete() {
        def itemInstance = Item.get(params.id)
        if (!itemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
            return
        }

        try {
            itemInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'item.label', default: 'Item'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
