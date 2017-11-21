
<%@ page import="com.gym.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<!-- Start: Topbar -->
		<header id="topbar" class="alt">
			<div class="topbar-left">
				<ol class="breadcrumb">
					<li class="crumb-active">
						%{--<a href="index">User</a>--}%
						<g:link class="create" action="index">User</g:link>
					</li>
					<li class="crumb-trail">Detalle</li>
				</ol>
			</div>

		</header>
		<!-- End: Topbar -->

		<!-- Begin: Content -->
		<section id="content" class="table-layout animated fadeIn">

			<!-- begin: .tray-center -->
			<div class="tray tray-center">

				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>

				<!-- Validation Example -->
				<div class="admin-form theme-primary mw1000 center-block theme-danger" style="padding-bottom: 175px;">

					<div class="panel heading-border panel-danger">

						%{--<form method="post" action="/" id="admin-form">--}%

							<div class="panel-body bg-light">

								<div class="section-divider mt20 mb40">
									<span> Datos </span>
								</div>
								<!-- .section-divider -->

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

									<div>
										<span class="panel-icon">
											<i class="glyphicon glyphicon-calendar"></i>
										</span>
										<span class="panel-title">
											<g:if test="${userInstance?.birthday}">
												<g:formatDate date="${userInstance?.birthday}" />
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
							<!-- end .form-body section -->
							%{--<div class="panel-footer text-right">--}%
								%{--<button type="submit" class="button btn-primary btn-danger"> Validate Form </button>--}%
								%{--<button type="reset" class="button btn-danger"> Cancel </button>--}%
							%{--</div>--}%
							<div class="panel-footer text-right">
								<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
									<fieldset class="buttons">
										<g:link class="button btn-primary btn-danger" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
										<g:actionSubmit class="button btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
									</fieldset>
								</g:form>
							</div>
							<!-- end .form-footer section -->
						%{--</form>--}%

					</div>

				</div>
				<!-- end: .admin-form -->

			</div>
			<!-- end: .tray-center -->

		</section>

		%{--<div id="show-user" class="content scaffold-show" role="main">--}%
			%{--<g:form url="[resource:userInstance, action:'delete']" method="DELETE">--}%
				%{--<fieldset class="buttons">--}%
					%{--<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				%{--</fieldset>--}%
			%{--</g:form>--}%
		%{--</div>--}%
	</body>
</html>
