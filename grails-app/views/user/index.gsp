
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
		<!-- End: Topbar -->

		<div class="col-md-12">
			<div class="panel panel-visible" id="spy5">

				<div class="panel-heading">
					<div class="panel-title hidden-xs">
						<g:link class="btn btn-danger" action="create"><i class="fa fa-plus"></i></g:link>
						<span class="glyphicon glyphicon-tasks"></span><g:message code="default.list.label" args="[entityName]" />
					</div>
				</div>
				<div class="panel-body pn">
					<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
					</g:if>
					<table class="table table-striped table-hover display" id="datatable5" cellspacing="0" width="100%">
						<thead>
						<tr>
							<g:sortableColumn property="dni" title="${message(code: 'user.dni.label', default: 'Dni')}" />

							<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Nombre')}" />

							<g:sortableColumn property="lastName" title="${message(code: 'user.lastName.label', default: 'Apellido')}" />

							<g:sortableColumn property="birthday" title="${message(code: 'user.birthday.label', default: 'Cumpleaños')}" />

							<g:sortableColumn property="phoneNumber" title="${message(code: 'user.phoneNumber.label', default: 'Teléfono')}" />

						</tr>
						</thead>
						<tbody>
						<g:each in="${userInstanceList}" status="i" var="userInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" style="${userInstance.active ? '': 'color: red;'}">

								<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "dni")}</g:link></td>

								<td>${fieldValue(bean: userInstance, field: "name")}</td>

								<td>${fieldValue(bean: userInstance, field: "lastName")}</td>

								<td><g:formatDate date="${userInstance.birthday}" /></td>

								<td>${fieldValue(bean: userInstance, field: "phoneNumber")}</td>

							</tr>
						</g:each>
						</tbody>
					</table>
					<div class="pagination">
						<g:paginate total="${userInstanceCount ?: 0}" />
					</div>
				</div>
			</div>
		</div>
	</body>
</html>