<%@ page import="com.sanitu.floweronline.order.Order" %>


<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'status', 'error')} ">
	<label for="category">
		<g:message code="order.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status"
          from="${orderStatusList}"
          value="${orderInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'orderDate', 'error')} required">
	<label for="orderDate">
		<g:message code="order.orderDate.label" default="Order Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="orderDate" precision="day"  value="${orderInstance?.orderDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'shippingDate', 'error')} required">
	<label for="shippingDate">
		<g:message code="order.shippingDate.label" default="Shipping Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="shippingDate" precision="day"  value="${orderInstance?.shippingDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="order.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="amount" min="0.0" required="" value="${fieldValue(bean: orderInstance, field: 'amount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'recipient', 'error')} required">
	<label for="recipient">
		<g:message code="order.recipient.label" default="Recipient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="recipient" name="recipient.id" from="${com.sanitu.floweronline.customer.Customer.list()}" optionKey="id" required="" value="${orderInstance?.recipient?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'sender', 'error')} required">
	<label for="sender">
		<g:message code="order.sender.label" default="Sender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sender" name="sender.id" from="${com.sanitu.floweronline.customer.Customer.list()}" optionKey="id" required="" value="${orderInstance?.sender?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'anonymous', 'error')} ">
	<label for="anonymous">
		<g:message code="order.anonymous.label" default="Anonymous" />
		
	</label>
	<g:checkBox name="anonymous" value="${orderInstance?.anonymous}" />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="order.items.label" default="Items" />
		
	</label>
	<g:select name="items" from="${com.sanitu.floweronline.item.Item.list()}" multiple="multiple" optionKey="id" size="5" value="${orderInstance?.items*.id}" class="many-to-many"/>
</div>

