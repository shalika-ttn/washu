<%@ page import="com.washu.dashboard.Center" %>



<div class="fieldcontain ${hasErrors(bean: centerInstance, field: 'websiteURL', 'error')} ">
	<label for="websiteURL">
		<g:message code="center.websiteURL.label" default="Website URL" />
		
	</label>
	<g:textField name="websiteURL" value="${centerInstance?.websiteURL}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: centerInstance, field: 'serverURL', 'error')} required">
	<label for="serverURL">
		<g:message code="center.serverURL.label" default="Server URL" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="serverURL" required="" value="${centerInstance?.serverURL}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: centerInstance, field: 'locations', 'error')} ">
	<label for="locations">
		<g:message code="center.locations.label" default="Locations" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: centerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="center.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${centerInstance?.name}"/>

</div>

