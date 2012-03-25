<%@ page import="com.sanitu.floweronline.item.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="item.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${itemInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="item.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${itemInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="item.category.label" default="Category" />
		
	</label>
	<g:select name="category"
          from="${categories}"
          value="${itemInstance?.category}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="item.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="price" min="0.0" required="" value="${fieldValue(bean: itemInstance, field: 'price')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'imagePath', 'error')} ">
	<label for="imagePath">
		<g:message code="item.imagePath.label" default="Image Path" />
		
	</label>
	<g:textField name="imagePath" value="${itemInstance?.imagePath}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="item.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="quantity" min="0" required="" value="${fieldValue(bean: itemInstance, field: 'quantity')}"/>
</div>

