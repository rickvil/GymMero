<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-user" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>

			<section id="content" class="table-layout animated fadeIn">
				<div class="tray tray-center">
					<div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
						<div class="panel heading-border panel-danger">
							<g:form url="[resource:userInstance, action:'save']" >
								<fieldset class="form">
									<g:render template="form"/>
								</fieldset>

								<div class="panel-footer text-right">
									<g:submitButton name="create" class="button btn-primary btn-danger" value="${message(code: 'default.button.create.label', default: 'Create')}" />
									<button type="reset" class="button btn-danger"> Cancel </button>
								</div>
							</g:form>
						</div>
					</div>
				</div>
			</section>
		</div>
	</body>
</html>