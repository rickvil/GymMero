<%@ page contentType="text/html;charset=UTF-8" %>

<html>

<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <title>MeroGym</title>
    <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
    <meta name="description" content="AbsoluteAdmin - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="AbsoluteAdmin">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font CSS (Via CDN) -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>

    <!-- Theme CSS -->
    <asset:stylesheet src="assets/skin/default_skin/css/theme.css"/>

    <!-- Admin Forms CSS -->
    <asset:stylesheet src="assets/admin-tools/admin-forms/css/admin-forms.min.css"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="${resource(file:'favicon.ico')}" type="image/x-icon" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
   <![endif]-->

    <style type="text/css">
        .textColor {
            color: #00e600 !important;
            font-weight: bold !important;
            text-align: center;
        }
    </style>

    </head>

<body class="external-page sb-l-c sb-r-c">

<!-- Start: Main -->
<div id="main" class="animated fadeIn">

    <!-- Start: Content-Wrapper -->
    <section id="content_wrapper">

        <!-- Begin: Animated Canvas BG -->
        <div id="canvas-wrapper">
            <canvas id="demo-canvas"></canvas>
        </div>

        <!-- Begin: Content -->
        <section id="content">


            <div class="admin-form theme-info" id="login1" style="margin-top: 6%;">
                <img src="${resource(file:'logo.jpg')}" alt="logo" style="width: 20%; margin:auto;display:block;">

                %{--<div id="counter"></div>--}%
                <h1 class="coming-soon-title textColor">Bienvenido a Mero Gym</h1>
                <br/>
                <h2 class="textColor">Registre su Asistencia con el lector de Credencial</h2>
                <div class="panel panel-info bw10">

                    <!-- end .form-header section -->
                    <form method="post" action="/" id="contact">
                        <div class="panel-menu">
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="password" class="field prepend-icon">
                                        <input type="text" name="password" id="password" class="gui-input" placeholder="Código de Credencial">
                                        %{--<label for="password" class="field-icon">--}%
                                            %{--<i class="fa fa-envelope-o"></i>--}%
                                        %{--</label>--}%
                                    </label>
                                </div>
                                %{--<div class="col-md-3">--}%
                                    %{--<button type="submit" class="button btn-info mr10 btn-block">Notify</button>--}%
                                %{--</div>--}%
                            </div>
                        </div>
                        <!-- end .form-body section -->

                    </form>
                </div>
            </div>

        </section>
        <!-- End: Content -->

    </section>
    <!-- End: Content-Wrapper -->

</div>
<!-- End: Main -->

<!-- BEGIN: PAGE SCRIPTS -->

<!-- jQuery -->
<asset:javascript src="vendor/jquery/jquery-1.11.1.min.js"/>
<asset:javascript src="vendor/jquery/jquery_ui/jquery-ui.min.js"/>

<!-- Countdown Plugin -->
%{--<script src="vendor/plugins/countdown/jquery.plugin.min.js"></script>--}%
%{--<script src="vendor/plugins/countdown/jquery.countdown.min.js"></script>--}%

<!-- CanvasBG Plugin(creates mousehover effect) -->
<asset:javascript src="vendor/plugins/canvasbg/canvasbg.js"/>

<!-- Theme Javascript -->
<asset:javascript src="assets/js/utility/utility.js"/>
<asset:javascript src="assets/js/demo/demo.js"/>
<asset:javascript src="assets/js/main.js"/>

<!-- Page Javascript -->
<script type="text/javascript">
    jQuery(document).ready(function() {

        "use strict";

        // Init Theme Core
        Core.init();

        // Init Demo JS
        Demo.init();

        // Init CanvasBG and pass target starting location
        CanvasBG.init({
            Loc: {
                x: window.innerWidth / 10,
                y: window.innerHeight / 20
            },
        });

        // Init Countdown Plugin
//        var newYear = new Date();
//        newYear = new Date(2015, 6, 0);
//        $('#counter').countdown({
//            until: newYear
//        });

        // For further documentation, settings, and examples
        // see http://keith-wood.name/countdownRef.html



    });
</script>

<!-- END: PAGE SCRIPTS -->

</body>

</html>
