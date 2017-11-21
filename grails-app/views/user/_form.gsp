<%@ page import="com.gym.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="user.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dni" required="" value="${userInstance?.dni}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="50" required="" value="${userInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="user.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day"  value="${userInstance?.birthday}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phoneNumber', 'error')} ">
	<label for="phoneNumber">
		<g:message code="user.phoneNumber.label" default="Phone Number" />
		
	</label>
	<g:textField name="phoneNumber" value="${userInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="user.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${userInstance.constraints.sex.inList}" required="" value="${userInstance?.sex}" valueMessagePrefix="user.sex"/>

</div>

