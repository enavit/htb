<%@ page import="com.sanitu.floweronline.customer.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="customer.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="20" pattern="${customerInstance.constraints.username.matches}" required="" value="${customerInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="customer.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" required="" value="${customerInstance?.password}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="customer.repeat.password.label" default="Repeat Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="repeatedPassword" required="" value=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="customer.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${customerInstance?.email}"/>
</div>

<%-- <div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="customer.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="role" required="" value="${customerInstance?.role}"/>
</div>
--%>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="customer.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${customerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="customer.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${customerInstance?.lastName}"/>
</div>
<fieldset class="embedded"><legend><g:message code="customer.address.label" default="Address" /></legend>
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
</fieldset><fieldset class="embedded"><legend><g:message code="customer.creditCard.label" default="Credit Card" /></legend>
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
</fieldset>
<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'orders', 'error')} ">
	<label for="orders">
		<g:message code="customer.orders.label" default="Orders" />
		
	</label>
	<g:select name="orders" from="${com.sanitu.floweronline.order.Order.list()}" multiple="multiple" optionKey="id" size="5" value="${customerInstance?.orders*.id}" class="many-to-many"/>
</div>

