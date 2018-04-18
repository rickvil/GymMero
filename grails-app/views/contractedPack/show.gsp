
<%@ page import="com.gym.ContractedPack" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contractedPack.label', default: 'ContractedPack')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<header id="topbar" class="alt">
			<div class="topbar-left">
				<ol class="breadcrumb">
					<li class="crumb-active">
						<g:link class="create" controller="user" action="show" id="${contractedPackInstance?.user?.id}">Mero Socios / Pack Contratados</g:link>
					</li>
					<li class="crumb-trail">Detalle</li>
				</ol>
			</div>
		</header>

		<section id="content" class="table-layout animated fadeIn">
			<div class="tray tray-center">
				<g:if test="${flash.message}">
					<div class="message" role="status" style="color: red; font-size: 25px; font-weight: bold;">${flash.message}</div>
				</g:if>
				<div class="admin-form theme-primary mw1000 center-block theme-danger" style="padding-bottom: 175px;">
					<div class="panel heading-border panel-danger">
						<div class="panel-body bg-light">
							<div class="section-divider mt20 mb40">
								<span> Datos del Pack Contratado</span>
							</div>
							<div class="media-body va-m">
								<h2 class="media-heading">
									<g:if test="${contractedPackInstance?.user?.name}">
										<g:fieldValue bean="${contractedPackInstance?.user}" field="name"/>
									</g:if>
									<g:if test="${contractedPackInstance?.user?.lastName}">
										<g:fieldValue bean="${contractedPackInstance?.user}" field="lastName"/>
									</g:if>
									<small> -
									<g:if test="${contractedPackInstance?.user?.dni}">
										<g:fieldValue bean="${contractedPackInstance?.user}" field="dni"/>
									</g:if>
									</small>
								</h2>
								<div class="section row">
								</div>
								<div class="col-md-3">
									<img src="${resource(file:'credential.jpg')}"/>
								</div>
								<div class="col-md-9">
									<div>
										<span class="panel-icon">
											<i class="glyphicon glyphicon-shopping-cart"></i>
										</span>
										<span class="panel-title">
											<g:if test="${contractedPackInstance?.activity}">
												<g:fieldValue bean="${contractedPackInstance?.activity}" field="title"/>
											</g:if>
											-
											<g:if test="${contractedPackInstance?.typeActivity}">
												<g:fieldValue bean="${contractedPackInstance?.typeActivity}" field="title"/>
											</g:if>
										</span>
									</div>
									<div>
										<span class="panel-icon">
											<i class="glyphicon glyphicon-calendar"></i>
										</span>
										<span class="panel-title">
											Contrato
											<g:fieldValue bean="${contractedPackInstance}" field="credit"/>
											clases,
											Asistio a:
											<g:fieldValue bean="${contractedPackInstance}" field="assistedClasses"/>
											,le quedan disponible:
											<g:fieldValue bean="${contractedPackInstance}" field="remainingClasses"/>
										</span>
									</div>
									<div>
										<span class="panel-icon">
											<i class="glyphicon glyphicon-usd"></i>
										</span>
										<span class="panel-title">
											Precio Total $
											<g:fieldValue bean="${contractedPackInstance}" field="priceTotal"/>
											,  Pago $
											<g:fieldValue bean="${contractedPackInstance}" field="price"/>
											,  Debe $
											<g:fieldValue bean="${contractedPackInstance}" field="debt"/>
										</span>
									</div>
									<div>
										<span class="panel-icon">
											<i class="glyphicon glyphicon-calendar"></i>
										</span>
										<span class="panel-title">
											Valido Desde:
											<g:if test="${contractedPackInstance?.contractStartDate}">
												<g:formatDate format="dd-MM-yyyy" date="${contractedPackInstance?.contractStartDate}" />
											</g:if>
											- Hasta:
											<g:if test="${contractedPackInstance?.contractEndDate}">
												<g:formatDate format="dd-MM-yyyy" date="${contractedPackInstance?.contractEndDate}" />
											</g:if>
										</span>
									</div>
									<div>
										<span class="panel-icon">
											<i class="glyphicon glyphicon-barcode"></i>
										</span>
										<span class="panel-title">
											Código de Barra:
											<g:if test="${contractedPackInstance?.contractStartDate}">
												<g:fieldValue bean="${contractedPackInstance}" field="barCode"/>
											</g:if>
										</span>
									</div>
									<div>
										<span class="panel-icon">
											<i class="glyphicon glyphicon-comment"></i>
										</span>
										<span class="panel-title">
											<g:if test="${contractedPackInstance?.comment}">
												<g:fieldValue bean="${contractedPackInstance}" field="comment"/>
											</g:if>
											<g:else>
												Sin comentarios
											</g:else>
										</span>
									</div>
								</div>
							</div>
						</div>

						<div class="panel-footer text-right">
							%{--<g:form url="[resource:userInstance, action:'delete']" method="DELETE">--}%
								%{--<fieldset class="buttons">--}%
									%{--<g:link class="button btn-primary btn-danger" action="contractedPack" resource="${userInstance}">Contratar Pack</g:link>--}%
									%{--<g:link class="button btn-primary btn-danger" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
									%{--<g:actionSubmit class="button btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
								%{--</fieldset>--}%
							%{--</g:form>--}%

							<g:form url="[resource:contractedPackInstance, action:'delete']" method="DELETE">
								<fieldset class="buttons">
									<g:link class="button btn-primary btn-danger" action="edit" resource="${contractedPackInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
									<g:actionSubmit class="button btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
									<g:link class="button btn-primary btn-danger" controller="credential" action="index" id="${contractedPackInstance?.id}" target="_blank">Credencial</g:link>
									<g:link class="button btn-primary btn-danger" controller="report" action="assistenceByContractedPack" id="${contractedPackInstance?.id}">Lista de Asistencia</g:link>
									<g:link class="button btn-primary btn-danger" controller="report" action="paymentByContractedPack" id="${contractedPackInstance?.id}">Pagos Efectuados</g:link>
								</fieldset>
							</g:form>
						</div>

						<div class="col-md-6">
							<div class="panel panel-visible" id="spy5">
								<div class="panel-heading">
									<div class="panel-title hidden-xs">
										<span class="glyphicon glyphicon-tasks"></span>Clases Asistidas
									</div>
								</div>
								<div class="panel-body pn">
									<table class="table table-striped table-hover display" id="datatable5" cellspacing="0" width="100%">
										<thead>
											<tr>
												<th><g:message code="contractedPack.contractStartDate.label" default="Fecha de asistencia" /></th>
												<th><g:message code="contractedPack.activity.label" default="Persona que autorizo" /></th>
											</tr>
										</thead>
										<tbody>
											<g:each in="${assistanceInstanceList}" status="i" var="assistanceInstance">
												<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" >
													<td><g:formatDate format="dd-MM-yyyy hh:mm:ss" date="${assistanceInstance?.dateAssistance}" /></td>
													<td>${fieldValue(bean: assistanceInstance, field: "authorizedBy")}</td>
												</tr>
											</g:each>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="col-md-6">
							<div class="panel panel-visible" id="spy5">
								<div class="panel-heading">
									<div class="panel-title hidden-xs">
										<span class="glyphicon glyphicon-tasks"></span>Pagos Efectuados
									</div>
								</div>
								<div class="panel-body pn">
									<table class="table table-striped table-hover display" id="datatable5" cellspacing="0" width="100%">
										<thead>
										<tr>
											<th><g:message code="contractedPack.contractStartDate.label" default="Fecha de pago" /></th>
											<th><g:message code="contractedPack.activity.label" default="Monto" /></th>
											<th><g:message code="contractedPack.activity.label" default="Comentario" /></th>
										</tr>
										</thead>
										<tbody>
										<g:each in="${paymentInstanceList}" status="i" var="paymentInstance">
											<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" >
												<td><g:formatDate format="dd-MM-yyyy hh:mm:ss" date="${paymentInstance?.dayPayment}" /></td>
												<td>$ ${fieldValue(bean: paymentInstance, field: "amount")}</td>
												<td>${fieldValue(bean: paymentInstance, field: "comment")}</td>
											</tr>
										</g:each>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>