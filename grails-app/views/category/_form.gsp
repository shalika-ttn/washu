<%@ page import="com.washu.dashboard.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'helpText', 'error')} ">
	<label for="helpText">
		<g:message code="category.helpText.label" default="Help Text" />
		
	</label>
	<g:textField name="helpText" value="${categoryInstance?.helpText}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'displayOrder', 'error')} required">
	<label for="displayOrder">
		<g:message code="category.displayOrder.label" default="Display Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="displayOrder" type="number" value="${categoryInstance.displayOrder}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${categoryInstance?.name}"/>

</div>

