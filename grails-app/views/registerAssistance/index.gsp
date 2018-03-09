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
            <div class="admin-form theme-info" id="login1" style="margin-top: 6%;">
                <img src="${resource(file:'logo.jpg')}" alt="logo" style="width: 20%; margin:auto;display:block;">
                <h1 class="coming-soon-title textColor">Bienvenido a
                    <span style="color: #ee08fa !important;">Mero </span>
                    <span style="color: black !important;">Gym </span>
                    <span style="color: #ee08fa !important;">Fitness</span>
                </h1>
                <br/>
                <h2 class="textColor">Registre su Asistencia con el lector de Credencial</h2>
                <g:if test="${flash.error}">
                    <h2 class="textColor" style="color: red !important;" id="showError">${flash.error}</h2>
                </g:if>
                <div class="panel panel-info bw10">
                    <div class="panel-menu">
                        <div class="row">
                            <div class="col-md-12">
                                <g:form controller="registerAssistance" action="validatedRegister">
                                    <fieldset class="form">
                                        <g:textField id="credential" name="credential" class="gui-input" placeholder="Código de Credencial"/>
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
    setTimeout(function(){
        $("#showError").empty();
    }, 10000);

    jQuery(document).ready(function() {
        $("#credential").focus();
        $("#credential").blur(function(){
            $("#credential").focus();
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