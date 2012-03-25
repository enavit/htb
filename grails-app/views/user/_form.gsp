<%@ page import="com.sanitu.floweronline.user.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="20" pattern="${userInstance.constraints.username.matches}" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.repeat.password.label" default="Repeat Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="repeatedPassword" required="" value=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="role" required="" value="${userInstance?.role}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'customer', 'error')} ">
	<label for="customer">
		<g:message code="user.customer.label" default="Customer" />
		
	</label>
	<g:select id="customer" name="customer.id" from="${com.sanitu.floweronline.customer.Customer.list()}" optionKey="id" value="${userInstance?.customer?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

