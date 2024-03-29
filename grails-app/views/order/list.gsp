
<%@ page import="com.sanitu.floweronline.order.Order" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'order.label', default: 'Order')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-order" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-order" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="status" title="${message(code: 'order.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="orderDate" title="${message(code: 'order.orderDate.label', default: 'Order Date')}" />
					
						<g:sortableColumn property="shippingDate" title="${message(code: 'order.shippingDate.label', default: 'Shipping Date')}" />
					
						<g:sortableColumn property="amount" title="${message(code: 'order.amount.label', default: 'Amount')}" />
					
						<th><g:message code="order.recipient.label" default="Recipient" /></th>
					
						<th><g:message code="order.sender.label" default="Sender" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderInstanceList}" status="i" var="orderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orderInstance.id}">${fieldValue(bean: orderInstance, field: "status")}</g:link></td>
					
						<td><g:formatDate date="${orderInstance.orderDate}" /></td>
					
						<td><g:formatDate date="${orderInstance.shippingDate}" /></td>
					
						<td>${fieldValue(bean: orderInstance, field: "amount")}</td>
					
						<td>${fieldValue(bean: orderInstance, field: "recipient")}</td>
					
						<td>${fieldValue(bean: orderInstance, field: "sender")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
