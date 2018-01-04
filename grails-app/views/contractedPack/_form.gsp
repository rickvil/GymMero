<%@ page import="com.gym.ContractedPack" %>

<div class="panel-body bg-light">

	<div class="section-divider mt20 mb40">
		<span> Contratar un Pack</span>
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
			<input type="hidden" id="user" name="user.id" value="${contractedPackInstance?.user?.id}"/>
		</h2>
	</div>
	<div class="section row">
	</div>
	<div class="section row">
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'activity', 'error')} required">
				<g:message code="contractedPack.activity.label" default="Actividad" />
				<label class="field select">
					<g:select id="activity" name="activity.id" from="${com.gym.Activity.list()}" optionKey="id" optionValue="title" required="" value="${contractedPackInstance?.activity?.id}" class="many-to-one"/>
					<i class="arrow double"></i>
				</label>
			</div>
		</div>

		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'typeActivity', 'error')} required">
				<g:message code="contractedPack.typeActivity.label" default="Tipo de Actividad" />
				<label class="field select">
					<g:select id="typeActivity" name="typeActivity.id" from="${com.gym.TypeActivity.list()}" optionKey="id" optionValue="title" required="" value="${contractedPackInstance?.typeActivity?.id}" class="many-to-one"/>
					<i class="arrow double"></i>
				</label>
			</div>
		</div>
	</div>

	<div class="section row">
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'barCode', 'error')} ">
				<g:message code="contractedPack.barCode.label" default="Codigo de Barra" />
				<label for="barCode" class="field prepend-icon">
					<g:textField name="barCode" value="${contractedPackInstance?.barCode}" class="gui-input" />
					<label for="barCode" class="field-icon">
						<i class="fa fa-barcode"></i>
					</label>
				</label>
			</div>
		</div>

		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'credit', 'error')} ">
				<g:message code="contractedPack.credit.label" default="Cantidad de Clases" />
				<label for="credit" class="field prepend-icon">
					<g:field name="credit" type="number" value="${contractedPackInstance.credit}" min="0" max="60" class="gui-input" />
					<label for="credit" class="field-icon">
						<i class="fa fa-calendar"></i>
					</label>
				</label>
			</div>
		</div>
	</div>

	<div class="section row">
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'free', 'error')} ">
				<div class="option-group field">
					<label class="option block">
						<g:checkBox name="free" value="${contractedPackInstance?.free}" />
						<span class="checkbox"></span> free x 1 mes
					</label>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'price', 'error')} required">
				<g:message code="contractedPack.price.label" default="Importe que paga" />
				<label for="price" class="field prepend-icon">
					<g:field name="price" value="${fieldValue(bean: contractedPackInstance, field: 'price')}" required="" class="gui-input" />
					<label for="price" class="field-icon">
						<i class="fa fa-money"></i>
					</label>
				</label>
			</div>
		</div>

	</div>

	<div class="section row">
		<div class="col-md-12">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'comment', 'error')} ">
				<label for="comment">
					<g:message code="contractedPack.comment.label" default="Comentario" />
				</label>
				<g:textArea name="comment" cols="80" rows="5" maxlength="1000" value="${contractedPackInstance?.comment}"/>
			</div>
		</div>
	</div>
	
	<div class="section row">
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'contractEndDate', 'error')} required">
				<label for="contractEndDate">
					<g:message code="contractedPack.contractEndDate.label" default="Fecha desde" />
					<span class="required-indicator">*</span>
				</label>
				<g:datePicker name="contractEndDate" precision="day"  value="${contractedPackInstance?.contractEndDate}"  />
			</div>
		</div>
	
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'contractStartDate', 'error')} required">
				<label for="contractStartDate">
					<g:message code="contractedPack.contractStartDate.label" default="Fecha hasta" />
					<span class="required-indicator">*</span>
				</label>
				<g:datePicker name="contractStartDate" precision="day"  value="${contractedPackInstance?.contractStartDate}"  />
			</div>
		</div>
	</div>
</div>