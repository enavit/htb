
<%@ page import="com.sanitu.floweronline.item.Item" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="item.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${itemInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="item.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${itemInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="item.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${itemInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="item.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${itemInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.imagePath}">
				<li class="fieldcontain">
					<span id="imagePath-label" class="property-label"><g:message code="item.imagePath.label" default="Image Path" /></span>
					
						<span class="property-value" aria-labelledby="imagePath-label"><g:fieldValue bean="${itemInstance}" field="imagePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="item.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${itemInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${itemInstance?.id}" />
					<g:link class="edit" action="edit" id="${itemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
