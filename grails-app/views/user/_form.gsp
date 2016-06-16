<%@ page import="com.washu.dashboard.User" %>

%{--<div class="control-group ${hasErrors(bean: userInstance, field: 'name', 'error')} required">--}%
	%{--<label class="control-label" for="name">--}%
		%{--<g:message code="user.name.label" default="Name"/>--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%

	%{--<div class="controls">--}%
		%{--<g:textField name="name" required="" value="${userInstance?.name}"/>--}%

	%{--</div>--}%
%{--</div>--}%

<div class="control-group ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label class="control-label" for="username">
		<g:message code="user.username.label" default="Username"/>
		<span class="required-indicator">*</span>
	</label>

	<div class="controls">
		<g:textField name="username" required="" value="${userInstance?.username}"/>

	</div>
</div>

<g:if test="${params?.action == 'create'}">
	<div class="control-group ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
		<label class="control-label" for="password">
			<g:message code="user.password.label" default="Password"/>
			<span class="required-indicator">*</span>
		</label>

		<div class="controls">
			<g:textField name="password" required="" value="${userInstance?.password}"/>

		</div>
	</div>

</g:if>

%{--<div class="control-group required">--}%
	%{--<label class="control-label">--}%
		%{--Role--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{----}%
	%{--<div class="controls" style="width: 32%">--}%
		%{--<g:select name="roleType" from="${roleTypes?.roleType}" keys="${roleTypes}" id="roleType" data-placeholder="Choose a Role.." class="chosen-select"  multiple="" style="width:43%" required="" value="${currentRoles}"></g:select>--}%

	%{--</div>--}%
%{--</div>--}%

<div class="control-group ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label class="control-label" for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired"/>

	</label>

	<div class="controls">
		<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}"/>

	</div>
</div>

<div class="control-group ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label class="control-label" for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked"/>

	</label>

	<div class="controls">
		<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}"/>

	</div>
</div>

<div class="control-group ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label class="control-label" for="enabled">
		<g:message code="user.enabled.label" default="Enabled"/>

	</label>

	<div class="controls">
		<g:checkBox name="enabled" value="${userInstance?.enabled}"/>

	</div>
</div>

<div class="control-group ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label class="control-label" for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired"/>

	</label>

	<div class="controls">
		<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}"/>

	</div>
</div>

