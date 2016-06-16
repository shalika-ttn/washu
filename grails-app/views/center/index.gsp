
<%@ page import="com.washu.dashboard.User" %>
<!doctype html>
<html>
<head>
	<meta name="layout" content="dashboard">
	<g:set var="entityName" value="${message(code: 'center.label', default: 'center')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="row-fluid">

	<div class="span3">
		<div class="well">
			<ul class="nav nav-list">
				<li class="nav-header">${entityName}</li>
				<li class="active">
					<g:link class="list" action="index">
						<i class="icon-list icon-white"></i>
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
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>

		<g:if test="${flash.message}">
			<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
		</g:if>

		<table class="table table-striped">
			<thead>
			<tr>

				<g:sortableColumn property="username" title="${message(code: 'center.websiteURL.label', default:'Website URL')}" />

				<g:sortableColumn property="password" title="${message(code: 'center.serverURL.label', default: 'Server URL')}" />

				<g:sortableColumn property="accountExpired" title="${message(code: 'center.name.label', default: 'Name')}" />


				<th></th>
			</tr>
			</thead>
			<tbody>
			<g:each in="${centerInstanceList}" var="userInstance">
				<tr>
					<td>${fieldValue(bean: centerInstance, field: "websiteURL")}</td>

					<td>${fieldValue(bean: centerInstance, field: "serverURL")}</td>

					<td>${fieldValue(bean: centerInstance, field: "name")}</td>




				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<bootstrap:paginate total="${centerInstanceCount ?: 0}" />

		</div>
	</div>

</div>
</body>
</html>
