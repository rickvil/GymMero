<!DOCTYPE html>
<html>

<head>
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<title>AbsoluteAdmin - A Responsive Bootstrap 3 Admin Dashboard Template</title>
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
	<link rel="shortcut icon" href="assets/img/favicon.ico">

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
		<div class="panel-heading">
			<span class="panel-icon">
				<i class="fa fa-gear text-primary"></i>
			</span>
			<span class="panel-title"> Theme Options</span>
		</div>
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
	<header class="navbar navbar-fixed-top navbar-shadow">
		<div class="navbar-branding">
			<a class="navbar-brand" href="dashboard.html">
				<b>Absolute</b>Admin
			</a>
			<span id="toggle_sidemenu_l" class="ad ad-lines"></span>
		</div>
		<ul class="nav navbar-nav navbar-left">
			<li class="dropdown menu-merge hidden-xs">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
					<span class="caret caret-tp"></span>
				</a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<li class="divider"></li>
					<li><a href="#">Separated link</a></li>
				</ul>
			</li>
			<li class="hidden-xs">
				<a class="request-fullscreen toggle-active" href="#">
					<span class="ad ad-screen-full fs18"></span>
				</a>
			</li>
		</ul>
		<form class="navbar-form navbar-left navbar-search alt" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search..." value="Search...">
			</div>
		</form>
		<ul class="nav navbar-nav navbar-right">
			<li>
				<div class="navbar-btn btn-group">
					<a href="#" class="topbar-menu-toggle btn btn-sm" data-toggle="button">
						<span class="ad ad-wand"></span>
					</a>
				</div>
			</li>
			<li class="dropdown menu-merge">
				<div class="navbar-btn btn-group">
					<button data-toggle="dropdown" class="btn btn-sm dropdown-toggle">
						<span class="fa fa-bell-o fs14 va-m"></span>
						<span class="badge badge-danger">9</span>
					</button>
					<div class="dropdown-menu dropdown-persist w350 animated animated-shorter fadeIn" role="menu">
						<div class="panel mbn">
							<div class="panel-menu">
								<span class="panel-icon"><i class="fa fa-clock-o"></i></span>
								<span class="panel-title fw600"> Recent Activity</span>
								<button class="btn btn-default light btn-xs pull-right" type="button"><i class="fa fa-refresh"></i></button>
							</div>
							<div class="panel-body panel-scroller scroller-navbar scroller-overlay scroller-pn pn">
								<ol class="timeline-list">
									<li class="timeline-item">
										<div class="timeline-icon bg-dark light">
											<span class="fa fa-tags"></span>
										</div>
										<div class="timeline-desc">
											<b>Michael</b> Added to his store:
											<a href="#">Ipod</a>
										</div>
										<div class="timeline-date">1:25am</div>
									</li>
									<li class="timeline-item">
										<div class="timeline-icon bg-dark light">
											<span class="fa fa-tags"></span>
										</div>
										<div class="timeline-desc">
											<b>Sara</b> Added his store:
											<a href="#">Notebook</a>
										</div>
										<div class="timeline-date">3:05am</div>
									</li>
									<li class="timeline-item">
										<div class="timeline-icon bg-success">
											<span class="fa fa-usd"></span>
										</div>
										<div class="timeline-desc">
											<b>Admin</b> created invoice for:
											<a href="#">Software</a>
										</div>
										<div class="timeline-date">4:15am</div>
									</li>
									<li class="timeline-item">
										<div class="timeline-icon bg-success">
											<span class="fa fa-usd"></span>
										</div>
										<div class="timeline-desc">
											<b>Admin</b> created invoice for:
											<a href="#">Apple</a>
										</div>
										<div class="timeline-date">7:45am</div>
									</li>
									<li class="timeline-item">
										<div class="timeline-icon bg-success">
											<span class="fa fa-usd"></span>
										</div>
										<div class="timeline-desc">
											<b>Admin</b> created invoice for:
											<a href="#">Software</a>
										</div>
										<div class="timeline-date">4:15am</div>
									</li>
									<li class="timeline-item">
										<div class="timeline-icon bg-success">
											<span class="fa fa-usd"></span>
										</div>
										<div class="timeline-desc">
											<b>Admin</b> created invoice for:
											<a href="#">Apple</a>
										</div>
										<div class="timeline-date">7:45am</div>
									</li>
									<li class="timeline-item">
										<div class="timeline-icon bg-dark light">
											<span class="fa fa-tags"></span>
										</div>
										<div class="timeline-desc">
											<b>Michael</b> Added his store:
											<a href="#">Ipod</a>
										</div>
										<div class="timeline-date">8:25am</div>
									</li>
									<li class="timeline-item">
										<div class="timeline-icon bg-system">
											<span class="fa fa-fire"></span>
										</div>
										<div class="timeline-desc">
											<b>Admin</b> created invoice for:
											<a href="#">Software</a>
										</div>
										<div class="timeline-date">4:15am</div>
									</li>
									<li class="timeline-item">
										<div class="timeline-icon bg-dark light">
											<span class="fa fa-tags"></span>
										</div>
										<div class="timeline-desc">
											<b>Sara</b> Added to his store:
											<a href="#">Notebook</a>
										</div>
										<div class="timeline-date">3:05am</div>
									</li>
								</ol>

							</div>
							<div class="panel-footer text-center p7">
								<a href="#" class="link-unstyled"> View All </a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li class="dropdown menu-merge">
				<div class="navbar-btn btn-group">
					<button data-toggle="dropdown" class="btn btn-sm dropdown-toggle">
						<span class="ad ad-radio-tower fs14 va-m"></span>
						<span class="badge">5</span>
					</button>
					<div class="dropdown-menu dropdown-persist w350 animated animated-shorter fadeIn" role="menu">
						<div class="panel mbn">
							<div class="panel-menu">
								<div class="btn-group btn-group-justified btn-group-nav" role="tablist">
									<a href="#nav-tab1" data-toggle="tab" class="btn btn-default btn-sm active">Notifications</a>
									<a href="#nav-tab2" data-toggle="tab" class="btn btn-default btn-sm br-l-n br-r-n">Messages</a>
									<a href="#nav-tab3" data-toggle="tab" class="btn btn-default btn-sm">Activity</a>
								</div>
							</div>
							<div class="panel-body panel-scroller scroller-navbar pn">
								<div class="tab-content br-n pn">
									<div id="nav-tab1" class="tab-pane alerts-widget active" role="tabpanel">
										<div class="media">
											<a class="media-left" href="#"> <span class="glyphicon glyphicon-user text-info"></span> </a>
											<div class="media-body">
												<h5 class="media-heading">New Registration
													<small class="text-muted"></small>
												</h5> Tyler Durden - 16 hours ago

											</div>
											<div class="media-right">
												<div class="media-response"> Approve?</div>
												<div class="btn-group">
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-check text-success"></i>
													</button>
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-remove"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="media">
											<a class="media-left" href="#"> <span class="glyphicon glyphicon-shopping-cart text-success"></span> </a>
											<div class="media-body">
												<h5 class="media-heading">New Order
													<small class="text-muted"></small>
												</h5> <a href="#">Apple Ipod</a> - 4 hours ago
											</div>
											<div class="media-right">
												<div class="media-response"> Confirm?</div>
												<div class="btn-group">
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-check text-success"></i>
													</button>
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-print"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="media">
											<a class="media-left" href="#"> <span class="glyphicon glyphicon-comment text-system"></span> </a>
											<div class="media-body">
												<h5 class="media-heading">New Comment
													<small class="text-muted"></small>
												</h5> Mike - I loved your article!
											</div>
											<div class="media-right">
												<div class="media-response text-right"> Moderate?</div>
												<div class="btn-group">
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-pencil"></i>
													</button>
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-check text-success"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="media">
											<a class="media-left" href="#"> <span class="glyphicon glyphicon-star text-warning"></span> </a>
											<div class="media-body">
												<h5 class="media-heading">New Review
													<small class="text-muted"></small>
												</h5> Sammy Hilton - 4 hours ago
											</div>
											<div class="media-right">
												<div class="media-response"> Approve?</div>
												<div class="btn-group">
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-check text-success"></i>
													</button>
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-remove"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="media">
											<a class="media-left" href="#"> <span class="glyphicon glyphicon-user text-info"></span> </a>
											<div class="media-body">
												<h5 class="media-heading">New Registration
													<small class="text-muted"></small>
												</h5> Michael Sober - 7 hours ago
											</div>
											<div class="media-right">
												<div class="media-response"> Approve?</div>
												<div class="btn-group">
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-check text-success"></i>
													</button>
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-remove"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="media">
											<a class="media-left" href="#"> <span class="glyphicon glyphicon-usd text-alert"></span> </a>
											<div class="media-body">
												<h5 class="media-heading">New Invoice
													<small class="text-muted"></small>
												</h5> <a href="#">Apple Ipod</a> - 4 hours ago

											</div>
											<div class="media-right">
												<div class="media-response single">#518358</div>
											</div>
										</div>
										<div class="media">
											<a class="media-left" href="#"> <span class="glyphicon glyphicon-shopping-cart text-success"></span> </a>
											<div class="media-body">
												<h5 class="media-heading">New Order
													<small class="text-muted"></small>
												</h5> <a href="#">Apple Ipod</a> - 4 hours ago
											</div>
											<div class="media-right">
												<div class="media-response"> Confirm?</div>
												<div class="btn-group">
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-check text-success"></i>
													</button>
													<button type="button" class="btn btn-default btn-xs light">
														<i class="fa fa-print"></i>
													</button>
												</div>
											</div>
										</div>
									</div>
									<div id="nav-tab2" class="tab-pane chat-widget" role="tabpanel">
										<div class="media">
											<div class="media-left">
												<a href="#">
													<img class="media-object" alt="64x64" src="assets/img/avatars/3.jpg">
												</a>
											</div>
											<div class="media-body">
												<span class="media-status online"></span>
												<h5 class="media-heading">Courtney Faught
													<small> - 12:30am</small>
												</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.
											</div>
										</div>
										<div class="media">
											<div class="media-body">
												<span class="media-status offline"></span>
												<h5 class="media-heading">Joe Gibbons
													<small> - 12:30am</small>
												</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque.
											</div>
											<div class="media-right">
												<a href="#">
													<img class="media-object" alt="64x64" src="assets/img/avatars/1.jpg">
												</a>
											</div>
										</div>
										<div class="media">
											<div class="media-left">
												<a href="#">
													<img class="media-object" alt="64x64" src="assets/img/avatars/2.jpg">
												</a>
											</div>
											<div class="media-body">
												<span class="media-status online"></span>
												<h5 class="media-heading">Courtney Faught
													<small> - 12:30am</small>
												</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metuscommodo.
											</div>
										</div>
										<div class="media">
											<div class="media-body">
												<span class="media-status offline"></span>
												<h5 class="media-heading">Joe Gibbons
													<small> - 12:30am</small>
												</h5> Cras sit amet nibh libero, in Nulla vel metus scelerisque antecommodo.
											</div>
											<div class="media-right">
												<a href="#">
													<img class="media-object" alt="64x64" src="assets/img/avatars/1.jpg">
												</a>
											</div>
										</div>
										<div class="media">
											<div class="media-left">
												<a href="#">
													<img class="media-object" alt="64x64" src="assets/img/avatars/2.jpg">
												</a>
											</div>
											<div class="media-body">
												<span class="media-status online"></span>
												<h5 class="media-heading">Courtney Faught
													<small> - 12:30am</small>
												</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque soltudino.
											</div>
										</div>
										<div class="media">
											<div class="media-body">
												<span class="media-status offline"></span>
												<h5 class="media-heading">Joe Gibbons
													<small> - 12:30am</small>
												</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo.
											</div>
											<div class="media-right">
												<a href="#">
													<img class="media-object" alt="64x64" src="assets/img/avatars/1.jpg">
												</a>
											</div>
										</div>
									</div>
									<div id="nav-tab3" class="tab-pane scroller-nm" role="tabpanel">
										<ul class="media-list" role="menu">
											<li class="media">
												<a class="media-left" href="#"> <img src="assets/img/avatars/5.jpg" class="mw40" alt="avatar"> </a>
												<div class="media-body">
													<h5 class="media-heading">Article
														<small class="text-muted">- 08/16/22</small>
													</h5> Last Updated 36 days ago by
													<a class="text-system" href="#"> Max </a>
												</div>
											</li>
											<li class="media">
												<a class="media-left" href="#"> <img src="assets/img/avatars/2.jpg" class="mw40" alt="avatar"> </a>
												<div class="media-body">
													<h5 class="media-heading mv5">Article
														<small> - 08/16/22</small>
													</h5>
													Last Updated 36 days ago by
													<a class="text-system" href="#"> Max </a>
												</div>
											</li>
											<li class="media">
												<a class="media-left" href="#"> <img src="assets/img/avatars/3.jpg" class="mw40" alt="avatar"> </a>
												<div class="media-body">
													<h5 class="media-heading">Article
														<small class="text-muted">- 08/16/22</small>
													</h5> Last Updated 36 days ago by
													<a class="text-system" href="#"> Max </a>
												</div>
											</li>
											<li class="media">
												<a class="media-left" href="#"> <img src="assets/img/avatars/4.jpg" class="mw40" alt="avatar"> </a>
												<div class="media-body">
													<h5 class="media-heading mv5">Article
														<small class="text-muted">- 08/16/22</small>
													</h5> Last Updated 36 days ago by
													<a class="text-system" href="#"> Max </a>
												</div>
											</li>
											<li class="media">
												<a class="media-left" href="#"> <img src="assets/img/avatars/5.jpg" class="mw40" alt="avatar"> </a>
												<div class="media-body">
													<h5 class="media-heading">Article
														<small class="text-muted">- 08/16/22</small>
													</h5> Last Updated 36 days ago by
													<a class="text-system" href="#"> Max </a>
												</div>
											</li>
											<li class="media">
												<a class="media-left" href="#"> <img src="assets/img/avatars/2.jpg" class="mw40" alt="avatar"> </a>
												<div class="media-body">
													<h5 class="media-heading mv5">Article
														<small> - 08/16/22</small>
													</h5>
													Last Updated 36 days ago by
													<a class="text-system" href="#"> Max </a>
												</div>
											</li>
											<li class="media">
												<a class="media-left" href="#"> <img src="assets/img/avatars/3.jpg" class="mw40" alt="avatar"> </a>
												<div class="media-body">
													<h5 class="media-heading">Article
														<small class="text-muted">- 08/16/22</small>
													</h5> Last Updated 36 days ago by
													<a class="text-system" href="#"> Max </a>
												</div>
											</li>
										</ul>
										<table class="table table-striped hidden">
											<thead>
											<tr>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Username</th>
											</tr>
											</thead>
											<tbody>
											<tr>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
											</tr>
											<tr>
												<td>Jacob</td>
												<td>Thornton</td>
												<td>@fat</td>
											</tr>
											<tr>
												<td>Larry</td>
												<td>the Bird</td>
												<td>@twitter</td>
											</tr>
											<tr>
												<td>Sussy</td>
												<td>Watcher</td>
												<td>@thehawk</td>
											</tr>
											<tr>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
											</tr>
											<tr>
												<td>Sussy</td>
												<td>Watcher</td>
												<td>@thehawk</td>
											</tr>
											<tr>
												<td>Jacob</td>
												<td>Thornton</td>
												<td>@fat</td>
											</tr>
											<tr>
												<td>Larry</td>
												<td>the Bird</td>
												<td>@twitter</td>
											</tr>
											<tr>
												<td>Sussy</td>
												<td>Watcher</td>
												<td>@thehawk</td>
											</tr>
											<tr>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
											</tr>
											<tr>
												<td>Jacob</td>
												<td>Thornton</td>
												<td>@fat</td>
											</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="panel-footer text-center p7">
								<a href="#" class="link-unstyled"> View All </a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li class="dropdown menu-merge">
				<div class="navbar-btn btn-group">
					<button data-toggle="dropdown" class="btn btn-sm dropdown-toggle">
						<span class="flag-xs flag-us"></span>
						<!-- <span class="caret"></span> -->
					</button>
					<ul class="dropdown-menu pv5 animated animated-short flipInX" role="menu">
						<li>
							<a href="javascript:void(0);">
								<span class="flag-xs flag-in mr10"></span> Hindu </a>
						</li>
						<li>
							<a href="javascript:void(0);">
								<span class="flag-xs flag-tr mr10"></span> Turkish </a>
						</li>
						<li>
							<a href="javascript:void(0);">
								<span class="flag-xs flag-es mr10"></span> Spanish </a>
						</li>
					</ul>
				</div>
			</li>
			<li class="menu-divider hidden-xs">
				<i class="fa fa-circle"></i>
			</li>
			<li class="dropdown menu-merge">
				<a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
					<img src="assets/img/avatars/1.jpg" alt="avatar" class="mw30 br64">
					<span class="hidden-xs pl15"> Michael .R </span>
					<span class="caret caret-tp hidden-xs"></span>
				</a>
				<ul class="dropdown-menu list-group dropdown-persist w250" role="menu">
					<li class="dropdown-header clearfix">
						<div class="pull-left ml10">
							<select id="user-status">
								<optgroup label="Current Status:">
									<option value="1-1">Away</option>
									<option value="1-2">Offline</option>
									<option value="1-3" selected="selected">Online</option>
								</optgroup>
							</select>
						</div>

						<div class="pull-right mr10">
							<select id="user-role">
								<optgroup label="Logged in As:">
									<option value="1-1">Client</option>
									<option value="1-2">Editor</option>
									<option value="1-3" selected="selected">Admin</option>
								</optgroup>
							</select>
						</div>
					</li>
					<li class="list-group-item">
						<a href="#" class="animated animated-short fadeInUp">
							<span class="fa fa-envelope"></span> Messages
							<span class="label label-warning">2</span>
						</a>
					</li>
					<li class="list-group-item">
						<a href="#" class="animated animated-short fadeInUp">
							<span class="fa fa-user"></span> Friends
							<span class="label label-warning">6</span>
						</a>
					</li>
					<li class="list-group-item">
						<a href="#" class="animated animated-short fadeInUp">
							<span class="fa fa-bell"></span> Notifications </a>
					</li>
					<li class="list-group-item">
						<a href="#" class="animated animated-short fadeInUp">
							<span class="fa fa-gear"></span> Settings </a>
					</li>
					<li class="dropdown-footer">
						<a href="#" class="">
							<span class="fa fa-power-off pr5"></span> Logout </a>
					</li>
				</ul>
			</li>
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
			<header class="sidebar-header">

				<!-- Sidebar Widget - Author -->
				<div class="sidebar-widget author-widget">
					<div class="media">
						<a class="media-left" href="#">
							<img src="assets/img/avatars/3.jpg" class="img-responsive">
						</a>
						<div class="media-body">
							<div class="media-links">
								<a href="#" class="sidebar-menu-toggle">User Menu -</a> <a href="pages_login(alt).html">Logout</a>
							</div>
							<div class="media-author">Michael Richards</div>
						</div>
					</div>
				</div>

				<!-- Sidebar Widget - Menu (slidedown) -->
				<div class="sidebar-widget menu-widget">
					<div class="row text-center mbn">
						<div class="col-xs-4">
							<a href="dashboard.html" class="text-primary" data-toggle="tooltip" data-placement="top" title="Dashboard">
								<span class="glyphicon glyphicon-home"></span>
							</a>
						</div>
						<div class="col-xs-4">
							<a href="pages_messages.html" class="text-info" data-toggle="tooltip" data-placement="top" title="Messages">
								<span class="glyphicon glyphicon-inbox"></span>
							</a>
						</div>
						<div class="col-xs-4">
							<a href="pages_profile.html" class="text-alert" data-toggle="tooltip" data-placement="top" title="Tasks">
								<span class="glyphicon glyphicon-bell"></span>
							</a>
						</div>
						<div class="col-xs-4">
							<a href="pages_timeline.html" class="text-system" data-toggle="tooltip" data-placement="top" title="Activity">
								<span class="fa fa-desktop"></span>
							</a>
						</div>
						<div class="col-xs-4">
							<a href="pages_profile.html" class="text-danger" data-toggle="tooltip" data-placement="top" title="Settings">
								<span class="fa fa-gears"></span>
							</a>
						</div>
						<div class="col-xs-4">
							<a href="pages_gallery.html" class="text-warning" data-toggle="tooltip" data-placement="top" title="Cron Jobs">
								<span class="fa fa-flask"></span>
							</a>
						</div>
					</div>
				</div>

				<!-- Sidebar Widget - Search (hidden) -->
				<div class="sidebar-widget search-widget hidden">
					<div class="input-group">
						<span class="input-group-addon">
							<i class="fa fa-search"></i>
						</span>
						<input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
					</div>
				</div>

			</header>
			<!-- End: Sidebar Header -->

			<!-- Start: Sidebar Menu -->
			<ul class="nav sidebar-menu">
				<li class="sidebar-label pt20">Menu</li>
				<li>
					<a href="pages_calendar.html">
						<span class="fa fa-calendar"></span>
						<span class="sidebar-title">Calendar</span>
						<span class="sidebar-title-tray">
							<span class="label label-xs bg-primary">New</span>
						</span>
					</a>
				</li>
				<li>
					<a href="../README/index.html">
						<span class="glyphicon glyphicon-book"></span>
						<span class="sidebar-title">Documentation</span>
					</a>
				</li>
				<li class="active">
					<a href="dashboard.html">
						<span class="glyphicon glyphicon-home"></span>
						<span class="sidebar-title">Dashboard</span>
					</a>
				</li>
				<li class="sidebar-label pt15">Exclusive Tools</li>
				<li>
					<a class="accordion-toggle" href="#">
						<span class="fa fa-columns"></span>
						<span class="sidebar-title">Layout Templates</span>
						<span class="caret"></span>
					</a>
					<ul class="nav sub-nav">
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa fa-arrows-h"></span>
								Sidebars
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="layout_sidebar-left-static.html">
										Left Static </a>
								</li>
								<li>
									<a href="layout_sidebar-left-fixed.html">
										Left Fixed </a>
								</li>
								<li>
									<a href="layout_sidebar-left-widgets.html">
										Left Widgets </a>
								</li>
								<li>
									<a href="layout_sidebar-left-minified.html">
										Left Minified </a>
								</li>
								<li>
									<a href="layout_sidebar-left-light.html">
										Left White </a>
								</li>
								<li>
									<a href="layout_sidebar-right-static.html">
										Right Static </a>
								</li>
								<li>
									<a href="layout_sidebar-right-fixed.html">
										Right Fixed </a>
								</li>
								<li>
									<a href="layout_sidebar-right-menu.html">
										Right w/Menu </a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-arrows-v"></span>
								Navbar
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="layout_navbar-static.html">
										Navbar Static </a>
								</li>
								<li>
									<a href="layout_navbar-fixed.html">
										Navbar Fixed </a>
								</li>
								<li>
									<a href="layout_navbar-menus.html">
										Navbar Menus </a>
								</li>
								<li>
									<a href="layout_navbar-contextual.html">
										Contextual Example </a>
								</li>
								<li>
									<a href="layout_navbar-search-alt.html">
										Search Alt Style </a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-hand-o-up"></span>
								Topbar
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="layout_topbar.html">
										Default Style </a>
								</li>
								<li>
									<a href="layout_topbar-menu.html">
										Default w/Menu </a>
								</li>
								<li>
									<a href="layout_topbar-alt.html">
										Alternate Style </a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-arrows-v"></span>
								Content Body
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="layout_content-blank.html">
										Blank Starter </a>
								</li>
								<li>
									<a href="layout_content-fixed.html">
										Fixed Window </a>
								</li>
								<li>
									<a href="layout_content-heading.html">
										Content Heading </a>
								</li>
								<li>
									<a href="layout_content-tabs.html">
										Content Tabs </a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-pause"></span>
								Content Trays
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="layout_tray-left.html">
										Tray Left Static </a>
								</li>
								<li>
									<a href="layout_tray-left-fixed.html">
										Tray Left Fixed </a>
								</li>
								<li>
									<a href="layout_tray-right.html">
										Tray Right Static </a>
								</li>
								<li>
									<a href="layout_tray-right-fixed.html">
										Tray Right Fixed </a>
								</li>
								<li>
									<a href="layout_tray-both.html">
										Left + Right Static </a>
								</li>
								<li>
									<a href="layout_tray-both-fixed.html">
										Left + Right Fixed </a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-plus-square-o"></span>
								Boxed Layout
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="layout_boxed.html">
										Default </a>
								</li>
								<li>
									<a href="layout_boxed-horizontal.html">
										Horizontal Menu </a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-arrow-circle-o-up"></span>
								Horizontal Menu
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="layout_horizontal-sm.html">
										Small Size</a>
								</li>
								<li>
									<a href="layout_horizontal-md.html">
										Medium Size</a>
								</li>
								<li>
									<a href="layout_horizontal-lg.html">
										Large Size</a>
								</li>
								<li>
									<a href="layout_horizontal-light.html">
										Light Skin</a>
								</li>
								<li>
									<a href="layout_horizontal-topbar.html">
										With Topbar</a>
								</li>
								<li>
									<a href="layout_horizontal-topbar-alt.html">
										With Alt Topbar</a>
								</li>
								<li>
									<a href="layout_horizontal-collapsed.html">
										Collapsed onLoad</a>
								</li>
								<li>
									<a href="layout_horizontal-boxed.html">
										In Boxed Layout</a>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				<li>
					<a class="accordion-toggle" href="#">
						<span class="glyphicon glyphicon-fire"></span>
						<span class="sidebar-title">Admin Plugins</span>
						<span class="caret"></span>
					</a>
					<ul class="nav sub-nav">
						<li>
							<a href="admin_plugins-panels.html">
								<span class="glyphicon glyphicon-book"></span> Admin Panels </a>
						</li>
						<li>
							<a href="admin_plugins-modals.html">
								<span class="glyphicon glyphicon-modal-window"></span> Admin Modals </a>
						</li>
						<li>
							<a href="admin_plugins-dock.html">
								<span class="glyphicon glyphicon-equalizer"></span> Admin Dock </a>
						</li>
					</ul>
				</li>
				<li>
					<a class="accordion-toggle" href="#">
						<span class="glyphicon glyphicon-check"></span>
						<span class="sidebar-title">Admin Forms</span>
						<span class="caret"></span>
					</a>
					<ul class="nav sub-nav">
						<li>
							<a href="admin_forms-elements.html">
								<span class="glyphicon glyphicon-shopping-cart"></span> Admin Elements </a>
						</li>
						<li>
							<a href="admin_forms-widgets.html">
								<span class="glyphicon glyphicon-calendar"></span> Admin Widgets </a>
						</li>
						<li>
							<a href="admin_forms-layouts.html">
								<span class="fa fa-desktop"></span> Admin Layouts </a>
						</li>
						<li>
							<a href="admin_forms-wizard.html">
								<span class="fa fa-clipboard"></span> Admin Wizard </a>
						</li>
						<li>
							<a href="admin_forms-validation.html">
								<span class="glyphicon glyphicon-check"></span> Admin Validation </a>
						</li>
					</ul>
				</li>

				<li class="sidebar-label pt20">Systems</li>
				<li>
					<a class="accordion-toggle" href="#">
						<span class="fa fa-diamond"></span>
						<span class="sidebar-title">Widget Packages</span>
						<span class="caret"></span>
					</a>
					<ul class="nav sub-nav">
						<li>
							<a href="widgets_tile.html">
								<span class="fa fa-cube"></span> Tile Widgets</a>
						</li>
						<li>
							<a href="widgets_panel.html">
								<span class="fa fa-desktop"></span> Panel Widgets </a>
						</li>
						<li>
							<a href="widgets_scroller.html">
								<span class="fa fa-columns"></span> Scroller Widgets </a>
						</li>
						<li>
							<a href="widgets_data.html">
								<span class="fa fa-dot-circle-o"></span> Admin Widgets </a>
						</li>
					</ul>
				</li>
				<li>
					<a class="accordion-toggle" href="#">
						<span class="glyphicon glyphicon-shopping-cart"></span>
						<span class="sidebar-title">Ecommerce</span>
						<span class="caret"></span>
					</a>
					<ul class="nav sub-nav">
						<li class="active">
							<a href="ecommerce_dashboard.html">
								<span class="glyphicon glyphicon-shopping-cart"></span> Dashboard
								<span class="label label-xs bg-primary">New</span>
							</a>
						</li>
						<li>
							<a href="ecommerce_products.html">
								<span class="glyphicon glyphicon-tags"></span> Products </a>
						</li>
						<li>
							<a href="ecommerce_orders.html">
								<span class="fa fa-money"></span> Orders </a>
						</li>
						<li>
							<a href="ecommerce_customers.html">
								<span class="fa fa-users"></span> Customers </a>
						</li>
						<li>
							<a href="ecommerce_settings.html">
								<span class="fa fa-gears"></span> Store Settings </a>
						</li>
					</ul>
				</li>
				<li>
					<a href="email_templates.html">
						<span class="fa fa-envelope-o"></span>
						<span class="sidebar-title">Email Templates</span>
					</a>
				</li>

				<!-- sidebar resources -->
				<li class="sidebar-label pt20">Elements</li>
				<li>
					<a class="accordion-toggle" href="#">
						<span class="glyphicon glyphicon-bell"></span>
						<span class="sidebar-title">UI Elements</span>
						<span class="caret"></span>
					</a>
					<ul class="nav sub-nav">
						<li>
							<a href="ui_alerts.html">
								<span class="fa fa-warning"></span> Alerts </a>
						</li>
						<li>
							<a href="ui_animations.html">
								<span class="fa fa-spinner"></span> Animations </a>
						</li>
						<li>
							<a href="ui_buttons.html">
								<span class="fa fa-plus-square-o"></span> Buttons </a>
						</li>
						<li>
							<a href="ui_typography.html">
								<span class="fa fa-text-width"></span> Typography </a>
						</li>
						<li>
							<a href="ui_portlets.html">
								<span class="fa fa-archive"></span> Portlets </a>
						</li>
						<li>
							<a href="ui_progress-bars.html">
								<span class="fa fa-bars"></span> Progress Bars </a>
						</li>
						<li>
							<a href="ui_tabs.html">
								<span class="fa fa-toggle-off"></span> Tabs </a>
						</li>
						<li>
							<a href="ui_icons.html">
								<span class="fa fa-hand-o-right"></span> Icons </a>
						</li>
						<li>
							<a href="ui_grid.html">
								<span class="fa fa-th-large"></span> Grid </a>
						</li>
					</ul>
				</li>
				<li>
					<a class="accordion-toggle" href="#">
						<span class="glyphicon glyphicon-hdd"></span>
						<span class="sidebar-title">Form Elements</span>
						<span class="caret"></span>
					</a>
					<ul class="nav sub-nav">
						<li>
							<a href="form_inputs.html">
								<span class="fa fa-magic"></span> Basic Inputs </a>
						</li>
						<li>
							<a href="form_plugins.html">
								<span class="fa fa-bell-o"></span> Plugin Inputs
								<span class="label label-xs bg-primary">New</span>
							</a>
						</li>
						<li>
							<a href="form_editors.html">
								<span class="fa fa-clipboard"></span> Editors </a>
						</li>
						<li>
							<a href="form_treeview.html">
								<span class="fa fa-tree"></span> Treeview </a>
						</li>
						<li>
							<a href="form_nestable.html">
								<span class="fa fa-tasks"></span> Nestable </a>
						</li>
						<li>
							<a href="form_image-tools.html">
								<span class="fa fa-cloud-upload"></span> Image Tools
								<span class="label label-xs bg-primary">New</span>
							</a>
						</li>
						<li>
							<a href="form_uploaders.html">
								<span class="fa fa-cloud-upload"></span> Uploaders </a>
						</li>
						<li>
							<a href="form_notifications.html">
								<span class="fa fa-bell-o"></span> Notifications </a>
						</li>
						<li>
							<a href="form_content-sliders.html">
								<span class="fa fa-exchange"></span> Content Sliders </a>
						</li>
					</ul>
				</li>
				<li>
					<a class="accordion-toggle" href="#">
						<span class="glyphicon glyphicon-tower"></span>
						<span class="sidebar-title">Plugins</span>
						<span class="caret"></span>
					</a>
					<ul class="nav sub-nav">
						<li>
							<a class="accordion-toggle" href="#">
								<span class="glyphicon glyphicon-globe"></span> Maps
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="maps_advanced.html">Admin Maps</a>
								</li>
								<li>
									<a href="maps_basic.html">Basic Maps</a>
								</li>
								<li>
									<a href="maps_vector.html">Vector Maps</a>
								</li>
								<li>
									<a href="maps_full.html">Full Map</a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-area-chart"></span> Charts
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="charts_highcharts.html">Highcharts</a>
								</li>
								<li>
									<a href="charts_d3.html">D3 Charts</a>
								</li>
								<li>
									<a href="charts_flot.html">Flot Charts</a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-table"></span> Tables
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="tables_basic.html"> Basic Tables</a>
								</li>
								<li>
									<a href="tables_datatables.html"> DataTables </a>
								</li>
								<li>
									<a href="tables_datatables-editor.html"> Editable Tables </a>
								</li>
								<li>
									<a href="tables_footable.html"> FooTables </a>
								</li>
								<li>
									<a href="tables_pricing.html"> Pricing Tables </a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-flask"></span> Misc
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="misc_tour.html"> Site Tour</a>
								</li>
								<li>
									<a href="misc_timeout.html"> Session Timeout</a>
								</li>
								<li>
									<a href="misc_nprogress.html"> Page Progress Loader </a>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				<li>
					<a class="accordion-toggle" href="#">
						<span class="glyphicon glyphicon-duplicate"></span>
						<span class="sidebar-title">Pages</span>
						<span class="caret"></span>
					</a>
					<ul class="nav sub-nav">
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-gears"></span> Utility
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="landing-page/landing1/index.html" target="_blank"> Landing Page </a>
								</li>
								<li>
									<a href="pages_confirmation.html" target="_blank"> Confirmation
										<span class="label label-xs bg-primary">New</span>
									</a>
								</li>
								<li>
									<a href="pages_login.html" target="_blank"> Login </a>
								</li>
								<li>
									<a href="pages_login(alt).html" target="_blank"> Login Alt
										<span class="label label-xs bg-primary">New</span>
									</a>
								</li>
								<li>
									<a href="pages_register.html" target="_blank"> Register </a>
								</li>
								<li>
									<a href="pages_register(alt).html" target="_blank"> Register Alt
										<span class="label label-xs bg-primary">New</span>
									</a>
								</li>
								<li>
									<a href="pages_screenlock.html" target="_blank"> Screenlock </a>
								</li>
								<li>
									<a href="pages_screenlock(alt).html" target="_blank"> Screenlock Alt
										<span class="label label-xs bg-primary">New</span>
									</a>
								</li>
								<li>
									<a href="pages_forgotpw.html" target="_blank"> Forgot Password </a>
								</li>
								<li>
									<a href="pages_forgotpw(alt).html" target="_blank"> Forgot Pass Alt
										<span class="label label-xs bg-primary">New</span>
									</a>
								</li>
								<li>
									<a href="pages_coming-soon.html" target="_blank"> Coming Soon
									</a>
								</li>
								<li>
									<a href="pages_404.html"> 404 Error </a>
								</li>
								<li>
									<a href="pages_500.html"> 500 Error </a>
								</li>
								<li>
									<a href="pages_404(alt).html"> 404 Error Alt </a>
								</li>
								<li>
									<a href="pages_500(alt).html"> 500 Error Alt </a>
								</li>
							</ul>
						</li>
						<li>
							<a class="accordion-toggle" href="#">
								<span class="fa fa-desktop"></span> Basic
								<span class="caret"></span>
							</a>
							<ul class="nav sub-nav">
								<li>
									<a href="pages_search-results.html">Search Results
										<span class="label label-xs bg-primary">New</span>
									</a>
								</li>
								<li>
									<a href="pages_profile.html"> Profile </a>
								</li>
								<li>
									<a href="pages_timeline.html"> Timeline Split </a>
								</li>
								<li>
									<a href="pages_timeline-single.html"> Timeline Single </a>
								</li>
								<li>
									<a href="pages_faq.html"> FAQ Page </a>
								</li>
								<li>
									<a href="pages_calendar.html"> Calendar </a>
								</li>
								<li>
									<a href="pages_messages.html"> Messages </a>
								</li>
								<li>
									<a href="pages_messages(alt).html"> Messages Alt </a>
								</li>
								<li>
									<a href="pages_gallery.html"> Gallery </a>
								</li>
								<li>
									<a href="pages_invoice.html"> Printable Invoice </a>
								</li>
							</ul>
						</li>
					</ul>
				</li>

				<!-- sidebar bullets -->
				<li class="sidebar-label pt20">Projects</li>
				<li class="sidebar-proj">
					<a href="#projectOne">
						<span class="fa fa-dot-circle-o text-primary"></span>
						<span class="sidebar-title">Website Redesign</span>
					</a>
				</li>
				<li class="sidebar-proj">
					<a href="#projectTwo">
						<span class="fa fa-dot-circle-o text-info"></span>
						<span class="sidebar-title">Ecommerce Panel</span>
					</a>
				</li>
				<li class="sidebar-proj">
					<a href="#projectTwo">
						<span class="fa fa-dot-circle-o text-danger"></span>
						<span class="sidebar-title">Adobe Mockup</span>
					</a>
				</li>
				<li class="sidebar-proj">
					<a href="#projectThree">
						<span class="fa fa-dot-circle-o text-warning"></span>
						<span class="sidebar-title">SSD Upgrades</span>
					</a>
				</li>

				<!-- sidebar progress bars -->
				<li class="sidebar-label pt25 pb10">User Stats</li>
				<li class="sidebar-stat">
					<a href="#projectOne" class="fs11">
						<span class="fa fa-inbox text-info"></span>
						<span class="sidebar-title text-muted">Email Storage</span>
						<span class="pull-right mr20 text-muted">35%</span>
						<div class="progress progress-bar-xs mh20 mb10">
							<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 35%">
								<span class="sr-only">35% Complete</span>
							</div>
						</div>
					</a>
				</li>
				<li class="sidebar-stat">
					<a href="#projectOne" class="fs11">
						<span class="fa fa-dropbox text-warning"></span>
						<span class="sidebar-title text-muted">Bandwidth</span>
						<span class="pull-right mr20 text-muted">58%</span>
						<div class="progress progress-bar-xs mh20">
							<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 58%">
								<span class="sr-only">58% Complete</span>
							</div>
						</div>
					</a>
				</li>
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

		<!-- Start: Topbar -->
		<header id="topbar" class="alt">
			<div class="topbar-left">
				<ol class="breadcrumb">
					<li class="crumb-active">
						<a href="dashboard.html">Dashboard</a>
					</li>
					<li class="crumb-icon">
						<a href="dashboard.html">
							<span class="glyphicon glyphicon-home"></span>
						</a>
					</li>
					<li class="crumb-link">
						<a href="index.html">Home</a>
					</li>
					<li class="crumb-trail">Dashboard</li>
				</ol>
			</div>
			<div class="topbar-right">
				<div class="ib topbar-dropdown">
					<label for="topbar-multiple" class="control-label pr10 fs11 text-muted">Reporting Period</label>
					<select id="topbar-multiple" class="hidden">
						<optgroup label="Filter By:">
							<option value="1-1">Last 30 Days</option>
							<option value="1-2" selected="selected">Last 60 Days</option>
							<option value="1-3">Last Year</option>
						</optgroup>
					</select>
				</div>
				<div class="ml15 ib va-m" id="toggle_sidemenu_r">
					<a href="#" class="pl5">
						<i class="fa fa-sign-in fs22 text-primary"></i>
						<span class="badge badge-danger badge-hero">3</span>
					</a>
				</div>
			</div>
		</header>
		<!-- End: Topbar -->

		<!-- Begin: Content -->

		<g:layoutBody/>

		<!-- End: Content -->

		<!-- Begin: Page Footer -->
		<footer id="content-footer" class="affix">
			<div class="row">
				<div class="col-md-6">
					<span class="footer-legal">© 2015 AdminDesigns</span>
				</div>
				<div class="col-md-6 text-right">
					<span class="footer-meta">60GB of <b>350GB</b> Free</span>
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
<script type="text/javascript">
	jQuery(document).ready(function() {

		"use strict";

		// Init Demo JS
		Demo.init();


		// Init Theme Core
		Core.init();


		// Init Widget Demo JS
		// demoHighCharts.init();

		// Because we are using Admin Panels we use the OnFinish
		// callback to activate the demoWidgets. It's smoother if
		// we let the panels be moved and organized before
		// filling them with content from various plugins

		// Init plugins used on this page
		// HighCharts, JvectorMap, Admin Panels

		// Init Admin Panels on widgets inside the ".admin-panels" container
		$('.admin-panels').adminpanel({
			grid: '.admin-grid',
			draggable: true,
			preserveGrid: true,
			// mobile: true,
			onStart: function() {
				// Do something before AdminPanels runs
			},
			onFinish: function() {
				$('.admin-panels').addClass('animated fadeIn').removeClass('fade-onload');

				// Init the rest of the plugins now that the panels
				// have had a chance to be moved and organized.
				// It's less taxing to organize empty panels
				demoHighCharts.init();
				runVectorMaps(); // function below
			},
			onSave: function() {
				$(window).trigger('resize');
			}
		});


		// Init plugins for ".calendar-widget"
		// plugins: FullCalendar
		//
		$('#calendar-widget').fullCalendar({
			// contentHeight: 397,
			editable: true,
			events: [{
				title: 'Sony Meeting',
				start: '2015-05-1',
				end: '2015-05-3',
				className: 'fc-event-success',
			}, {
				title: 'Conference',
				start: '2015-05-11',
				end: '2015-05-13',
				className: 'fc-event-warning'
			}, {
				title: 'Lunch Testing',
				start: '2015-05-21',
				end: '2015-05-23',
				className: 'fc-event-primary'
			},
			],
			eventRender: function(event, element) {
				// create event tooltip using bootstrap tooltips
				$(element).attr("data-original-title", event.title);
				$(element).tooltip({
					container: 'body',
					delay: {
						"show": 100,
						"hide": 200
					}
				});
				// create a tooltip auto close timer
				$(element).on('show.bs.tooltip', function() {
					var autoClose = setTimeout(function() {
						$('.tooltip').fadeOut();
					}, 3500);
				});
			}
		});


		// Init plugins for ".task-widget"
		// plugins: Custom Functions + jQuery Sortable
		//
		var taskWidget = $('div.task-widget');
		var taskItems = taskWidget.find('li.task-item');
		var currentItems = taskWidget.find('ul.task-current');
		var completedItems = taskWidget.find('ul.task-completed');

		// Init jQuery Sortable on Task Widget
		taskWidget.sortable({
			items: taskItems, // only init sortable on list items (not labels)
			handle: '.task-menu',
			axis: 'y',
			connectWith: ".task-list",
			update: function( event, ui ) {
				var Item = ui.item;
				var ParentList = Item.parent();

				// If item is already checked move it to "current items list"
				if (ParentList.hasClass('task-current')) {
					Item.removeClass('item-checked').find('input[type="checkbox"]').prop('checked', false);
				}
				if (ParentList.hasClass('task-completed')) {
					Item.addClass('item-checked').find('input[type="checkbox"]').prop('checked', true);
				}

			}
		});

		// Custom Functions to handle/assign list filter behavior
		taskItems.on('click', function(e) {
			e.preventDefault();
			var This = $(this);
			var Target = $(e.target);

			if (Target.is('.task-menu') && Target.parents('.task-completed').length) {
				This.remove();
				return;
			}

			if (Target.parents('.task-handle').length) {
				// If item is already checked move it to "current items list"
				if (This.hasClass('item-checked')) {
					This.removeClass('item-checked').find('input[type="checkbox"]').prop('checked', false);
				}
				// Otherwise move it to the "completed items list"
				else {
					This.addClass('item-checked').find('input[type="checkbox"]').prop('checked', true);
				}
			}

		});


		var highColors = [bgSystem, bgSuccess, bgWarning, bgPrimary];

		// Chart data
		var seriesData = [{
			name: 'Phones',
			data: [5.0, 9, 17, 22, 19, 11.5, 5.2, 9.5, 11.3, 15.3, 19.9, 24.6]
		}, {
			name: 'Notebooks',
			data: [2.9, 3.2, 4.7, 5.5, 8.9, 12.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
		}, {
			name: 'Desktops',
			data: [15, 19, 22.7, 29.3, 22.0, 17.0, 23.8, 19.1, 22.1, 14.1, 11.6, 7.5]
		}, {
			name: 'Music Players',
			data: [11, 6, 5, 15, 17.0, 22.0, 30.8, 24.1, 14.1, 11.1, 9.6, 6.5]
		}];

		var ecomChart = $('#ecommerce_chart1');
		if (ecomChart.length) {
			ecomChart.highcharts({
				credits: false,
				colors: highColors,
				chart: {
					backgroundColor: 'transparent',
					className: '',
					type: 'line',
					zoomType: 'x',
					panning: true,
					panKey: 'shift',
					marginTop: 45,
					marginRight: 1,
				},
				title: {
					text: null
				},
				xAxis: {
					gridLineColor: '#EEE',
					lineColor: '#EEE',
					tickColor: '#EEE',
					categories: ['Jan', 'Feb', 'Mar', 'Apr',
						'May', 'Jun', 'Jul', 'Aug',
						'Sep', 'Oct', 'Nov', 'Dec'
					]
				},
				yAxis: {
					min: 0,
					tickInterval: 5,
					gridLineColor: '#EEE',
					title: {
						text: null,
					}
				},
				plotOptions: {
					spline: {
						lineWidth: 3,
					},
					area: {
						fillOpacity: 0.2
					}
				},
				legend: {
					enabled: true,
					floating: false,
					align: 'right',
					verticalAlign: 'top',
					x: -15
				},
				series: seriesData
			});
		}

		// Widget VectorMap
		function runVectorMaps() {

			// Jvector Map Plugin
			var runJvectorMap = function() {
				// Data set
				var mapData = [900, 700, 350, 500];
				// Init Jvector Map
				$('#WidgetMap').vectorMap({
					map: 'us_lcc_en',
					//regionsSelectable: true,
					backgroundColor: 'transparent',
					series: {
						markers: [{
							attribute: 'r',
							scale: [3, 7],
							values: mapData
						}]
					},
					regionStyle: {
						initial: {
							fill: '#E8E8E8'
						},
						hover: {
							"fill-opacity": 0.3
						}
					},
					markers: [{
						latLng: [37.78, -122.41],
						name: 'San Francisco,CA'
					}, {
						latLng: [36.73, -103.98],
						name: 'Texas,TX'
					}, {
						latLng: [38.62, -90.19],
						name: 'St. Louis,MO'
					}, {
						latLng: [40.67, -73.94],
						name: 'New York City,NY'
					}],
					markerStyle: {
						initial: {
							fill: '#a288d5',
							stroke: '#b49ae0',
							"fill-opacity": 1,
							"stroke-width": 10,
							"stroke-opacity": 0.3,
							r: 3
						},
						hover: {
							stroke: 'black',
							"stroke-width": 2
						},
						selected: {
							fill: 'blue'
						},
						selectedHover: {}
					},
				});
				// Manual code to alter the Vector map plugin to
				// allow for individual coloring of countries
				var states = ['US-CA', 'US-TX', 'US-MO',
					'US-NY'
				];
				var colors = [bgInfo, bgPrimaryLr, bgSuccessLr, bgWarningLr];
				var colors2 = [bgInfo, bgPrimary, bgSuccess, bgWarning];
				$.each(states, function(i, e) {
					$("#WidgetMap path[data-code=" + e + "]").css({
						fill: colors[i]
					});
				});
				$('#WidgetMap').find('.jvectormap-marker')
						.each(function(i, e) {
							$(e).css({
								fill: colors2[i],
								stroke: colors2[i]
							});
						});
			}

			if ($('#WidgetMap').length) {
				runJvectorMap();
			}
		}

	});
</script>
<!-- END: PAGE SCRIPTS -->

</body>

</html>