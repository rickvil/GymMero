<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contractedPack.label', default: 'ContractedPack')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<header id="topbar" class="alt">
			<div class="topbar-left">
				<ol class="breadcrumb">
					<li class="crumb-active">
						<g:link class="create" controller="user" action="show" id="${contractedPackInstance?.user?.id}">Mero Socios</g:link>
					</li>
					<li class="crumb-trail">Contratar Pack</li>
				</ol>
			</div>
		</header>

		<div id="create-contractedPack" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status" style="color: blue; font-size: 25px; font-weight: bold;">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${contractedPackInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${contractedPackInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>

			<section id="content" class="table-layout animated fadeIn">
				<div class="tray tray-center">
					<div class="admin-form theme-primary mw1000 center-block theme-danger" style="padding-bottom: 175px;">
						<div class="panel heading-border panel-danger">

							<g:form url="[resource:contractedPackInstance, action:'save']" >
								<fieldset class="form">
									<g:render template="form"/>
								</fieldset>
								<div class="panel-footer text-right">
									<g:submitButton name="create" class="button btn-primary btn-danger" value="${message(code: 'default.button.contracted.label', default: 'Contratar')}" />
									<g:link class="button btn-danger" controller="user" action="show" id="${contractedPackInstance?.user?.id}">Cancelar</g:link>
								</div>
							</g:form>
						</div>
					</div>
				</div>
			</section>
		</div>
	</body>
</html>
