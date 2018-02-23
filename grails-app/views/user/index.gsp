
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
	<div class="col-md-12">
		<div class="col-md-3">
			<div class="section">
				<div class="smart-widget sm-right smr-50">
					<g:form url="[action:'findDni']">
						<label class="field">
							<input type="text" name="findDni" id="findDni" class="gui-input" placeholder="Buscar por DNI" value="${findDni}" style="text-transform:uppercase">
						</label>
						<button type="submit" class="button btn-primary">
							<i class="fa fa-search"></i>
						</button>
					</g:form>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="section">
				<div class="smart-widget sm-right smr-50">
					<g:form url="[action:'findLastName']" >
						<label class="field">
							<input type="text" name="findLastName" id="findLastName" class="gui-input" placeholder="Buscar por Apellido" value="${findLastName}" style="text-transform:uppercase">
						</label>
						<button type="submit" class="button btn-primary">
							<i class="fa fa-search"></i>
						</button>
					</g:form>
				</div>
			</div>
		</div>
	</div>
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

								<td><g:formatDate format="dd-MM-yyyy" date="${userInstance.birthday}" /></td>

								<td>${fieldValue(bean: userInstance, field: "phoneNumber")}</td>

							</tr>
						</g:each>
						</tbody>
					</table>
					<div class="pagination">
						<g:paginate total="${userInstanceCount ?: 0}" />
					</div>
					%{--<div class="dataTables_paginate paging_simple_numbers" id="datatable6_paginate">--}%
						%{--<ul class="pagination">--}%
							%{--<li class="paginate_button previous disabled" aria-controls="datatable6" tabindex="0" id="datatable6_previous">--}%
								%{--<a href="#">Previous</a>--}%
							%{--</li>--}%
							%{--<li class="paginate_button active" aria-controls="datatable6" tabindex="0">--}%
								%{--<a href="#">1</a>--}%
							%{--</li>--}%
							%{--<li class="paginate_button next disabled" aria-controls="datatable6" tabindex="0" id="datatable6_next">--}%
								%{--<a href="#">Next</a>--}%
							%{--</li>--}%
						%{--</ul>--}%
					%{--</div>--}%

					%{--<div class="pagination">--}%
						%{--<a href="/GymMero/user/index?offset=0&amp;max=10" class="prevLink">Anterior</a>--}%
						%{--<a href="/GymMero/user/index?offset=10&amp;max=10" class="step">1</a>--}%
						%{--<span class="currentStep">2</span>--}%
						%{--<a href="/GymMero/user/index?offset=10&amp;max=10" class="step">2</a>--}%
						%{--<a href="/GymMero/user/index?offset=10&amp;max=10" class="nextLink">Siguiente</a>--}%
					%{--</div>--}%
					%{--<div class="pagination">--}%
						%{--<a href="/GymMero/user/index?offset=0&amp;max=10" class="prevLink">Anterior</a>--}%
						%{--<a href="/GymMero/user/index?offset=0&amp;max=10" class="step">1</a>--}%
						%{--<span class="currentStep">2</span>--}%
					%{--</div>--}%
				</div>
			</div>
		</div>
	</body>
</html>