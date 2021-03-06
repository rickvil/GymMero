<%@ page import="com.gym.ContractedPack" %>

<div class="panel-body bg-light">

	<div class="section-divider mt20 mb40">
		<span>Pack</span>
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
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'activity', 'error')}">
				<g:message code="contractedPack.activity.label" default="Actividad" />
				<label class="field">
                    <g:select name="activity" from="${com.gym.Activity.list()}" multiple="multiple" optionKey="id" optionValue="title" size="8" value="${contractedPackInstance?.activity*.id}" class="many-to-many"/>
					<i class="arrow double"></i>
				</label>
                <g:message code="contractedPack.activity.ctrl.label" default="Para seleccionar mas de 1 opción," /> <br/>
                <g:message code="contractedPack.activity.ctrl1.label" default="presione la tecla Ctrl" />
			</div>
		</div>

		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'typeActivity', 'error')} required">
				<g:message code="contractedPack.typeActivity.label" default="Tipo de Actividad" />
				<label class="field">
                    <g:select name="typeActivity" from="${com.gym.TypeActivity.list()}" multiple="multiple" optionKey="id" optionValue="title" size="8" value="${contractedPackInstance?.typeActivity*.id}" class="many-to-many"/>
					<i class="arrow double"></i>
				</label>
                <g:message code="contractedPack.typeActivity.ctrl.label" default="Para seleccionar mas de 1 opción," /> <br/>
                <g:message code="contractedPack.typeActivity.ctrl1.label" default="presione la tecla Ctrl" />
			</div>
		</div>
	</div>

	<div class="section row">
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'barCode', 'error')} ">
				<g:message code="contractedPack.barCode.label" default="Codigo de Barra" />
				<label for="barCode" class="field prepend-icon">
					<g:textField name="barCode" value="${contractedPackInstance?.barCode}" class="gui-input" readonly="readonly"/>
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
					<g:field name="credit" type="number" value="${contractedPackInstance.credit}" min="0" max="60" class="gui-input" required=""/>
					<label for="credit" class="field-icon">
						<i class="fa fa-calendar"></i>
					</label>
				</label>
			</div>
		</div>

        %{--<div class="col-md-3">--}%
            %{--<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'free', 'error')} ">--}%
                %{--<div class="option-group field">--}%
                    %{--<g:message code="contractedPack.credit.label" default=" ." />--}%
                    %{--<label class="option block">--}%
                        %{--<g:checkBox name="free" value="${contractedPackInstance?.free}" />--}%
                        %{--<span class="checkbox"></span> free x 1 mes--}%
                    %{--</label>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
	</div>

	<div class="section row">
		<div class="col-md-4">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'price', 'error')} required">

				<g:if test="${contractedPackInstance?.id == null}">
					<g:message code="contractedPack.price.label" default="Importe que paga" />
					<label for="price" class="field prepend-icon">
					<g:field name="price" value="${fieldValue(bean: contractedPackInstance, field: 'price')}" required="" class="gui-input" />
				</g:if>
				<g:if test="${contractedPackInstance?.id != null}">
					<g:message code="contractedPack.price.label" default="Importe que pago" />
					<label for="price" class="field prepend-icon">
					<g:field name="price" value="${fieldValue(bean: contractedPackInstance, field: 'price')}" required="" class="gui-input" readonly="readonly"/>
				</g:if>
					<label for="price" class="field-icon">
						<i class="fa fa-money"></i>
					</label>
				</label>
			</div>
		</div>

        <div class="col-md-4">
            <div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'debt', 'error')} required">
                <g:message code="contractedPack.debt.label" default="Importe que Adeuda" />
                <label for="debt" class="field prepend-icon">
					<g:if test="${contractedPackInstance?.id == null}">
                    	<g:field name="debt" value="${fieldValue(bean: contractedPackInstance, field: 'debt')}" required="" class="gui-input" />
					</g:if>
					<g:if test="${contractedPackInstance?.id != null}">
						<g:field name="debt" value="${fieldValue(bean: contractedPackInstance, field: 'debt')}" required="" class="gui-input" readonly="readonly"/>
					</g:if>
						<label for="debt" class="field-icon">
                        <i class="fa fa-money"></i>
                    </label>
                </label>
            </div>
        </div>
		<g:if test="${contractedPackInstance?.id != null && contractedPackInstance?.debt != 0}">
			<div class="col-md-4">
				<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'payment', 'error')} required">
					<g:message code="contractedPack.payment.label" default="Paga" />
					<label for="debt" class="field prepend-icon">
						<g:field name="payment" value="${fieldValue(bean: contractedPackInstance, field: 'payment')}" required="" class="gui-input" />
						<label for="payment" class="field-icon">
							<i class="fa fa-money"></i>
						</label>
					</label>
				</div>
			</div>
		</g:if>
	</div>
	
	<div class="section row">
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'contractStartDate', 'error')} required">
				<label for="contractStartDate">
					<g:message code="contractedPack.contractStartDate.label" default="Fecha inicio" />
					<span class="required-indicator">*</span>
				</label>
				<g:datePicker name="contractStartDate" precision="day"  value="${contractedPackInstance?.contractStartDate}"  />
			</div>
		</div>
	
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'contractEndDate', 'error')} required">
				<label for="contractEndDate">
					<g:message code="contractedPack.contractEndDate.label" default="Fecha vencimiento" />
					<span class="required-indicator">*</span>
				</label>
				<g:datePicker name="contractEndDate" precision="day"  value="${contractedPackInstance?.contractEndDate}"  />
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
</div>