
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
					<div class="message" role="status">${flash.message}</div>
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
								<g:if test="${contractedPackInstance?.credit}">
									<div>
										<span class="panel-icon">
											<i class="glyphicon glyphicon-usd"></i>
										</span>
										<span class="panel-title">
											<g:fieldValue bean="${contractedPackInstance}" field="credit"/>
											clases - $
											<g:fieldValue bean="${contractedPackInstance}" field="price"/>
										</span>
									</div>
								</g:if>
								<g:if test="${contractedPackInstance?.free}">
									<div>
										<span class="panel-icon">
											<i class="glyphicon glyphicon-usd"></i>
										</span>
										<span class="panel-title">
												Clases Libres:
												<g:formatBoolean boolean="${contractedPackInstance.free}" />
												- $
												<g:fieldValue bean="${contractedPackInstance}" field="price"/>
										</span>
									</div>
								</g:if>
								<div>
									<span class="panel-icon">
										<i class="glyphicon glyphicon-calendar"></i>
									</span>
									<span class="panel-title">
										Desde:
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
								</fieldset>
							</g:form>
						</div>

					</div>
				</div>
			</div>
		</section>
	</body>
</html>