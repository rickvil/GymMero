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
				<label class="field select">
					<g:select id="activity" name="activity.id" from="${com.gym.Activity.list()}" optionKey="id" optionValue="title" required="" value="${contractedPackInstance?.activity?.id}" class="many-to-one"/>
					<i class="arrow double"></i>
				</label>
			</div>
		</div>

		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: contractedPackInstance, field: 'typeActivity', 'error')} required">
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
				<label for="barCode" class="field prepend-icon">
					<g:textField name="barCode" value="${contractedPackInstance?.barCode}" class="gui-input" />
					<label for="barCode" class="field-icon">
						<i class="fa fa-barcode"></i>
					</label>
				</label>
			</div>
		</div>

		<div class="col-md-6">
			<label class="field select">
				<g:select name="credit" from="${contractedPackInstance.constraints.credit.inList}" required="" value="${fieldValue(bean: contractedPackInstance, field: 'credit')}" valueMessagePrefix="contractedPack.credit" noSelection="['': '']"/>
				<i class="arrow double"></i>
			</label>
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
			<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthday', 'error')} ">
				<g:datePicker name="contractedDate" precision="day"  value="${contractedPackInstance?.contractedDate}"  />
			</div>
		</div>
	</div>
</div>