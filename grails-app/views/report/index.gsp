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
				<g:link class="create" controller="report" action="index">Informes</g:link>
			</li>
		</ol>
	</div>
</header>

<div id="create-contractedPack" class="content scaffold-create" role="main">
	<section id="content" class="table-layout animated fadeIn">
		<div class="tray tray-center">
			<div class="admin-form theme-primary mw1000 center-block theme-danger" style="padding-bottom: 175px;">
				<div class="panel heading-border panel-danger">

					<g:form url="[resource:betweenDateDto, action:'update']" method="PUT">
						<fieldset class="form">
							<div class="panel-body bg-light">
								<div class="section-divider mt20 mb40">
									<span>Informes en Excel</span>
								</div>

								<div class="section row">
									<div class="col-md-6">
										<div class="fieldcontain ${hasErrors(bean: betweenDateDto, field: 'contractStartDate', 'error')} required">
											<label for="fromDate">
												<g:message code="contractedPack.contractStartDate.label" default="Fecha desde" />
												<span class="required-indicator">*</span>
											</label>
											<g:datePicker name="fromDate" precision="day"  value="${betweenDateDto?.fromDate}"  />
										</div>
									</div>

									<div class="col-md-6">
										<div class="fieldcontain ${hasErrors(bean: betweenDateDto, field: 'contractEndDate', 'error')} required">
											<label for="untilDate">
												<g:message code="contractedPack.contractEndDate.label" default="Fecha hasta" />
												<span class="required-indicator">*</span>
											</label>
											<g:datePicker name="untilDate" precision="day"  value="${betweenDateDto?.untilDate}"  />
										</div>
									</div>
								</div>
							</div>
						</fieldset>
						<div class="panel-footer text-right">
							<g:actionSubmit class="button btn-primary btn-danger" action="payment" value="${message(code: 'default.button.pack.contracted.report', default: 'Pagos Recibidos')}" />
							<g:actionSubmit class="button btn-primary btn-danger" action="debt" value="${message(code: 'default.button.pack.contracted.report', default: 'Deudores')}" />
							<g:actionSubmit class="button btn-primary btn-danger" action="contracted" value="${message(code: 'default.button.pack.contracted.report', default: 'Pack Contratados')}" />
							<g:actionSubmit class="button btn-primary btn-danger" action="assistence" value="${message(code: 'default.button.assistance.report', default: 'Asistencias')}" />
						</div>
					</g:form>
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>