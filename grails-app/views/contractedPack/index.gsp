
<%@ page import="com.gym.ContractedPack" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contractedPack.label', default: 'ContractedPack')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contractedPack" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contractedPack" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="contractedPack.user.label" default="User" /></th>
					
						<th><g:message code="contractedPack.activity.label" default="Activity" /></th>
					
						<th><g:message code="contractedPack.typeActivity.label" default="Type Activity" /></th>
					
						<g:sortableColumn property="barCode" title="${message(code: 'contractedPack.barCode.label', default: 'Bar Code')}" />
					
						<g:sortableColumn property="credit" title="${message(code: 'contractedPack.credit.label', default: 'Credit')}" />
					
						<g:sortableColumn property="free" title="${message(code: 'contractedPack.free.label', default: 'Free')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contractedPackInstanceList}" status="i" var="contractedPackInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contractedPackInstance.id}">${fieldValue(bean: contractedPackInstance, field: "user")}</g:link></td>
					
						<td>${fieldValue(bean: contractedPackInstance, field: "activity")}</td>
					
						<td>${fieldValue(bean: contractedPackInstance, field: "typeActivity")}</td>
					
						<td>${fieldValue(bean: contractedPackInstance, field: "barCode")}</td>
					
						<td>${fieldValue(bean: contractedPackInstance, field: "credit")}</td>
					
						<td><g:formatBoolean boolean="${contractedPackInstance.free}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contractedPackInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
