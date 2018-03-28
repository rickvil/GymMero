
<%@ page import="com.gym.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'Mero Socios')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<!-- Start: Topbar -->
		<header id="topbar" class="alt">
			<div class="topbar-left">
				<ol class="breadcrumb">
					<li class="crumb-active">
						%{--<a href="index">User</a>--}%
						<g:link class="create" action="index">Mero Socios</g:link>
					</li>
					<li class="crumb-trail">Listado</li>
				</ol>
			</div>

		</header>
		<g:form url="[resource:betweenDateDto, action:'update']" method="PUT">
			<div class="section row">
				<div class="col-md-6">
					<div class="fieldcontain ${hasErrors(bean: betweenDateDto, field: 'contractStartDate', 'error')} required">
						<label for="fromDate">
							<g:message code="contractedPack.contractStartDate.label" default="Fecha inicio" />
							<span class="required-indicator">*</span>
						</label>
						<g:datePicker name="fromDate" precision="day"  value="${betweenDateDto?.fromDate}"  />
					</div>
				</div>

				<div class="col-md-6">
					<div class="fieldcontain ${hasErrors(bean: betweenDateDto, field: 'contractEndDate', 'error')} required">
						<label for="untilDate">
							<g:message code="contractedPack.contractEndDate.label" default="Fecha vencimiento" />
							<span class="required-indicator">*</span>
						</label>
						<g:datePicker name="untilDate" precision="day"  value="${betweenDateDto?.untilDate}"  />
					</div>
				</div>
			</div>
			<fieldset class="buttons">
				<g:actionSubmit class="button btn-primary btn-danger" action="contracted" value="${message(code: 'default.button.pack.contracted.report', default: 'Pack Contratados')}" />
				<g:actionSubmit class="button btn-primary btn-danger" action="assistence" value="${message(code: 'default.button.assistance.report', default: 'Asistencia')}" />
			</fieldset>
		</g:form>
	</body>
</html>