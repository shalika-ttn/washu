
<%@ page import="com.washu.dashboard.Testing2" %>
<!doctype html>
<html>
<head>
	<meta name="layout" content="dashboard">
	<g:set var="entityName" value="${message(code: 'testing2.label', default: 'Testing2')}" />
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
				
				<g:sortableColumn property="age" title="${message(code: 'testing2.age.label', default: 'Age')}" />
				
				<g:sortableColumn property="name" title="${message(code: 'testing2.name.label', default: 'Name')}" />
				
				<th></th>
			</tr>
			</thead>
			<tbody>
			<g:each in="${testing2InstanceList}" var="testing2Instance">
				<tr>
					
					<td>${fieldValue(bean: testing2Instance, field: "age")}</td>
					
					<td>${fieldValue(bean: testing2Instance, field: "name")}</td>
					
					<td class="link">
						<g:link action="show" id="${testing2Instance.id}" class="btn btn-small">Show &raquo;</g:link>
					</td>
				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<bootstrap:paginate total="${testing2InstanceCount}" />
		</div>
	</div>

</div>
</body>
</html>
