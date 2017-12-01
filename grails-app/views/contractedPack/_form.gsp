<%@ page import="com.gym.ContractedPack" %>



<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="contractedPack.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.gym.User.list()}" optionKey="id" optionValue="name" required="" value="${contractedPackInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'activity', 'error')} required">
	<label for="activity">
		<g:message code="contractedPack.activity.label" default="Activity" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="activity" name="activity.id" from="${com.gym.Activity.list()}" optionKey="id" optionValue="title" required="" value="${contractedPackInstance?.activity?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'typeActivity', 'error')} required">
	<label for="typeActivity">
		<g:message code="contractedPack.typeActivity.label" default="Type Activity" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="typeActivity" name="typeActivity.id" from="${com.gym.TypeActivity.list()}" optionKey="id" optionValue="title" required="" value="${contractedPackInstance?.typeActivity?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'barCode', 'error')} ">
	<label for="barCode">
		<g:message code="contractedPack.barCode.label" default="Bar Code" />
		
	</label>
	<g:textField name="barCode" value="${contractedPackInstance?.barCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'credit', 'error')} ">
	<label for="credit">
		<g:message code="contractedPack.credit.label" default="Credit" />
		
	</label>
	<g:select name="credit" from="${contractedPackInstance.constraints.credit.inList}" value="${fieldValue(bean: contractedPackInstance, field: 'credit')}" valueMessagePrefix="contractedPack.credit" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'free', 'error')} ">
	<label for="free">
		<g:message code="contractedPack.free.label" default="Free" />
		
	</label>
	<g:checkBox name="free" value="${contractedPackInstance?.free}" />

</div>

<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'contractedDate', 'error')} required">
	<label for="contractedDate">
		<g:message code="contractedPack.contractedDate.label" default="Contracted Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="contractedDate" precision="day"  value="${contractedPackInstance?.contractedDate}"  />

</div>

