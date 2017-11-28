<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expendables | Dashboard</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="/Expendables/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- font Awesome -->
<link href="/Expendables/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Ionicons -->
<link href="/Expendables/css/ionicons.min.css" rel="stylesheet"
	type="text/css" />
<!-- Morris chart -->
<link href="/Expendables/css/morris/morris.css" rel="stylesheet"
	type="text/css" />
<!-- jvectormap -->
<link href="/Expendables/css/jvectormap/jquery-jvectormap-1.2.2.css"
	rel="stylesheet" type="text/css" />
<!-- Date Picker -->
<link href="/Expendables/css/datepicker/datepicker3.css"
	rel="stylesheet" type="text/css" />
<!-- fullCalendar -->
<!-- <link href="css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" /> -->
<!-- Daterange picker -->
<link href="/Expendables/css/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css" />
<!-- iCheck for checkboxes and radio inputs -->
<link href="/Expendables/css/iCheck/all.css" rel="stylesheet"
	type="text/css" />
<!-- bootstrap wysihtml5 - text editor -->
<!-- <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->
<link href='http://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<!-- Theme style -->
<link href="/Expendables/css/style.css" rel="stylesheet" type="text/css" />

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="/Expendables/js/common.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->

<style type="text/css">
</style>
</head>
<body class="skin-black">
	<!-- header logo: style can be found in header.less -->
	<header class="header">
		<a href="home.htm" class="logo"> Expendables </a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
			<div class="navbar-right">
				<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					<!-- English -->
					<li id="englishLangSC"><a href="?lang=en"> <img
							src="/Expendables/images/uk.png" style="width: 20px;" alt="EN">
					</a></li>
					<!-- Polish -->
					<li id="polishLangSC"><a href="?lang=pl"> <img
							src="/Expendables/images/pl.png" style="width: 20px;" alt="PL">
					</a></li>
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-user"></i> <span>Jane Doe <i class="caret"></i></span>
					</a>
						<ul class="dropdown-menu dropdown-custom dropdown-menu-right">
							<li class="dropdown-header text-center">Account</li>

							<li><a href="#"> <i
									class="fa fa-clock-o fa-fw pull-right"></i> <span
									class="badge badge-success pull-right">10</span> Updates
							</a> <a href="#"> <i class="fa fa-envelope-o fa-fw pull-right"></i>
									<span class="badge badge-danger pull-right">5</span> Messages
							</a> <a href="#"><i class="fa fa-magnet fa-fw pull-right"></i> <span
									class="badge badge-info pull-right">3</span> Subscriptions</a> <a
								href="#"><i class="fa fa-question fa-fw pull-right"></i> <span
									class="badge pull-right">11</span> FAQ</a></li>

							<li class="divider"></li>

							<li><a href="#"> <i class="fa fa-user fa-fw pull-right"></i>
									Profile
							</a> <a data-toggle="modal" href="#modal-user-settings"> <i
									class="fa fa-cog fa-fw pull-right"></i> Settings
							</a></li>

							<li class="divider"></li>

							<li><a href="Expendables/j_spring_security_logout"><i
									class="fa fa-ban fa-fw pull-right"></i> Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="getProfilePhoto.htm" class="img-circle"
							id="indexWelcomeProfilePic" alt="User Image"
							onerror="standbyPic($('#indexWelcomeProfilePic'));" />
					</div>
					<div class="pull-left info">
						<p>
							Hello,&nbsp; <label id="addUserProfileFirstNameLabelId"></label>
						</p>

						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>
				<!-- search form -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..." /> <span class="input-group-btn">
							<button type='submit' name='seach' id='search-btn'
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="active"><a href="home.htm"> <i
							class="fa fa-dashboard"></i> <span>Home</span>
					</a></li>
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<li><a
							href="${pageContext.request.contextPath}/membershipRegistration.htm">
								<i class="fa fa-gavel"></i> <span>Register</span>
						</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<li><a
							href="${pageContext.request.contextPath}/manageContent.htm">
								<i class="fa fa-globe"></i> <span>Contents</span>
						</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<li><a
							href="${pageContext.request.contextPath}/getAllSlots.htm"> <i
								class="fa fa-glass"></i> <span>Slots</span>
						</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<li><a
							href="${pageContext.request.contextPath}/manageSchedule.htm">
								<i class="fa fa-dashboard"></i> <span>Booking</span>
						</a></li>
					</sec:authorize>

					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<li><a
							href="${pageContext.request.contextPath}/reschedule.htm"> <i
								class="fa fa-gavel"></i> <span>Reschedule</span>
						</a></li>
					</sec:authorize>

					<sec:authorize
						access="hasAnyRole('ROLE_ADMIN','ROLE_USER','ROLE_SUPPLIER')">
						<li><a
							href="${pageContext.request.contextPath}/slotsQueue.htm"> <i
								class="fa fa-globe"></i> <span>Slots Queue</span>
						</a></li>
					</sec:authorize>
					<sec:authorize
						access="hasAnyRole('ROLE_ADMIN','ROLE_USER','ROLE_SUPPLIER')">
						<li><a
							href="${pageContext.request.contextPath}/queueStatus.htm"> <i
								class="fa fa-glass"></i> <span>Queue Status</span>
						</a></li>
					</sec:authorize>
					<li><a
						href="${pageContext.request.contextPath}/uploadProfilePhoto.htm">
							<i class="fa fa-dashboard"></i> <span>Upload Photo</span>
					</a></li>

				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<aside class="right-side">

			<!-- Main content -->
			<section class="content">



				<!-- Main row -->
				<div class="row">

					<!--  HERE -->

					<div class="col-md-8">
						<section class="panel">
							<header class="panel-heading"> Delivery Progress </header>
							<div class="panel-body table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>#</th>
											<th>Supplier</th>
											<th>Manager</th>
											<!-- <th>Client</th> -->
											<th>Deadline</th>
											<!-- <th>Price</th> -->
											<th>Status</th>
											<th>Progress</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Facebook</td>
											<td>Mark</td>
											<!-- <td>Steve</td> -->
											<td>10/10/2014</td>
											<!-- <td>$1500</td> -->
											<td><span class="label label-danger">in progress</span></td>
											<td><span class="badge badge-info">50%</span></td>
										</tr>
										<tr>
											<td>2</td>
											<td>Twitter</td>
											<td>Evan</td>
											<!-- <td>Darren</td> -->
											<td>10/8/2014</td>
											<!-- <td>$1500</td> -->
											<td><span class="label label-success">completed</span></td>
											<td><span class="badge badge-success">100%</span></td>
										</tr>
										<tr>
											<td>3</td>
											<td>Google</td>
											<td>Larry</td>
											<!-- <td>Nick</td> -->
											<td>10/12/2014</td>
											<!-- <td>$2000</td> -->
											<td><span class="label label-warning">in progress</span></td>
											<td><span class="badge badge-warning">75%</span></td>
										</tr>
										<tr>
											<td>4</td>
											<td>LinkedIn</td>
											<td>Allen</td>
											<!-- <td>Rock</td> -->
											<td>10/01/2015</td>
											<!-- <td>$2000</td> -->
											<td><span class="label label-info">in progress</span></td>
											<td><span class="badge badge-info">65%</span></td>
										</tr>
										<tr>
											<td>5</td>
											<td>Tumblr</td>
											<td>David</td>
											<!-- <td>HHH</td> -->
											<td>01/11/2014</td>
											<!-- <td>$2000</td> -->
											<td><span class="label label-warning">in progress</span></td>
											<td><span class="badge badge-danger">95%</span></td>
										</tr>
										<tr>
											<td>6</td>
											<td>Tesla</td>
											<td>Musk</td>
											<!-- <td>HHH</td> -->
											<td>01/11/2014</td>
											<!-- <td>$2000</td> -->
											<td><span class="label label-info">in progress</span></td>
											<td><span class="badge badge-success">95%</span></td>
										</tr>
										<tr>
											<td>7</td>
											<td>Ghost</td>
											<td>XXX</td>
											<!-- <td>HHH</td> -->
											<td>01/11/2014</td>
											<!-- <td>$2000</td> -->
											<td><span class="label label-info">in progress</span></td>
											<td><span class="badge badge-success">95%</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</section>


					</div>
					<!--end col-6 -->
					<div class="col-lg-4">

						<!--chat start-->
						<section class="panel">
							<header class="panel-heading"> Notifications </header>
							<div class="panel-body" id="noti-box">

								<div class="alert alert-block alert-danger">
									<button data-dismiss="alert" class="close close-sm"
										type="button">
										<i class="fa fa-times"></i>
									</button>
									<strong>Oh snap!</strong> Change a few things up and try
									submitting again.
								</div>
								<div class="alert alert-success">
									<button data-dismiss="alert" class="close close-sm"
										type="button">
										<i class="fa fa-times"></i>
									</button>
									<strong>Well done!</strong> You successfully read this
									important alert message.
								</div>
								<div class="alert alert-info">
									<button data-dismiss="alert" class="close close-sm"
										type="button">
										<i class="fa fa-times"></i>
									</button>
									<strong>Heads up!</strong> This alert needs your attention, but
									it's not super important.
								</div>
								<div class="alert alert-warning">
									<button data-dismiss="alert" class="close close-sm"
										type="button">
										<i class="fa fa-times"></i>
									</button>
									<strong>Warning!</strong> Best check yo self, you're not
									looking too good.
								</div>


								<div class="alert alert-block alert-danger">
									<button data-dismiss="alert" class="close close-sm"
										type="button">
										<i class="fa fa-times"></i>
									</button>
									<strong>Oh snap!</strong> Change a few things up and try
									submitting again.
								</div>
								<div class="alert alert-success">
									<button data-dismiss="alert" class="close close-sm"
										type="button">
										<i class="fa fa-times"></i>
									</button>
									<strong>Well done!</strong> You successfully read this
									important alert message.
								</div>
								<div class="alert alert-info">
									<button data-dismiss="alert" class="close close-sm"
										type="button">
										<i class="fa fa-times"></i>
									</button>
									<strong>Heads up!</strong> This alert needs your attention, but
									it's not super important.
								</div>
								<div class="alert alert-warning">
									<button data-dismiss="alert" class="close close-sm"
										type="button">
										<i class="fa fa-times"></i>
									</button>
									<strong>Warning!</strong> Best check yo self, you're not
									looking too good.
								</div>



							</div>
						</section>



					</div>


				</div>


			<!-- /.content -->
			<div class="footer-main">Copyright &copy The Expendables, 2017
			</div>
		</aside>
		<!-- /.right-side -->

	</div>
	<!-- ./wrapper -->


	<!-- jQuery 2.0.2 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<script src="/Expendables/js/jquery.min.js" type="text/javascript"></script>

	<!-- jQuery UI 1.10.3 -->
	<script src="/Expendables/js/jquery-ui-1.10.3.min.js"
		type="text/javascript"></script>
	<!-- Bootstrap -->
	<script src="/Expendables/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- daterangepicker -->
	<script
		src="/Expendables/js/plugins/daterangepicker/daterangepicker.js"
		type="text/javascript"></script>

	<script src="/Expendables/js/plugins/chart.js" type="text/javascript"></script>

	<!-- datepicker
        <script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>-->
	<!-- Bootstrap WYSIHTML5
        <script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>-->
	<!-- iCheck -->
	<script src="/Expendables/js/plugins/iCheck/icheck.min.js"
		type="text/javascript"></script>
	<!-- calendar -->
	<script src="/Expendables/js/plugins/fullcalendar/fullcalendar.js"
		type="text/javascript"></script>

	<!-- Director App -->
	<script src="/Expendables/js/Director/app.js" type="text/javascript"></script>

	<!-- Director dashboard demo (This is only for demo purposes) -->
	<script src="/Expendables/js/Director/dashboard.js"
		type="text/javascript"></script>

	<!-- Director for demo purposes -->
	<script type="text/javascript">
		$('input').on('ifChecked', function(event) {
			// var element = $(this).parent().find('input:checkbox:first');
			// element.parent().parent().parent().addClass('highlight');
			$(this).parents('li').addClass("task-done");
			console.log('ok');
		});
		$('input').on('ifUnchecked', function(event) {
			// var element = $(this).parent().find('input:checkbox:first');
			// element.parent().parent().parent().removeClass('highlight');
			$(this).parents('li').removeClass("task-done");
			console.log('not');
		});
	</script>
	<script>
		$('#noti-box').slimScroll({
			height : '330px',
			size : '5px',
			BorderRadius : '5px'
		});

		$('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey')
				.iCheck({
					checkboxClass : 'icheckbox_flat-grey',
					radioClass : 'iradio_flat-grey'
				});
	</script>
	
</body>
</html>