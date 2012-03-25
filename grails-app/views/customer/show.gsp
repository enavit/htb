
<%@ page import="com.sanitu.floweronline.customer.Customer" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customer">
			
				<g:if test="${customerInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="customer.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${customerInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="customer.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${customerInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="customer.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${customerInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="customer.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${customerInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="customer.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${customerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="customer.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${customerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="customer.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${customerInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.creditCard}">
				<li class="fieldcontain">
					<span id="creditCard-label" class="property-label"><g:message code="customer.creditCard.label" default="Credit Card" /></span>
					
						<span class="property-value" aria-labelledby="creditCard-label"><g:fieldValue bean="${customerInstance}" field="creditCard"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.orders}">
				<li class="fieldcontain">
					<span id="orders-label" class="property-label"><g:message code="customer.orders.label" default="Orders" /></span>
					
						<g:each in="${customerInstance.orders}" var="o">
						<span class="property-value" aria-labelledby="orders-label"><g:link controller="order" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${customerInstance?.id}" />
					<g:link class="edit" action="edit" id="${customerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
