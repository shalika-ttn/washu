
<%@ page import="com.washu.dashboard.Center" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'center.label', default: 'Center')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-center" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-center" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list center">
			
				<g:if test="${centerInstance?.websiteURL}">
				<li class="fieldcontain">
					<span id="websiteURL-label" class="property-label"><g:message code="center.websiteURL.label" default="Website URL" /></span>
					
						<span class="property-value" aria-labelledby="websiteURL-label"><g:fieldValue bean="${centerInstance}" field="websiteURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${centerInstance?.serverURL}">
				<li class="fieldcontain">
					<span id="serverURL-label" class="property-label"><g:message code="center.serverURL.label" default="Server URL" /></span>
					
						<span class="property-value" aria-labelledby="serverURL-label"><g:fieldValue bean="${centerInstance}" field="serverURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${centerInstance?.locations}">
				<li class="fieldcontain">
					<span id="locations-label" class="property-label"><g:message code="center.locations.label" default="Locations" /></span>
					
						<g:each in="${centerInstance.locations}" var="l">
						<span class="property-value" aria-labelledby="locations-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${centerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="center.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${centerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:centerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${centerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
