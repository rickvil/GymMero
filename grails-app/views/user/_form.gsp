<%@ page import="com.gym.User" %>
<div class="panel-body bg-light">

	<div class="section-divider mt20 mb40">
		<span> Datos del Mero Socio</span>
	</div>

	<div class="section row">
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'dni', 'error')} required">
				<label for="dni" class="field prepend-icon">
					<g:textField name="dni" required="" value="${userInstance?.dni}" class="gui-input" placeholder="Dni"/>
					<label for="dni" class="field-icon">
						<i class="fa fa-list-alt"></i>
					</label>
				</label>
			</div>
		</div>

		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthday', 'error')} ">
				<g:datePicker name="birthday" precision="day" value="${userInstance?.birthday}" default="${new Date()}" noSelection="['': '']" years="${1940..2021}"/>
			</div>
		</div>
	</div>

	<div class="section row">
		<div class="col-md-6">
			<label for="name" class="field prepend-icon">
				<g:textField name="name" maxlength="50" required="" value="${userInstance?.name}" class="gui-input" placeholder="Nombre..."/>
				<label for="name" class="field-icon">
					<i class="fa fa-user"></i>
				</label>
			</label>
		</div>

		<div class="col-md-6">
			<label for="lastName" class="field prepend-icon">
				<g:textField name="lastName" maxlength="50" required="" value="${userInstance?.lastName}" class="gui-input" placeholder="Apellido..."/>
				<label for="lastName" class="field-icon">
					<i class="fa fa-user"></i>
				</label>
			</label>
		</div>
	</div>

	<div class="section row">
		<div class="col-md-6">
			<label for="phoneNumber" class="field prepend-icon">
				<g:textField name="phoneNumber" value="${userInstance?.phoneNumber}" class="gui-input phone-group" placeholder="Teléfono"/>
				<label for="home_phone" class="field-icon">
					<i class="fa fa-phone"></i>
				</label>
			</label>
		</div>

		<div class="col-md-6">
			<label class="field select">
				<g:select name="sex" from="${userInstance.constraints.sex.inList}" required="" value="${userInstance?.sex}" valueMessagePrefix="user.sex"/>
				<i class="arrow double"></i>
			</label>
		</div>
	</div>

	<div class="section row">
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
				<label for="email" class="field prepend-icon">
					<g:field type="email" name="email" maxlength="50" value="${userInstance?.email}" class="gui-input" placeholder="Email"/>
					<label for="email" class="field-icon">
						<i class="fa fa-envelope-o"></i>
					</label>
				</label>
			</div>

			%{--<label for="password" class="field prepend-icon">--}%
				%{--<g:field type="password" name="password" value="${userInstance?.password}" class="gui-input" placeholder="Create a password"/>--}%
				%{--<label for="password" class="field-icon">--}%
					%{--<i class="fa fa-lock"></i>--}%
				%{--</label>--}%
			%{--</label>--}%
		</div>
	</div>
</div>