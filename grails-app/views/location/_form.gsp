<%@ page import="com.washu.dashboard.Location" %>



<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'centers', 'error')} ">
	<label for="centers">
		<g:message code="location.centers.label" default="Centers" />
		
	</label>
	<g:select name="centers" from="${com.washu.dashboard.Center.list()}" multiple="multiple" optionKey="id" size="5" value="${locationInstance?.centers*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="location.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${locationInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="location.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${locationInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'upComingCentre', 'error')} ">
	<label for="upComingCentre">
		<g:message code="location.upComingCentre.label" default="Up Coming Centre" />
		
	</label>
	<g:checkBox name="upComingCentre" value="${locationInstance?.upComingCentre}" />

</div>

