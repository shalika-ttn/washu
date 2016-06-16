<%@ page import="com.washu.dashboard.Testing" %>



<div class="fieldcontain ${hasErrors(bean: testingInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="testing.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" value="${testingInstance.age}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: testingInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="testing.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${testingInstance?.name}"/>

</div>

