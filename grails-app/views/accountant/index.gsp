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
				<g:link class="create" controller="accountant" action="index">Contabilidad</g:link>
			</li>
		</ol>
	</div>
</header>

<div id="accountant" class="content scaffold-create" role="main">
	<section id="content" class="table-layout animated fadeIn">
		<div class="tray tray-center">
			<div class="admin-form theme-primary mw1000 center-block theme-danger" style="padding-bottom: 175px;">
				<div class="panel heading-border panel-danger">

					<g:form controller="accountant">
						<fieldset class="form">
							<div class="panel-body bg-light">
								<div class="section-divider mt20 mb40">
									<span>Movimiento de Dinero</span>
								</div>

								<div class="section row">
									<div class="col-md-4">
										<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'amount', 'error')} required">
											<g:message code="contractedPack.debt.label" default="Importe" />
											<label for="amount" class="field prepend-icon">

												<g:field name="amount" value="${fieldValue(bean: paymentInstance, field: 'amount')}" required="" class="gui-input" />
												<label for="amount" class="field-icon">
													<i class="fa fa-money"></i>
												</label>
											</label>
										</div>
									</div>

									<div class="col-md-2">
									</div>

									<div class="col-md-4">
										<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'comment', 'error')} required">
											<g:message code="contractedPack.debt.label" default="Motivo - Responsable" />
											<label for="comment" class="field prepend-icon">
												<g:textArea name="comment" cols="50" rows="5" maxlength="250" value="${paymentInstance?.comment}" required="required" style="padding-left: 1%"/>
											</label>
										</div>
									</div>
								</div>
							</div>
						</fieldset>
						<div class="panel-footer text-right">
							<g:actionSubmit class="button btn-primary btn-danger" action="inputMoney" value="${message(code: 'default.button.pack.contracted.report', default: 'Registrar Ingreso')}" />
							<g:actionSubmit class="button btn-primary btn-danger" action="outputMoney" value="${message(code: 'default.button.pack.contracted.report', default: 'Registrar Salida')}" />
						</div>
					</g:form>
				</div>

				<div class="panel heading-border panel-danger">
					<div class="panel panel-visible" id="spy5">
						<div class="panel-heading">
							<div class="panel-title hidden-xs">
								<span class="glyphicon glyphicon-tasks"></span>Ultimos 10 Movimientos Registrados
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
								<g:each in="${lastTenPayment}" status="i" var="paymentInstance">
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
	</section>
</div>
</body>
</html>