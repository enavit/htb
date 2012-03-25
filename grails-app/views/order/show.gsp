
<%@ page import="com.sanitu.floweronline.order.Order" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'order.label', default: 'Order')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-order" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-order" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list order">
			
				<g:if test="${orderInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="order.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${orderInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.orderDate}">
				<li class="fieldcontain">
					<span id="orderDate-label" class="property-label"><g:message code="order.orderDate.label" default="Order Date" /></span>
					
						<span class="property-value" aria-labelledby="orderDate-label"><g:formatDate date="${orderInstance?.orderDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.shippingDate}">
				<li class="fieldcontain">
					<span id="shippingDate-label" class="property-label"><g:message code="order.shippingDate.label" default="Shipping Date" /></span>
					
						<span class="property-value" aria-labelledby="shippingDate-label"><g:formatDate date="${orderInstance?.shippingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="order.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${orderInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.recipient}">
				<li class="fieldcontain">
					<span id="recipient-label" class="property-label"><g:message code="order.recipient.label" default="Recipient" /></span>
					
						<span class="property-value" aria-labelledby="recipient-label"><g:link controller="customer" action="show" id="${orderInstance?.recipient?.id}">${orderInstance?.recipient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.sender}">
				<li class="fieldcontain">
					<span id="sender-label" class="property-label"><g:message code="order.sender.label" default="Sender" /></span>
					
						<span class="property-value" aria-labelledby="sender-label"><g:link controller="customer" action="show" id="${orderInstance?.sender?.id}">${orderInstance?.sender?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.anonymous}">
				<li class="fieldcontain">
					<span id="anonymous-label" class="property-label"><g:message code="order.anonymous.label" default="Anonymous" /></span>
					
						<span class="property-value" aria-labelledby="anonymous-label"><g:formatBoolean boolean="${orderInstance?.anonymous}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.items}">
				<li class="fieldcontain">
					<span id="items-label" class="property-label"><g:message code="order.items.label" default="Items" /></span>
					
						<g:each in="${orderInstance.items}" var="i">
						<span class="property-value" aria-labelledby="items-label"><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${orderInstance?.id}" />
					<g:link class="edit" action="edit" id="${orderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
