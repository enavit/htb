<%@ page import="com.sanitu.floweronline.customer.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="customer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${customerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="customer.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${customerInstance?.email}"/>
</div>
<fieldset class="embedded"><legend><g:message code="customer.creditCard.label" default="Credit Card" /></legend>
<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'creditCard.bank', 'error')} ">
	<label for="creditCard.bank">
		<g:message code="customer.creditCard.bank.label" default="Bank" />
		
	</label>
	<g:textField name="bank" value="${creditCardInstance?.bank}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'creditCard.code', 'error')} ">
	<label for="creditCard.code">
		<g:message code="customer.creditCard.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${creditCardInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'creditCard.number', 'error')} ">
	<label for="creditCard.number">
		<g:message code="customer.creditCard.number.label" default="Number" />
		
	</label>
	<g:textField name="number" value="${creditCardInstance?.number}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'creditCard.owner', 'error')} ">
	<label for="creditCard.owner">
		<g:message code="customer.creditCard.owner.label" default="Owner" />
		
	</label>
	<g:textField name="owner" value="${creditCardInstance?.owner}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="customer.address.label" default="Address" /></legend>
<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address.city', 'error')} ">
	<label for="address.city">
		<g:message code="customer.address.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address.description', 'error')} ">
	<label for="address.description">
		<g:message code="customer.address.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${addressInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address.number', 'error')} ">
	<label for="address.number">
		<g:message code="customer.address.number.label" default="Number" />
		
	</label>
	<g:textField name="number" value="${addressInstance?.number}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address.postcode', 'error')} ">
	<label for="address.postcode">
		<g:message code="customer.address.postcode.label" default="Postcode" />
		
	</label>
	<g:textField name="postcode" value="${addressInstance?.postcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address.street', 'error')} ">
	<label for="address.street">
		<g:message code="customer.address.street.label" default="Street" />
		
	</label>
	<g:textField name="street" value="${addressInstance?.street}"/>
</div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'orders', 'error')} ">
	<label for="orders">
		<g:message code="customer.orders.label" default="Orders" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerInstance?.orders?}" var="o">
    <li><g:link controller="order" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="order" action="create" params="['customer.id': customerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'order.label', default: 'Order')])}</g:link>
</li>
</ul>

</div>

