
<%@ page import="com.gym.ContractedPack" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contractedPack.label', default: 'ContractedPack')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contractedPack" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contractedPack" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contractedPack">
			
				<g:if test="${contractedPackInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="contractedPack.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${contractedPackInstance?.user?.id}">${contractedPackInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractedPackInstance?.activity}">
				<li class="fieldcontain">
					<span id="activity-label" class="property-label"><g:message code="contractedPack.activity.label" default="Activity" /></span>
					
						<span class="property-value" aria-labelledby="activity-label"><g:link controller="activity" action="show" id="${contractedPackInstance?.activity?.id}">${contractedPackInstance?.activity?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractedPackInstance?.typeActivity}">
				<li class="fieldcontain">
					<span id="typeActivity-label" class="property-label"><g:message code="contractedPack.typeActivity.label" default="Type Activity" /></span>
					
						<span class="property-value" aria-labelledby="typeActivity-label"><g:link controller="typeActivity" action="show" id="${contractedPackInstance?.typeActivity?.id}">${contractedPackInstance?.typeActivity?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractedPackInstance?.barCode}">
				<li class="fieldcontain">
					<span id="barCode-label" class="property-label"><g:message code="contractedPack.barCode.label" default="Bar Code" /></span>
					
						<span class="property-value" aria-labelledby="barCode-label"><g:fieldValue bean="${contractedPackInstance}" field="barCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractedPackInstance?.credit}">
				<li class="fieldcontain">
					<span id="credit-label" class="property-label"><g:message code="contractedPack.credit.label" default="Credit" /></span>
					
						<span class="property-value" aria-labelledby="credit-label"><g:fieldValue bean="${contractedPackInstance}" field="credit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractedPackInstance?.free}">
				<li class="fieldcontain">
					<span id="free-label" class="property-label"><g:message code="contractedPack.free.label" default="Free" /></span>
					
						<span class="property-value" aria-labelledby="free-label"><g:formatBoolean boolean="${contractedPackInstance?.free}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractedPackInstance?.contractedDate}">
				<li class="fieldcontain">
					<span id="contractedDate-label" class="property-label"><g:message code="contractedPack.contractedDate.label" default="Contracted Date" /></span>
					
						<span class="property-value" aria-labelledby="contractedDate-label"><g:formatDate date="${contractedPackInstance?.contractedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contractedPackInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contractedPackInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
