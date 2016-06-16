<%@ page import="com.washu.dashboard.Testing" %>
<!doctype html>
<html>
<head>
	<meta name="layout" content="dashboard">
	<g:set var="entityName" value="${message(code: 'testing.label', default: 'Testing')}" />
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<div class="row-fluid">

	<div class="span3">
		<div class="well">
			<ul class="nav nav-list">
				<li class="nav-header">${entityName}</li>
				<li>
					<g:link class="list" action="index">
						<i class="icon-list"></i>
						<g:message code="default.list.label" args="[entityName]" />
					</g:link>
				</li>
				<li>
					<g:link class="create" action="create">
						<i class="icon-plus"></i>
						<g:message code="default.create.label" args="[entityName]" />
					</g:link>
				</li>
			</ul>
		</div>
	</div>

	<div class="span9">

		<div class="page-header">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
		</div>

		<g:if test="${flash.message}">
			<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
		</g:if>

		<g:hasErrors bean="${testingInstance}">
			<bootstrap:alert class="alert-error">
				<ul>
					<g:eachError bean="${testingInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
			</bootstrap:alert>
		</g:hasErrors>

		<fieldset>
			<g:form class="form-horizontal" url="[resource:testingInstance, action:'update']" method="PUT" >
			<g:hiddenField name="version" value="${testingInstance?.version}" />
			<fieldset>
				<g:render template="form"/>
				<div class="form-actions">
					<button type="submit" class="btn btn-primary">
						<i class="icon-ok icon-white"></i>
						<g:message code="default.button.update.label" default="Update" />
					</button>
					<button type="submit" class="btn btn-danger"  onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" name="_action_delete" formnovalidate>
						<i class="icon-trash icon-white"></i>
						<g:message code="default.button.delete.label" default="Delete" />
					</button>
				</div>
			</fieldset>
			</g:form>
		</fieldset>

	</div>

</div>
</body>
</html>
