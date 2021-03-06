<!DOCTYPE html>
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

	<!-- FullCalendar Plugin CSS -->
	<asset:stylesheet src="vendor/plugins/fullcalendar/fullcalendar.min.css"/>

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

</head>

<body class="dashboard-page">

<!-------------------------------------------------------------+
  <body> Helper Classes:
---------------------------------------------------------------+
  '.sb-l-o' - Sets Left Sidebar to "open"
  '.sb-l-m' - Sets Left Sidebar to "minified"
  '.sb-l-c' - Sets Left Sidebar to "closed"

  '.sb-r-o' - Sets Right Sidebar to "open"
  '.sb-r-c' - Sets Right Sidebar to "closed"
---------------------------------------------------------------+
 Example: <body class="example-page sb-l-o sb-r-c">
 Results: Sidebar left Open, Sidebar right Closed
--------------------------------------------------------------->

<!-- Start: Theme Preview Pane -->
<div id="skin-toolbox">
	<div class="panel">
		<div class="panel-body pn">
			<ul class="nav nav-list nav-list-sm pl15 pt10" role="tablist">
				<li class="active">
					<a href="#toolbox-header" role="tab" data-toggle="tab">Navbar</a>
				</li>
				<li>
					<a href="#toolbox-sidebar" role="tab" data-toggle="tab">Sidebar</a>
				</li>
				<li>
					<a href="#toolbox-settings" role="tab" data-toggle="tab">Misc</a>
				</li>
			</ul>
			<div class="tab-content p20 ptn pb15">
				<div role="tabpanel" class="tab-pane active" id="toolbox-header">
					<form id="toolbox-header-skin">
						<h4 class="mv20">Header Skins</h4>
						<div class="skin-toolbox-swatches">
							<div class="checkbox-custom checkbox-disabled fill mb5">
								<input type="radio" name="headerSkin" id="headerSkin8" checked value="">
								<label for="headerSkin8">Light</label>
							</div>
							<div class="checkbox-custom fill checkbox-primary mb5">
								<input type="radio" name="headerSkin" id="headerSkin1" value="bg-primary">
								<label for="headerSkin1">Primary</label>
							</div>
							<div class="checkbox-custom fill checkbox-info mb5">
								<input type="radio" name="headerSkin" id="headerSkin3" value="bg-info">
								<label for="headerSkin3">Info</label>
							</div>
							<div class="checkbox-custom fill checkbox-warning mb5">
								<input type="radio" name="headerSkin" id="headerSkin4" value="bg-warning">
								<label for="headerSkin4">Warning</label>
							</div>
							<div class="checkbox-custom fill checkbox-danger mb5">
								<input type="radio" name="headerSkin" id="headerSkin5" value="bg-danger">
								<label for="headerSkin5">Danger</label>
							</div>
							<div class="checkbox-custom fill checkbox-alert mb5">
								<input type="radio" name="headerSkin" id="headerSkin6" value="bg-alert">
								<label for="headerSkin6">Alert</label>
							</div>
							<div class="checkbox-custom fill checkbox-system mb5">
								<input type="radio" name="headerSkin" id="headerSkin7" value="bg-system">
								<label for="headerSkin7">System</label>
							</div>
							<div class="checkbox-custom fill checkbox-success mb5">
								<input type="radio" name="headerSkin" id="headerSkin2" value="bg-success">
								<label for="headerSkin2">Success</label>
							</div>
							<div class="checkbox-custom fill mb5">
								<input type="radio" name="headerSkin" id="headerSkin9" value="bg-dark">
								<label for="headerSkin9">Dark</label>
							</div>
						</div>
					</form>
				</div>
				<div role="tabpanel" class="tab-pane" id="toolbox-sidebar">
					<form id="toolbox-sidebar-skin">
						<h4 class="mv20">Sidebar Skins</h4>
						<div class="skin-toolbox-swatches">
							<div class="checkbox-custom fill mb5">
								<input type="radio" name="sidebarSkin" checked id="sidebarSkin3" value="">
								<label for="sidebarSkin3">Dark</label>
							</div>
							<div class="checkbox-custom fill checkbox-disabled mb5">
								<input type="radio" name="sidebarSkin" id="sidebarSkin1" value="sidebar-light">
								<label for="sidebarSkin1">Light</label>
							</div>
							<div class="checkbox-custom fill checkbox-light mb5">
								<input type="radio" name="sidebarSkin" id="sidebarSkin2" value="sidebar-light light">
								<label for="sidebarSkin2">Lighter</label>
							</div>
						</div>
					</form>
				</div>
				<div role="tabpanel" class="tab-pane" id="toolbox-settings">
					<form id="toolbox-settings-misc">
						<h4 class="mv20 mtn">Layout Options</h4>
						<div class="form-group">
							<div class="checkbox-custom fill mb5">
								<input type="checkbox" checked="" id="header-option">
								<label for="header-option">Fixed Header</label>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox-custom fill mb5">
								<input type="checkbox" checked="" id="sidebar-option">
								<label for="sidebar-option">Fixed Sidebar</label>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox-custom fill mb5">
								<input type="checkbox" id="breadcrumb-option">
								<label for="breadcrumb-option">Fixed Breadcrumbs</label>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox-custom fill mb5">
								<input type="checkbox" id="breadcrumb-hidden">
								<label for="breadcrumb-hidden">Hide Breadcrumbs</label>
							</div>
						</div>
						<h4 class="mv20">Layout Options</h4>
						<div class="form-group">
							<div class="radio-custom mb5">
								<input type="radio" id="fullwidth-option" checked name="layout-option">
								<label for="fullwidth-option">Fullwidth Layout</label>
							</div>
						</div>
						<div class="form-group mb20">
							<div class="radio-custom radio-disabled mb5">
								<input type="radio" id="boxed-option" name="layout-option" disabled>
								<label for="boxed-option">Boxed Layout
									<b class="text-muted">(Coming Soon)</b>
								</label>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="form-group mn br-t p15">
				<a href="#" id="clearLocalStorage" class="btn btn-primary btn-block pb10 pt10">Clear LocalStorage</a>
			</div>
		</div>
	</div>
