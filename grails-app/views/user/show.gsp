<%@ page import="com.gym.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'Mero Socios')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<header id="topbar" class="alt">
			<div class="topbar-left">
				<ol class="breadcrumb">
					<li class="crumb-active">
						<g:link class="create" action="index">Mero Socios</g:link>
					</li>
					<li class="crumb-trail">Detalle</li>
				</ol>
			</div>
		</header>

		<section id="content" class="table-layout animated fadeIn">
			<div class="tray tray-center">
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<div class="admin-form theme-primary mw1000 center-block theme-danger" style="padding-bottom: 175px;">
					<div class="panel heading-border panel-danger">
						<div class="panel-body bg-light">
							<div class="section-divider mt20 mb40">
								<span> Datos del Mero Socio </span>
							</div>
							<div class="media-body va-m">
								<h2 class="media-heading">
									<g:if test="${userInstance?.name}">
										<g:fieldValue bean="${userInstance}" field="name"/>
									</g:if>
									<g:if test="${userInstance?.lastName}">
										<g:fieldValue bean="${userInstance}" field="lastName"/>
									</g:if>
									<small> -
									<g:if test="${userInstance?.dni}">
										<g:fieldValue bean="${userInstance}" field="dni"/>
									</g:if>
									</small>
								</h2>
								<div class="section row">
								</div>
								<div>
									<span class="panel-icon">
										<i class="glyphicon glyphicon-calendar"></i>
									</span>
									<span class="panel-title">
										<g:if test="${userInstance?.birthday}">
											<g:formatDate format="dd-MM-yyyy" date="${userInstance?.birthday}" />
										</g:if>
										<g:else>
											----
										</g:else>
									</span>
								</div>
								<div>
									<span class="panel-icon">
										<i class="glyphicon glyphicon-phone-alt"></i>
									</span>
									<span class="panel-title">
										<g:if test="${userInstance?.phoneNumber}">
											<g:fieldValue bean="${userInstance}" field="phoneNumber"/>
										</g:if>
										<g:else>
											----
										</g:else>
									</span>
								</div>
								<div>
									<span class="panel-icon">
										<i class="glyphicon glyphicon-envelope"></i>
									</span>
									<span class="panel-title">
										<g:if test="${userInstance?.email}">
											<g:fieldValue bean="${userInstance}" field="email"/>
										</g:if>
										<g:else>
											----
										</g:else>
									</span>
								</div>
								<div>
									<span class="panel-icon">
										<i class="glyphicon glyphicon-user"></i>
									</span>
									<span class="panel-title">
										<g:if test="${userInstance?.sex}">
											<g:fieldValue bean="${userInstance}" field="sex"/>
										</g:if>
									</span>
								</div>
							</div>
						</div>



						<div class="panel-footer text-right">
							<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
								<fieldset class="buttons">
									<g:link class="button btn-primary btn-danger" action="contractedPack" resource="${userInstance}">Contratar Pack</g:link>
									<g:link class="button btn-primary btn-danger" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
									<g:actionSubmit class="button btn-danger" action="delete" value="${message(code: 'default.button.inactive.label', default: 'Inactivo')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
									<g:actionSubmit class="button btn-danger" action="deletePhysical" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								</fieldset>
							</g:form>
						</div>

						<div class="col-md-12">
							<div class="panel panel-visible" id="spy5">

								<div class="panel-heading">
									<div class="panel-title hidden-xs">

										<span class="glyphicon glyphicon-tasks"></span>Packs Contratados
									</div>
								</div>
								<div class="panel-body pn">
									<g:if test="${flash.message}">
										<div class="message" role="status">${flash.message}</div>
									</g:if>
									<table class="table table-striped table-hover display" id="datatable5" cellspacing="0" width="100%">
										<thead>
										<tr>

											<th><g:message code="contractedPack.contractStartDate.label" default="F.Inicio" /></th>

											<th><g:message code="contractedPack.activity.label" default="Actividad" /></th>

											<th><g:message code="contractedPack.typeActivity.label" default="Tipo de Actividad" /></th>

											%{--<g:sortableColumn property="barCode" title="${message(code: 'contractedPack.barCode.label', default: 'Código de Barras')}" />--}%

											<g:sortableColumn property="credit" title="${message(code: 'contractedPack.credit.label', default: 'Cant. Clases')}" />

											<g:sortableColumn property="assistedClasses" title="${message(code: 'contractedPack.assistedClasses.label', default: 'Clases Asistidas')}" />

											<g:sortableColumn property="remainingClasses" title="${message(code: 'contractedPack.remainingClasses.label', default: 'Clases Restan')}" />

											<g:sortableColumn property="free" title="${message(code: 'contractedPack.free.label', default: 'Libre')}" />

											<g:sortableColumn property="price" title="${message(code: 'contractedPack.price.label', default: 'Pago')}" />

											<g:sortableColumn property="debt" title="${message(code: 'contractedPack.debt.label', default: 'Adeuda')}" />

											<g:sortableColumn property="contractEndDate" title="${message(code: 'contractedPack.contractEndDate.label', default: 'F.Vencimiento')}" />

										</tr>

										</thead>
										<tbody>

										<g:each in="${contractedPackInstanceList}" status="i" var="contractedPackInstance">

											<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" style="${contractedPackInstance.debt == 0 ? '': 'color: red;'}">

												<td><g:link controller="contractedPack" action="show" id="${contractedPackInstance.id}"><g:formatDate format="dd-MM-yyyy" date="${contractedPackInstance?.contractStartDate}" /></g:link></td>

												<td>${fieldValue(bean: contractedPackInstance, field: "activity.title")}</td>

												<td>${fieldValue(bean: contractedPackInstance, field: "typeActivity.title")}</td>

												%{--<td>${fieldValue(bean: contractedPackInstance, field: "barCode")}</td>--}%

												<td>${fieldValue(bean: contractedPackInstance, field: "credit")}</td>

												<td>${fieldValue(bean: contractedPackInstance, field: "assistedClasses")}</td>

												<td style="${contractedPackInstance.remainingClasses != 0 ? '': 'color: red;'}">${contractedPackInstance.remainingClasses}</td>

												<td><g:formatBoolean boolean="${contractedPackInstance.free}" /></td>

												<td>$${fieldValue(bean: contractedPackInstance, field: "price")}</td>

												<td>$${fieldValue(bean: contractedPackInstance, field: "debt")}</td>

												<td><g:formatDate format="dd-MM-yyyy" date="${contractedPackInstance?.contractEndDate}" /></td>

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

					</div>
				</div>
			</div>
		</section>
	</body>
</html>