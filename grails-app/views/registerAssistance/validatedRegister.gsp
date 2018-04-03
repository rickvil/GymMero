<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>MeroGym</title>
    <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
    <meta name="description" content="AbsoluteAdmin - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="AbsoluteAdmin">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>

    <asset:stylesheet src="assets/skin/default_skin/css/theme.css"/>
    <asset:stylesheet src="assets/admin-tools/admin-forms/css/admin-forms.min.css"/>

    <link rel="shortcut icon" href="${resource(file:'favicon.ico')}" type="image/x-icon" />

    <style type="text/css">
    .textColor {
        color: #00e600 !important;
        font-weight: bold !important;
        text-align: center;
    }
    </style>

</head>

<body class="external-page sb-l-c sb-r-c">

<div id="main" class="animated fadeIn">
    <section id="content_wrapper">
        <div id="canvas-wrapper">
            <canvas id="demo-canvas"></canvas>
        </div>
        <section id="content">
            <g:if test="${flash.error}">
                <div class="alert alert-error" style="display: block">${flash.error}</div>
            </g:if>
            <div class="admin-form theme-info" id="login1" style="margin-top: 6%;">
                <img src="${resource(file:'logo.jpg')}" alt="logo" style="width: 20%; margin:auto;display:block;">
                <g:if test="${!user.isNowBirthday()}">
                    <h1 class="coming-soon-title textColor">Bienvenido
                        <a href="${createLink(uri: '/contractedPack/show/'+contractedPack?.id)}" target="_blank"><span style="color: black !important;">${user?.completeName}</span></a>
                    </h1>
                </g:if>
                <g:if test="${user.isNowBirthday()}">
                    <h1 class="coming-soon-title textColor" style="color: red !important;" id="showError">Feliz Cumpleños
                        <span style="color: black !important;">${user?.completeName} !!</span>
                    </h1>
                    <h1 class="textColor">
                        <span style="color: #ee08fa !important;">Mero </span>
                        <span style="color: black !important;">Gym </span>
                        <span style="color: #ee08fa !important;">Fitness </span>
                        te desea un gran día!
                    </h1>
                </g:if>
                <br/>
                <h1 class="textColor">Tienes disponible ${contractedPack.remainingClasses} clases</h1>

                <g:if test="${contractedPack.debt != 0}">
                    <h1 class="textColor" style="color: red !important;">Tienes una deuda de ${contractedPack.debt} $</h1>
                </g:if>

                <h2 class="textColor" style="color: black !important;">Espera la confirmación de asistencia de tu Instructor</h2>
                <h2 class="textColor" style="color: black !important;">para tu clase de ${contractedPack.activity.title}
                    <g:if test="${contractedPack.typeActivity.size() != 0}">
                        - ${contractedPack.typeActivity.title}
                    </g:if>
                </h2>
                <div class="panel panel-info bw10">
                    <div class="panel-menu">
                        <div class="row">
                            <div class="col-md-12">
                                <g:form controller="registerAssistance" action="confirmRegister">
                                    <fieldset class="form">
                                        <g:passwordField id="credentialInstructor" name="credentialInstructor" class="gui-input" placeholder="Credencial de Instructor" required=""/>
                                        <g:hiddenField name="credentialUser" value="${contractedPack.barCode}"/>
                                    </fieldset>
                                </g:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
</div>

<asset:javascript src="vendor/jquery/jquery-1.11.1.min.js"/>
<asset:javascript src="vendor/jquery/jquery_ui/jquery-ui.min.js"/>
<asset:javascript src="vendor/plugins/canvasbg/canvasbg.js"/>

<asset:javascript src="assets/js/utility/utility.js"/>
<asset:javascript src="assets/js/main.js"/>

<script type="text/javascript">
    jQuery(document).ready(function() {
        $("#credentialInstructor").focus();
        $("#credentialInstructor").blur(function(){
            $("#credentialInstructor").focus();
        });
        "use strict";
        CanvasBG.init({
            Loc: {
                x: window.innerWidth / 10,
                y: window.innerHeight / 20
            }
        });
    });
</script>
</body>
</html>