</div>
<!-- End: Theme Preview Pane -->

<!-- Start: Main -->
<div id="main">

	<!-----------------------------------------------------------------+
       ".navbar" Helper Classes:
    -------------------------------------------------------------------+
       * Positioning Classes:
        '.navbar-static-top' - Static top positioned navbar
        '.navbar-static-top' - Fixed top positioned navbar

       * Available Skin Classes:
         .bg-dark    .bg-primary   .bg-success
         .bg-info    .bg-warning   .bg-danger
         .bg-alert   .bg-system
    -------------------------------------------------------------------+
      Example: <header class="navbar navbar-fixed-top bg-primary">
      Results: Fixed top navbar with blue background
    ------------------------------------------------------------------->

	<!-- Start: Header -->
	<header class="navbar navbar-fixed-top navbar-shadow bg-danger">
		<div class="navbar-branding dark bg-danger">
			<a class="navbar-brand" href="/GymMero">
				<b>Mero Gym</b>
			</a>
			<span id="toggle_sidemenu_l" class="ad ad-lines"></span>
		</div>
		%{--<ul class="nav navbar-nav navbar-left">--}%
			%{--<li class="dropdown menu-merge hidden-xs">--}%
				%{--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown--}%
					%{--<span class="caret caret-tp"></span>--}%
				%{--</a>--}%
				%{--<ul class="dropdown-menu" role="menu">--}%
					%{--<li><a href="#">Action</a></li>--}%
					%{--<li><a href="#">Another action</a></li>--}%
					%{--<li><a href="#">Something else here</a></li>--}%
					%{--<li class="divider"></li>--}%
					%{--<li><a href="#">Separated link</a></li>--}%
				%{--</ul>--}%
			%{--</li>--}%
			%{--<li class="hidden-xs">--}%
				%{--<a class="request-fullscreen toggle-active" href="#">--}%
					%{--<span class="ad ad-screen-full fs18"></span>--}%
				%{--</a>--}%
			%{--</li>--}%
		%{--</ul>--}%
		%{--<form class="navbar-form navbar-left navbar-search alt" role="search">--}%
			%{--<div class="form-group">--}%
				%{--<input type="text" class="form-control" placeholder="Search..." value="Search...">--}%
			%{--</div>--}%
		%{--</form>--}%
		<ul class="nav navbar-nav navbar-right">
			%{--<li>--}%
				%{--<div class="navbar-btn btn-group">--}%
					%{--<a href="#" class="topbar-menu-toggle btn btn-sm" data-toggle="button">--}%
						%{--<span class="ad ad-wand"></span>--}%
					%{--</a>--}%
				%{--</div>--}%
			%{--</li>--}%
			%{--<li class="dropdown menu-merge">--}%
				%{--<div class="navbar-btn btn-group">--}%
					%{--<button data-toggle="dropdown" class="btn btn-sm dropdown-toggle">--}%
						%{--<span class="fa fa-bell-o fs14 va-m"></span>--}%
						%{--<span class="badge badge-danger">9</span>--}%
					%{--</button>--}%
					%{--<div class="dropdown-menu dropdown-persist w350 animated animated-shorter fadeIn" role="menu">--}%
						%{--<div class="panel mbn">--}%
							%{--<div class="panel-menu">--}%
								%{--<span class="panel-icon"><i class="fa fa-clock-o"></i></span>--}%
								%{--<span class="panel-title fw600"> Recent Activity</span>--}%
								%{--<button class="btn btn-default light btn-xs pull-right" type="button"><i class="fa fa-refresh"></i></button>--}%
							%{--</div>--}%
							%{--<div class="panel-body panel-scroller scroller-navbar scroller-overlay scroller-pn pn">--}%
								%{--<ol class="timeline-list">--}%
									%{--<li class="timeline-item">--}%
										%{--<div class="timeline-icon bg-dark light">--}%
											%{--<span class="fa fa-tags"></span>--}%
										%{--</div>--}%
										%{--<div class="timeline-desc">--}%
											%{--<b>Michael</b> Added to his store:--}%
											%{--<a href="#">Ipod</a>--}%
										%{--</div>--}%
										%{--<div class="timeline-date">1:25am</div>--}%
									%{--</li>--}%
									%{--<li class="timeline-item">--}%
										%{--<div class="timeline-icon bg-dark light">--}%
											%{--<span class="fa fa-tags"></span>--}%
										%{--</div>--}%
										%{--<div class="timeline-desc">--}%
											%{--<b>Sara</b> Added his store:--}%
											%{--<a href="#">Notebook</a>--}%
										%{--</div>--}%
										%{--<div class="timeline-date">3:05am</div>--}%
									%{--</li>--}%
									%{--<li class="timeline-item">--}%
										%{--<div class="timeline-icon bg-success">--}%
											%{--<span class="fa fa-usd"></span>--}%
										%{--</div>--}%
										%{--<div class="timeline-desc">--}%
											%{--<b>Admin</b> created invoice for:--}%
											%{--<a href="#">Software</a>--}%
										%{--</div>--}%
										%{--<div class="timeline-date">4:15am</div>--}%
									%{--</li>--}%
									%{--<li class="timeline-item">--}%
										%{--<div class="timeline-icon bg-success">--}%
											%{--<span class="fa fa-usd"></span>--}%
										%{--</div>--}%
										%{--<div class="timeline-desc">--}%
											%{--<b>Admin</b> created invoice for:--}%
											%{--<a href="#">Apple</a>--}%
										%{--</div>--}%
										%{--<div class="timeline-date">7:45am</div>--}%
									%{--</li>--}%
									%{--<li class="timeline-item">--}%
										%{--<div class="timeline-icon bg-success">--}%
											%{--<span class="fa fa-usd"></span>--}%
										%{--</div>--}%
										%{--<div class="timeline-desc">--}%
											%{--<b>Admin</b> created invoice for:--}%
											%{--<a href="#">Software</a>--}%
										%{--</div>--}%
										%{--<div class="timeline-date">4:15am</div>--}%
									%{--</li>--}%
									%{--<li class="timeline-item">--}%
										%{--<div class="timeline-icon bg-success">--}%
											%{--<span class="fa fa-usd"></span>--}%
										%{--</div>--}%
										%{--<div class="timeline-desc">--}%
											%{--<b>Admin</b> created invoice for:--}%
											%{--<a href="#">Apple</a>--}%
										%{--</div>--}%
										%{--<div class="timeline-date">7:45am</div>--}%
									%{--</li>--}%
									%{--<li class="timeline-item">--}%
										%{--<div class="timeline-icon bg-dark light">--}%
											%{--<span class="fa fa-tags"></span>--}%
										%{--</div>--}%
										%{--<div class="timeline-desc">--}%
											%{--<b>Michael</b> Added his store:--}%
											%{--<a href="#">Ipod</a>--}%
										%{--</div>--}%
										%{--<div class="timeline-date">8:25am</div>--}%
									%{--</li>--}%
									%{--<li class="timeline-item">--}%
										%{--<div class="timeline-icon bg-system">--}%
											%{--<span class="fa fa-fire"></span>--}%
										%{--</div>--}%
										%{--<div class="timeline-desc">--}%
											%{--<b>Admin</b> created invoice for:--}%
											%{--<a href="#">Software</a>--}%
										%{--</div>--}%
										%{--<div class="timeline-date">4:15am</div>--}%
									%{--</li>--}%
									%{--<li class="timeline-item">--}%
										%{--<div class="timeline-icon bg-dark light">--}%
											%{--<span class="fa fa-tags"></span>--}%
										%{--</div>--}%
										%{--<div class="timeline-desc">--}%
											%{--<b>Sara</b> Added to his store:--}%
											%{--<a href="#">Notebook</a>--}%
										%{--</div>--}%
										%{--<div class="timeline-date">3:05am</div>--}%
									%{--</li>--}%
								%{--</ol>--}%

							%{--</div>--}%
							%{--<div class="panel-footer text-center p7">--}%
								%{--<a href="#" class="link-unstyled"> View All </a>--}%
							%{--</div>--}%
						%{--</div>--}%
					%{--</div>--}%
				%{--</div>--}%
			%{--</li>--}%
			%{--<li class="dropdown menu-merge">--}%
				%{--<div class="navbar-btn btn-group">--}%
					%{--<button data-toggle="dropdown" class="btn btn-sm dropdown-toggle">--}%
						%{--<span class="ad ad-radio-tower fs14 va-m"></span>--}%
						%{--<span class="badge">5</span>--}%
					%{--</button>--}%
					%{--<div class="dropdown-menu dropdown-persist w350 animated animated-shorter fadeIn" role="menu">--}%
						%{--<div class="panel mbn">--}%
							%{--<div class="panel-menu">--}%
								%{--<div class="btn-group btn-group-justified btn-group-nav" role="tablist">--}%
									%{--<a href="#nav-tab1" data-toggle="tab" class="btn btn-default btn-sm active">Notifications</a>--}%
									%{--<a href="#nav-tab2" data-toggle="tab" class="btn btn-default btn-sm br-l-n br-r-n">Messages</a>--}%
									%{--<a href="#nav-tab3" data-toggle="tab" class="btn btn-default btn-sm">Activity</a>--}%
								%{--</div>--}%
							%{--</div>--}%
							%{--<div class="panel-body panel-scroller scroller-navbar pn">--}%
								%{--<div class="tab-content br-n pn">--}%
									%{--<div id="nav-tab1" class="tab-pane alerts-widget active" role="tabpanel">--}%
										%{--<div class="media">--}%
											%{--<a class="media-left" href="#"> <span class="glyphicon glyphicon-user text-info"></span> </a>--}%
											%{--<div class="media-body">--}%
												%{--<h5 class="media-heading">New Registration--}%
													%{--<small class="text-muted"></small>--}%
												%{--</h5> Tyler Durden - 16 hours ago--}%

											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<div class="media-response"> Approve?</div>--}%
												%{--<div class="btn-group">--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-check text-success"></i>--}%
													%{--</button>--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-remove"></i>--}%
													%{--</button>--}%
												%{--</div>--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<a class="media-left" href="#"> <span class="glyphicon glyphicon-shopping-cart text-success"></span> </a>--}%
											%{--<div class="media-body">--}%
												%{--<h5 class="media-heading">New Order--}%
													%{--<small class="text-muted"></small>--}%
												%{--</h5> <a href="#">Apple Ipod</a> - 4 hours ago--}%
											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<div class="media-response"> Confirm?</div>--}%
												%{--<div class="btn-group">--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-check text-success"></i>--}%
													%{--</button>--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-print"></i>--}%
													%{--</button>--}%
												%{--</div>--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<a class="media-left" href="#"> <span class="glyphicon glyphicon-comment text-system"></span> </a>--}%
											%{--<div class="media-body">--}%
												%{--<h5 class="media-heading">New Comment--}%
													%{--<small class="text-muted"></small>--}%
												%{--</h5> Mike - I loved your article!--}%
											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<div class="media-response text-right"> Moderate?</div>--}%
												%{--<div class="btn-group">--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-pencil"></i>--}%
													%{--</button>--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-check text-success"></i>--}%
													%{--</button>--}%
												%{--</div>--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<a class="media-left" href="#"> <span class="glyphicon glyphicon-star text-warning"></span> </a>--}%
											%{--<div class="media-body">--}%
												%{--<h5 class="media-heading">New Review--}%
													%{--<small class="text-muted"></small>--}%
												%{--</h5> Sammy Hilton - 4 hours ago--}%
											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<div class="media-response"> Approve?</div>--}%
												%{--<div class="btn-group">--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-check text-success"></i>--}%
													%{--</button>--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-remove"></i>--}%
													%{--</button>--}%
												%{--</div>--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<a class="media-left" href="#"> <span class="glyphicon glyphicon-user text-info"></span> </a>--}%
											%{--<div class="media-body">--}%
												%{--<h5 class="media-heading">New Registration--}%
													%{--<small class="text-muted"></small>--}%
												%{--</h5> Michael Sober - 7 hours ago--}%
											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<div class="media-response"> Approve?</div>--}%
												%{--<div class="btn-group">--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-check text-success"></i>--}%
													%{--</button>--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-remove"></i>--}%
													%{--</button>--}%
												%{--</div>--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<a class="media-left" href="#"> <span class="glyphicon glyphicon-usd text-alert"></span> </a>--}%
											%{--<div class="media-body">--}%
												%{--<h5 class="media-heading">New Invoice--}%
													%{--<small class="text-muted"></small>--}%
												%{--</h5> <a href="#">Apple Ipod</a> - 4 hours ago--}%

											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<div class="media-response single">#518358</div>--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<a class="media-left" href="#"> <span class="glyphicon glyphicon-shopping-cart text-success"></span> </a>--}%
											%{--<div class="media-body">--}%
												%{--<h5 class="media-heading">New Order--}%
													%{--<small class="text-muted"></small>--}%
												%{--</h5> <a href="#">Apple Ipod</a> - 4 hours ago--}%
											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<div class="media-response"> Confirm?</div>--}%
												%{--<div class="btn-group">--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-check text-success"></i>--}%
													%{--</button>--}%
													%{--<button type="button" class="btn btn-default btn-xs light">--}%
														%{--<i class="fa fa-print"></i>--}%
													%{--</button>--}%
												%{--</div>--}%
											%{--</div>--}%
										%{--</div>--}%
									%{--</div>--}%
									%{--<div id="nav-tab2" class="tab-pane chat-widget" role="tabpanel">--}%
										%{--<div class="media">--}%
											%{--<div class="media-left">--}%
												%{--<a href="#">--}%
													%{--<img class="media-object" alt="64x64" src="assets/img/avatars/3.jpg">--}%
												%{--</a>--}%
											%{--</div>--}%
											%{--<div class="media-body">--}%
												%{--<span class="media-status online"></span>--}%
												%{--<h5 class="media-heading">Courtney Faught--}%
													%{--<small> - 12:30am</small>--}%
												%{--</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<div class="media-body">--}%
												%{--<span class="media-status offline"></span>--}%
												%{--<h5 class="media-heading">Joe Gibbons--}%
													%{--<small> - 12:30am</small>--}%
												%{--</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque.--}%
											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<a href="#">--}%
													%{--<img class="media-object" alt="64x64" src="assets/img/avatars/1.jpg">--}%
												%{--</a>--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<div class="media-left">--}%
												%{--<a href="#">--}%
													%{--<img class="media-object" alt="64x64" src="assets/img/avatars/2.jpg">--}%
												%{--</a>--}%
											%{--</div>--}%
											%{--<div class="media-body">--}%
												%{--<span class="media-status online"></span>--}%
												%{--<h5 class="media-heading">Courtney Faught--}%
													%{--<small> - 12:30am</small>--}%
												%{--</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metuscommodo.--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<div class="media-body">--}%
												%{--<span class="media-status offline"></span>--}%
												%{--<h5 class="media-heading">Joe Gibbons--}%
													%{--<small> - 12:30am</small>--}%
												%{--</h5> Cras sit amet nibh libero, in Nulla vel metus scelerisque antecommodo.--}%
											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<a href="#">--}%
													%{--<img class="media-object" alt="64x64" src="assets/img/avatars/1.jpg">--}%
												%{--</a>--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<div class="media-left">--}%
												%{--<a href="#">--}%
													%{--<img class="media-object" alt="64x64" src="assets/img/avatars/2.jpg">--}%
												%{--</a>--}%
											%{--</div>--}%
											%{--<div class="media-body">--}%
												%{--<span class="media-status online"></span>--}%
												%{--<h5 class="media-heading">Courtney Faught--}%
													%{--<small> - 12:30am</small>--}%
												%{--</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque soltudino.--}%
											%{--</div>--}%
										%{--</div>--}%
										%{--<div class="media">--}%
											%{--<div class="media-body">--}%
												%{--<span class="media-status offline"></span>--}%
												%{--<h5 class="media-heading">Joe Gibbons--}%
													%{--<small> - 12:30am</small>--}%
												%{--</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo.--}%
											%{--</div>--}%
											%{--<div class="media-right">--}%
												%{--<a href="#">--}%
													%{--<img class="media-object" alt="64x64" src="assets/img/avatars/1.jpg">--}%
												%{--</a>--}%
											%{--</div>--}%
										%{--</div>--}%
									%{--</div>--}%
									%{--<div id="nav-tab3" class="tab-pane scroller-nm" role="tabpanel">--}%
										%{--<ul class="media-list" role="menu">--}%
											%{--<li class="media">--}%
												%{--<a class="media-left" href="#"> <img src="assets/img/avatars/5.jpg" class="mw40" alt="avatar"> </a>--}%
												%{--<div class="media-body">--}%
													%{--<h5 class="media-heading">Article--}%
														%{--<small class="text-muted">- 08/16/22</small>--}%
													%{--</h5> Last Updated 36 days ago by--}%
													%{--<a class="text-system" href="#"> Max </a>--}%
												%{--</div>--}%
											%{--</li>--}%
											%{--<li class="media">--}%
												%{--<a class="media-left" href="#"> <img src="assets/img/avatars/2.jpg" class="mw40" alt="avatar"> </a>--}%
												%{--<div class="media-body">--}%
													%{--<h5 class="media-heading mv5">Article--}%
														%{--<small> - 08/16/22</small>--}%
													%{--</h5>--}%
													%{--Last Updated 36 days ago by--}%
													%{--<a class="text-system" href="#"> Max </a>--}%
												%{--</div>--}%
											%{--</li>--}%
											%{--<li class="media">--}%
												%{--<a class="media-left" href="#"> <img src="assets/img/avatars/3.jpg" class="mw40" alt="avatar"> </a>--}%
												%{--<div class="media-body">--}%
													%{--<h5 class="media-heading">Article--}%
														%{--<small class="text-muted">- 08/16/22</small>--}%
													%{--</h5> Last Updated 36 days ago by--}%
													%{--<a class="text-system" href="#"> Max </a>--}%
												%{--</div>--}%
											%{--</li>--}%
											%{--<li class="media">--}%
												%{--<a class="media-left" href="#"> <img src="assets/img/avatars/4.jpg" class="mw40" alt="avatar"> </a>--}%
												%{--<div class="media-body">--}%
													%{--<h5 class="media-heading mv5">Article--}%
														%{--<small class="text-muted">- 08/16/22</small>--}%
													%{--</h5> Last Updated 36 days ago by--}%
													%{--<a class="text-system" href="#"> Max </a>--}%
												%{--</div>--}%
											%{--</li>--}%
											%{--<li class="media">--}%
												%{--<a class="media-left" href="#"> <img src="assets/img/avatars/5.jpg" class="mw40" alt="avatar"> </a>--}%
												%{--<div class="media-body">--}%
													%{--<h5 class="media-heading">Article--}%
														%{--<small class="text-muted">- 08/16/22</small>--}%
													%{--</h5> Last Updated 36 days ago by--}%
													%{--<a class="text-system" href="#"> Max </a>--}%
												%{--</div>--}%
											%{--</li>--}%
											%{--<li class="media">--}%
												%{--<a class="media-left" href="#"> <img src="assets/img/avatars/2.jpg" class="mw40" alt="avatar"> </a>--}%
												%{--<div class="media-body">--}%
													%{--<h5 class="media-heading mv5">Article--}%
														%{--<small> - 08/16/22</small>--}%
													%{--</h5>--}%
													%{--Last Updated 36 days ago by--}%
													%{--<a class="text-system" href="#"> Max </a>--}%
												%{--</div>--}%
											%{--</li>--}%
											%{--<li class="media">--}%
												%{--<a class="media-left" href="#"> <img src="assets/img/avatars/3.jpg" class="mw40" alt="avatar"> </a>--}%
												%{--<div class="media-body">--}%
													%{--<h5 class="media-heading">Article--}%
														%{--<small class="text-muted">- 08/16/22</small>--}%
													%{--</h5> Last Updated 36 days ago by--}%
													%{--<a class="text-system" href="#"> Max </a>--}%
												%{--</div>--}%
											%{--</li>--}%
										%{--</ul>--}%
										%{--<table class="table table-striped hidden">--}%
											%{--<thead>--}%
											%{--<tr>--}%
												%{--<th>First Name</th>--}%
												%{--<th>Last Name</th>--}%
												%{--<th>Username</th>--}%
											%{--</tr>--}%
											%{--</thead>--}%
											%{--<tbody>--}%
											%{--<tr>--}%
												%{--<td>Mark</td>--}%
												%{--<td>Otto</td>--}%
												%{--<td>@mdo</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Jacob</td>--}%
												%{--<td>Thornton</td>--}%
												%{--<td>@fat</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Larry</td>--}%
												%{--<td>the Bird</td>--}%
												%{--<td>@twitter</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Sussy</td>--}%
												%{--<td>Watcher</td>--}%
												%{--<td>@thehawk</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Mark</td>--}%
												%{--<td>Otto</td>--}%
												%{--<td>@mdo</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Sussy</td>--}%
												%{--<td>Watcher</td>--}%
												%{--<td>@thehawk</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Jacob</td>--}%
												%{--<td>Thornton</td>--}%
												%{--<td>@fat</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Larry</td>--}%
												%{--<td>the Bird</td>--}%
												%{--<td>@twitter</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Sussy</td>--}%
												%{--<td>Watcher</td>--}%
												%{--<td>@thehawk</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Mark</td>--}%
												%{--<td>Otto</td>--}%
												%{--<td>@mdo</td>--}%
											%{--</tr>--}%
											%{--<tr>--}%
												%{--<td>Jacob</td>--}%
												%{--<td>Thornton</td>--}%
												%{--<td>@fat</td>--}%
											%{--</tr>--}%
											%{--</tbody>--}%
										%{--</table>--}%
									%{--</div>--}%
								%{--</div>--}%
							%{--</div>--}%
							%{--<div class="panel-footer text-center p7">--}%
								%{--<a href="#" class="link-unstyled"> View All </a>--}%
							%{--</div>--}%
						%{--</div>--}%
					%{--</div>--}%
				%{--</div>--}%
			%{--</li>--}%
			%{--<li class="dropdown menu-merge">--}%
				%{--<div class="navbar-btn btn-group">--}%
					%{--<button data-toggle="dropdown" class="btn btn-sm dropdown-toggle">--}%
						%{--<span class="flag-xs flag-us"></span>--}%
						%{--<!-- <span class="caret"></span> -->--}%
					%{--</button>--}%
					%{--<ul class="dropdown-menu pv5 animated animated-short flipInX" role="menu">--}%
						%{--<li>--}%
							%{--<a href="javascript:void(0);">--}%
								%{--<span class="flag-xs flag-in mr10"></span> Hindu </a>--}%
						%{--</li>--}%
						%{--<li>--}%
							%{--<a href="javascript:void(0);">--}%
								%{--<span class="flag-xs flag-tr mr10"></span> Turkish </a>--}%
						%{--</li>--}%
						%{--<li>--}%
							%{--<a href="javascript:void(0);">--}%
								%{--<span class="flag-xs flag-es mr10"></span> Spanish </a>--}%
						%{--</li>--}%
					%{--</ul>--}%
				%{--</div>--}%
			%{--</li>--}%
			%{--<li class="menu-divider hidden-xs">--}%
				%{--<i class="fa fa-circle"></i>--}%
			%{--</li>--}%
			%{--<li class="dropdown menu-merge">--}%
				%{--<a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">--}%
					%{--<img src="assets/img/avatars/1.jpg" alt="avatar" class="mw30 br64">--}%
					%{--<span class="hidden-xs pl15"> Michael .R </span>--}%
					%{--<span class="caret caret-tp hidden-xs"></span>--}%
				%{--</a>--}%
				%{--<ul class="dropdown-menu list-group dropdown-persist w250" role="menu">--}%
					%{--<li class="dropdown-header clearfix">--}%
						%{--<div class="pull-left ml10">--}%
							%{--<select id="user-status">--}%
								%{--<optgroup label="Current Status:">--}%
									%{--<option value="1-1">Away</option>--}%
									%{--<option value="1-2">Offline</option>--}%
									%{--<option value="1-3" selected="selected">Online</option>--}%
								%{--</optgroup>--}%
							%{--</select>--}%
						%{--</div>--}%

						%{--<div class="pull-right mr10">--}%
							%{--<select id="user-role">--}%
								%{--<optgroup label="Logged in As:">--}%
									%{--<option value="1-1">Client</option>--}%
									%{--<option value="1-2">Editor</option>--}%
									%{--<option value="1-3" selected="selected">Admin</option>--}%
								%{--</optgroup>--}%
							%{--</select>--}%
						%{--</div>--}%
					%{--</li>--}%
					%{--<li class="list-group-item">--}%
						%{--<a href="#" class="animated animated-short fadeInUp">--}%
							%{--<span class="fa fa-envelope"></span> Messages--}%
							%{--<span class="label label-warning">2</span>--}%
						%{--</a>--}%
					%{--</li>--}%
					%{--<li class="list-group-item">--}%
						%{--<a href="#" class="animated animated-short fadeInUp">--}%
							%{--<span class="fa fa-user"></span> Friends--}%
							%{--<span class="label label-warning">6</span>--}%
						%{--</a>--}%
					%{--</li>--}%
					%{--<li class="list-group-item">--}%
						%{--<a href="#" class="animated animated-short fadeInUp">--}%
							%{--<span class="fa fa-bell"></span> Notifications </a>--}%
					%{--</li>--}%
					%{--<li class="list-group-item">--}%
						%{--<a href="#" class="animated animated-short fadeInUp">--}%
							%{--<span class="fa fa-gear"></span> Settings </a>--}%
					%{--</li>--}%
					%{--<li class="dropdown-footer">--}%
						%{--<a href="#" class="">--}%
							%{--<span class="fa fa-power-off pr5"></span> Logout </a>--}%
					%{--</li>--}%
				%{--</ul>--}%
			%{--</li>--}%
		</ul>
	</header>
	<!-- End: Header -->

	<!-----------------------------------------------------------------+
       "#sidebar_left" Helper Classes:
    -------------------------------------------------------------------+
       * Positioning Classes:
        '.affix' - Sets Sidebar Left to the fixed position

       * Available Skin Classes:
         .sidebar-dark (default no class needed)
         .sidebar-light
         .sidebar-light.light
    -------------------------------------------------------------------+
       Example: <aside id="sidebar_left" class="affix sidebar-light">
       Results: Fixed Left Sidebar with light/white background
    ------------------------------------------------------------------->

	<!-- Start: Sidebar -->
	<aside id="sidebar_left" class="nano nano-light affix">

		<!-- Start: Sidebar Left Content -->
		<div class="sidebar-left-content nano-content">

			<!-- Start: Sidebar Header -->
			%{--<header class="sidebar-header">--}%

				%{--<!-- Sidebar Widget - Author -->--}%
				%{--<div class="sidebar-widget author-widget">--}%
					%{--<div class="media">--}%
						%{--<a class="media-left" href="#">--}%
							%{--<img src="assets/img/avatars/3.jpg" class="img-responsive">--}%
						%{--</a>--}%
						%{--<div class="media-body">--}%
							%{--<div class="media-links">--}%
								%{--<a href="#" class="sidebar-menu-toggle">User Menu -</a> <a href="pages_login(alt).html">Logout</a>--}%
							%{--</div>--}%
							%{--<div class="media-author">Michael Richards</div>--}%
						%{--</div>--}%
					%{--</div>--}%
				%{--</div>--}%

				%{--<!-- Sidebar Widget - Menu (slidedown) -->--}%
				%{--<div class="sidebar-widget menu-widget">--}%
					%{--<div class="row text-center mbn">--}%
						%{--<div class="col-xs-4">--}%
							%{--<a href="dashboard.html" class="text-primary" data-toggle="tooltip" data-placement="top" title="Dashboard">--}%
								%{--<span class="glyphicon glyphicon-home"></span>--}%
							%{--</a>--}%
						%{--</div>--}%
						%{--<div class="col-xs-4">--}%
							%{--<a href="pages_messages.html" class="text-info" data-toggle="tooltip" data-placement="top" title="Messages">--}%
								%{--<span class="glyphicon glyphicon-inbox"></span>--}%
							%{--</a>--}%
						%{--</div>--}%
						%{--<div class="col-xs-4">--}%
							%{--<a href="pages_profile.html" class="text-alert" data-toggle="tooltip" data-placement="top" title="Tasks">--}%
								%{--<span class="glyphicon glyphicon-bell"></span>--}%
							%{--</a>--}%
						%{--</div>--}%
						%{--<div class="col-xs-4">--}%
							%{--<a href="pages_timeline.html" class="text-system" data-toggle="tooltip" data-placement="top" title="Activity">--}%
								%{--<span class="fa fa-desktop"></span>--}%
							%{--</a>--}%
						%{--</div>--}%
						%{--<div class="col-xs-4">--}%
							%{--<a href="pages_profile.html" class="text-danger" data-toggle="tooltip" data-placement="top" title="Settings">--}%
								%{--<span class="fa fa-gears"></span>--}%
							%{--</a>--}%
						%{--</div>--}%
						%{--<div class="col-xs-4">--}%
							%{--<a href="pages_gallery.html" class="text-warning" data-toggle="tooltip" data-placement="top" title="Cron Jobs">--}%
								%{--<span class="fa fa-flask"></span>--}%
							%{--</a>--}%
						%{--</div>--}%
					%{--</div>--}%
				%{--</div>--}%

				%{--<!-- Sidebar Widget - Search (hidden) -->--}%
				%{--<div class="sidebar-widget search-widget hidden">--}%
					%{--<div class="input-group">--}%
						%{--<span class="input-group-addon">--}%
							%{--<i class="fa fa-search"></i>--}%
						%{--</span>--}%
						%{--<input type="text" id="sidebar-search" class="form-control" placeholder="Search...">--}%
					%{--</div>--}%
				%{--</div>--}%

			%{--</header>--}%
			<!-- End: Sidebar Header -->

			<!-- Start: Sidebar Menu -->
			<ul class="nav sidebar-menu">
				<li class="sidebar-label pt20">Menu</li>
				<li>
					<a href="${createLink(uri: '/user')}">
						<span class="fa fa-user"></span>
						<span class="sidebar-title">Mero Socios</span>
					</a>
				</li>
				<li>
					<a href="${createLink(uri: '/registerAssistance')}" target="_blank">
						<span class="fa fa-user"></span>
						<span class="sidebar-title">Registrar Asistencia</span>
					</a>
				</li>
				<li>
					<a href="${createLink(uri: '/report')}">
						<span class="fa fa-user"></span>
						<span class="sidebar-title">Informes</span>
					</a>
				</li>
				<li>
					<a href="${createLink(uri: '/accountant')}">
						<span class="fa fa-user"></span>
						<span class="sidebar-title">Contabilidad</span>
						<span class="sidebar-title-tray">
							<span class="label label-xs bg-primary">New</span>
						</span>
					</a>
				</li>
				%{--<li>--}%
					%{--<a href="../README/index.html">--}%
						%{--<span class="glyphicon glyphicon-book"></span>--}%
						%{--<span class="sidebar-title">Documentation</span>--}%
					%{--</a>--}%
				%{--</li>--}%
				%{--<li class="active">--}%
					%{--<a href="dashboard.html">--}%
						%{--<span class="glyphicon glyphicon-home"></span>--}%
						%{--<span class="sidebar-title">Dashboard</span>--}%
					%{--</a>--}%
				%{--</li>--}%
			</ul>
			<!-- End: Sidebar Menu -->

			<!-- Start: Sidebar Collapse Button -->
			<div class="sidebar-toggle-mini">
				<a href="#">
					<span class="fa fa-sign-out"></span>
				</a>
			</div>
			<!-- End: Sidebar Collapse Button -->

		</div>
		<!-- End: Sidebar Left Content -->

	</aside>
	<!-- End: Sidebar Left -->

	<!-- Start: Content-Wrapper -->
	<section id="content_wrapper">

		<!-- Start: Topbar-Dropdown -->
		<div id="topbar-dropmenu" class="alt">
			<div class="topbar-menu row">
				<div class="col-xs-4 col-sm-2">
					<a href="#" class="metro-tile bg-primary light">
						<span class="glyphicon glyphicon-inbox text-muted"></span>
						<span class="metro-title">Messages</span>
					</a>
				</div>
				<div class="col-xs-4 col-sm-2">
					<a href="#" class="metro-tile bg-info light">
						<span class="glyphicon glyphicon-user text-muted"></span>
						<span class="metro-title">Users</span>
					</a>
				</div>
				<div class="col-xs-4 col-sm-2">
					<a href="#" class="metro-tile bg-success light">
						<span class="glyphicon glyphicon-headphones text-muted"></span>
						<span class="metro-title">Support</span>
					</a>
				</div>
				<div class="col-xs-4 col-sm-2">
					<a href="#" class="metro-tile bg-system light">
						<span class="glyphicon glyphicon-facetime-video text-muted"></span>
						<span class="metro-title">Videos</span>
					</a>
				</div>
				<div class="col-xs-4 col-sm-2">
					<a href="#" class="metro-tile bg-warning light">
						<span class="fa fa-gears text-muted"></span>
						<span class="metro-title">Settings</span>
					</a>
				</div>
				<div class="col-xs-4 col-sm-2">
					<a href="#" class="metro-tile bg-alert light">
						<span class="glyphicon glyphicon-picture text-muted"></span>
						<span class="metro-title">Pictures</span>
					</a>
				</div>
			</div>
		</div>
		<!-- End: Topbar-Dropdown -->

		<!-- Begin: Content -->

		<g:layoutBody/>

		<!-- End: Content -->

		<!-- Begin: Page Footer -->
		<footer id="content-footer" class="affix">
			<div class="row">
				<div class="col-md-6">
					<span class="footer-legal">© 2017 rickvil</span>
				</div>
				<div class="col-md-6 text-right">
					<span class="footer-meta">MeroGym</span>
					<a href="#content" class="footer-return-top">
						<span class="fa fa-arrow-up"></span>
					</a>
				</div>
			</div>
		</footer>
		<!-- End: Page Footer -->

	</section>
	<!-- End: Content-Wrapper -->

	<!-- Start: Right Sidebar -->
	<aside id="sidebar_right" class="nano affix">

		<!-- Start: Sidebar Right Content -->
		<div class="sidebar-right-content nano-content">

			<div class="tab-block sidebar-block br-n">
				<ul class="nav nav-tabs tabs-border nav-justified hidden">
					<li class="active">
						<a href="#sidebar-right-tab1" data-toggle="tab">Tab 1</a>
					</li>
					<li>
						<a href="#sidebar-right-tab2" data-toggle="tab">Tab 2</a>
					</li>
					<li>
						<a href="#sidebar-right-tab3" data-toggle="tab">Tab 3</a>
					</li>
				</ul>
				<div class="tab-content br-n">
					<div id="sidebar-right-tab1" class="tab-pane active">

						<h5 class="title-divider text-muted mb20"> Server Statistics
							<span class="pull-right"> 2013
								<i class="fa fa-caret-down ml5"></i>
							</span>
						</h5>
						<div class="progress mh5">
							<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 44%">
								<span class="fs11">DB Request</span>
							</div>
						</div>
						<div class="progress mh5">
							<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 84%">
								<span class="fs11 text-left">Server Load</span>
							</div>
						</div>
						<div class="progress mh5">
							<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 61%">
								<span class="fs11 text-left">Server Connections</span>
							</div>
						</div>

						<h5 class="title-divider text-muted mt30 mb10">Traffic Margins</h5>
						<div class="row">
							<div class="col-xs-5">
								<h3 class="text-primary mn pl5">132</h3>
							</div>
							<div class="col-xs-7 text-right">
								<h3 class="text-success-dark mn">
									<i class="fa fa-caret-up"></i> 13.2% </h3>
							</div>
						</div>

						<h5 class="title-divider text-muted mt25 mb10">Database Request</h5>
						<div class="row">
							<div class="col-xs-5">
								<h3 class="text-primary mn pl5">212</h3>
							</div>
							<div class="col-xs-7 text-right">
								<h3 class="text-success-dark mn">
									<i class="fa fa-caret-up"></i> 25.6% </h3>
							</div>
						</div>

						<h5 class="title-divider text-muted mt25 mb10">Server Response</h5>
						<div class="row">
							<div class="col-xs-5">
								<h3 class="text-primary mn pl5">82.5</h3>
							</div>
							<div class="col-xs-7 text-right">
								<h3 class="text-danger mn">
									<i class="fa fa-caret-down"></i> 17.9% </h3>
							</div>
						</div>

						<h5 class="title-divider text-muted mt40 mb20"> Server Statistics
							<span class="pull-right text-primary fw600">USA</span>
						</h5>


					</div>
					<div id="sidebar-right-tab2" class="tab-pane"></div>
					<div id="sidebar-right-tab3" class="tab-pane"></div>
				</div>
				<!-- end: .tab-content -->
			</div>
		</div>
	</aside>
	<!-- End: Right Sidebar -->

</div>
<!-- End: Main -->

<!-- BEGIN: PAGE SCRIPTS -->

<!-- jQuery -->
<asset:javascript src="vendor/jquery/jquery-1.11.1.min.js"/>
<asset:javascript src="vendor/jquery/jquery_ui/jquery-ui.min.js"/>

<!-- HighCharts Plugin -->
<asset:javascript src="vendor/plugins/highcharts/highcharts.js"/>

<!-- JvectorMap Plugin + US Map (more maps in plugin/assets folder) -->
<asset:javascript src="vendor/plugins/jvectormap/jquery.jvectormap.min.js"/>
<asset:javascript src="vendor/plugins/jvectormap/assets/jquery-jvectormap-us-lcc-en.js"/>

<!-- Bootstrap Tabdrop Plugin -->
<asset:javascript src="vendor/plugins/tabdrop/bootstrap-tabdrop.js"/>

<!-- FullCalendar Plugin + moment Dependency -->
<asset:javascript src="vendor/plugins/fullcalendar/lib/moment.min.js"/>
<asset:javascript src="vendor/plugins/fullcalendar/fullcalendar.min.js"/>

<!-- Theme Javascript -->
<asset:javascript src="assets/js/utility/utility.js"/>
<asset:javascript src="assets/js/demo/demo.js"/>
<asset:javascript src="assets/js/main.js"/>

<!-- Widget Javascript -->
<asset:javascript src="assets/js/demo/widgets.js"/>

<!-- END: PAGE SCRIPTS -->

</body>

</html>