<%@ page import="com.gym.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<header id="topbar" class="alt">
			<div class="topbar-left">
				<ol class="breadcrumb">
					<li class="crumb-active">
						<g:link class="create" action="index">Mero Socios</g:link>
					</li>
					<li class="crumb-trail">Editar</li>
				</ol>
			</div>
		</header>
		<div id="edit-user" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status" style="color: blue; font-size: 25px; font-weight: bold;">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li style="color: blue; font-size: 25px; font-weight: bold;" <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>

			<section id="content" class="table-layout animated fadeIn">
				<div class="tray tray-center">
					<div class="admin-form theme-primary mw1000 center-block theme-danger" style="padding-bottom: 175px;">
						<div class="panel heading-border panel-danger">
							<g:form url="[resource:userInstance, action:'update']" method="PUT" >
								<g:hiddenField name="version" value="${userInstance?.version}" />
								<fieldset class="form">
									<g:render template="form"/>
								</fieldset>

								<div class="panel-footer text-right">
									<g:actionSubmit class="button btn-primary btn-danger" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
									<g:link class="button btn-danger" href="${createLink(uri: '/user')}">Cancelar</g:link>
								</div>
							</g:form>
						</div>
					</div>
				</div>
			</section>
		</div>
	</body>
</html>