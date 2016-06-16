<%@ page import="com.washu.dashboard.Testing2" %>



<div class="fieldcontain ${hasErrors(bean: testing2Instance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="testing2.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" value="${testing2Instance.age}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: testing2Instance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="testing2.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${testing2Instance?.name}"/>

</div>

