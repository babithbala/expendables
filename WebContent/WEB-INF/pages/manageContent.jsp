<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expendables</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<meta name="description" content="Developed By M Abdur Rokib Promy">
<meta name="keywords"
	content="Admin, Bootstrap 3, Template, Theme, Responsive">
<!-- bootstrap 3.0.2 -->
<link href="/Expendables/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- font Awesome -->
<link href="/Expendables/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Ionicons -->
<link href="/Expendables/css/ionicons.min.css" rel="stylesheet"
	type="text/css" />

<link href='http://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<!-- Theme style -->
<link href="/Expendables/css/style.css" rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<link rel="stylesheet"
	href="/Expendables/jQuery/themes/bs/jquery-ui.css">
<link rel="stylesheet" href="/Expendables/css/validation.css">

<link rel="stylesheet"
	href="/Expendables/jQuery/themes/bs/jquery-ui.css" type="text/css" />

<!-- jQuery 2.0.2 -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="/Expendables/js/common.js"></script>

<!-- jqGrid CSS -->
<link rel="stylesheet" type="text/css" media="screen"
	href="/Expendables/jqGrid/css/ui.jqgrid.css" />
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
					<li class="dropdown messages-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-envelope"></i> <span class="label label-success">4</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 4 messages</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<ul class="menu">
									<li>
										<!-- start message --> <a href="#">
											<div class="pull-left">
												<img src="img/avatar5.png" class="img-circle"
													alt="User Image" />
											</div>
											<h4>Support Team</h4>
											<p>
												Challenges for B<font size="2">&</font>P Care
											</p> <small class="pull-right"><i class="fa fa-clock-o"></i>
												5 mins</small>
									</a>
									</li>
									<!-- end message -->
									<li><a href="#">
											<div class="pull-left">
												<img src="img/avatar2.png" class="img-circle"
													alt="user image" />
											</div>
											<h4>Design Team</h4>
											<p>
												Design Challenges for B<font size="2">&</font>P Care
											</p> <small class="pull-right"><i class="fa fa-clock-o"></i>
												2 hours</small>
									</a></li>
									<li><a href="#">
											<div class="pull-left">
												<img src="img/avatar.png" class="img-circle"
													alt="user image" />
											</div>
											<h4>Developers</h4>
											<p>
												Coding challenges for B<font size="2">&</font>P Care
											</p> <small class="pull-right"><i class="fa fa-clock-o"></i>
												Today</small>
									</a></li>
									<li><a href="#">
											<div class="pull-left">
												<img src="img/avatar5.png" class="img-circle"
													alt="user image" />
											</div>
											<h4>Networking Department</h4>
											<p>
												Networking challenges for B<font size="2">&</font>P Care
											</p> <small class="pull-right"><i class="fa fa-clock-o"></i>
												Yesterday</small>
									</a></li>
									<li><a href="#">
											<div class="pull-left">
												<img src="img/avatar.png" class="img-circle"
													alt="user image" />
											</div>
											<h4>Testing</h4>
											<p>
												Testing challenges for B<font size="2">&</font>P Care
											</p> <small class="pull-right"><i class="fa fa-clock-o"></i>
												2 days</small>
									</a></li>
								</ul>
							</li>
							<li class="footer"><a href="#">See All Messages</a></li>
						</ul></li>
					<li class="dropdown tasks-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-tasks"></i> <span class="label label-danger">9</span>
					</a>
						<ul class="dropdown-menu">

							<li class="header">You have 9 tasks</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<ul class="menu">
									<li>
										<!-- Task item --> <a href="#">
											<h3>
												Design some buttons <small class="pull-right">20%</small>
											</h3>
											<div class="progress progress-striped xs">
												<div class="progress-bar progress-bar-success"
													style="width: 20%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">20% Complete</span>
												</div>
											</div>
									</a>
									</li>
									<!-- end task item -->
									<li>
										<!-- Task item --> <a href="#">
											<h3>
												Create a nice theme <small class="pull-right">40%</small>
											</h3>
											<div class="progress progress-striped xs">
												<div class="progress-bar progress-bar-danger"
													style="width: 40%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">40% Complete</span>
												</div>
											</div>
									</a>
									</li>
									<!-- end task item -->
									<li>
										<!-- Task item --> <a href="#">
											<h3>
												Some task I need to do <small class="pull-right">60%</small>
											</h3>
											<div class="progress progress-striped xs">
												<div class="progress-bar progress-bar-info"
													style="width: 60%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">60% Complete</span>
												</div>
											</div>
									</a>
									</li>
									<!-- end task item -->
									<li>
										<!-- Task item --> <a href="#">
											<h3>
												Make beautiful transitions <small class="pull-right">80%</small>
											</h3>
											<div class="progress progress-striped xs">
												<div class="progress-bar progress-bar-warning"
													style="width: 80%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">80% Complete</span>
												</div>
											</div>
									</a>
									</li>
									<!-- end task item -->
								</ul>
							</li>
							<li class="footer"><a href="#">View all tasks</a></li>

						</ul></li>
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-user"></i> <span><label
								id="addNewEventUserFullNameLabelId"></label> <i class="caret"></i></span>
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

							<li><a href="profile.htm"> <i
									class="fa fa-user fa-fw pull-right"></i> Profile
							</a> <sec:authorize
									access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN','ROLE_NURSE', 'ROLE_PHYSICIAN','ROLE_PATIENT')">
									<a data-toggle="modal"
										href="${pageContext.request.contextPath}/userSettings.htm">
										<i class="fa fa-cog fa-fw pull-right"></i> User Settings
									</a>
								</sec:authorize> <sec:authorize access="hasRole('ROLE_ADMIN')">
									<a data-toggle="modal"
										href="${pageContext.request.contextPath}/adminSettings.htm">
										<i class="fa fa-cog fa-fw pull-right"></i> Admin Settings
									</a>
								</sec:authorize></li>

							<li class="divider"></li>

							<li><a href="j_spring_security_logout"><i
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
							id="addEventWelcomeProfilePic" alt="User Image"
							onerror="standbyPic($('#addEventWelcomeProfilePic'));" />
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
					<li><a href="home.htm"> <i class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a></li>
					<li><a href="general.htm"> <i class="fa fa-gavel"></i> <span>General</span>
					</a></li>

					<li class="active"><a href="basicForm.htm"> <i
							class="fa fa-globe"></i> <span>Basic Elements</span>
					</a></li>

					<li><a href="simple.htm"> <i class="fa fa-glass"></i> <span>Simple
								tables</span>
					</a></li>
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<li><a href="${pageContext.request.contextPath}/demo.htm">
								<i class="fa fa-glass"></i> <span>Additional</span>
						</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
						<li><a
							href="${pageContext.request.contextPath}/uploadProfilePhoto.htm">
								<i class="fa fa-glass"></i> <span>Upload Photo</span>
						</a></li>
					</sec:authorize>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->


			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> Add New Content Details </header>
							<div class="panel-body">
								<div id="addEventErrorMessage" style="color: red"></div>
								<form class="form-horizontal tasi-form" role="form"
									id="addContentForm">
									<div class="form-group">
										<label for="addEventInputContentName"
											class="col-lg-2 col-sm-2 control-label">
											Content&nbsp;Name<font color="red">&nbsp;*</font>
										</label>
										<div class="col-lg-6">
											<input name="contentName" type="text" class="form-control"
												id="addEventInputContentName" placeholder="Content Name">
											<input type="hidden" id="addEventInputContentId"
												name="contentId">
										</div>
									</div>

									<div class="form-group">
										<label for="addEventInputSlot"
											class="col-lg-2 col-sm-2 control-label">Slot<font
											color="red">&nbsp;*</font></label>
										<div class="col-lg-6">
											<select class="form-control m-b-10" id="addEventInputSlot"
												name="slotId">
												<option value="" selected="selected">Select One</option>

											</select>
										</div>
									</div>

									<div class="form-group">
										<div class="col-lg-offset-2 col-lg-10">
											<button type="submit" class="btn btn-info"
												id="addEventInputEventSubmitButton">Submit</button>
											<button type="button" class="btn btn-danger"
												id="addEventInputEventCancelButton">Cancel</button>
											<button type="reset" class="btn btn-warning"
												id="addEventInputEventAddNewButton">Add New</button>
										</div>
									</div>
								</form>

							</div>
						</section>
					</div>
				</div>
			</section>
			<!-- /.content -->

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> Find All Contents </header>
							<div class="panel-body">
								<div id="addEventErrorMessage1" style="color: red"></div>
								<form class="form-horizontal tasi-form" role="form"
									id="searchContentForm">
									<div class="form-group">
										<label for="serachEventInputContentName"
											class="col-lg-2 col-sm-2 control-label">
											Content&nbsp;Name<font color="red">&nbsp;*</font>
										</label>
										<div class="col-lg-6">
											<input name="contentName" type="text" class="form-control"
												id="serachEventInputContentName" placeholder="Content Name">
										</div>
									</div>



									<div class="form-group">
										<div class="col-lg-offset-2 col-lg-10">
											<button type="button" class="btn btn-info"
												id="searchEventInputEventSubmitButton">Search</button>
										</div>
									</div>
								</form>

							</div>
							<div class="panel-body" id="user-game-point-box">
								<div id="add_ContentListJQGTableWrapper">
									<table id="add_ContentListJQGTable"></table>
									<div id="add_ContentListJQGTablePagingToolbar"></div>
								</div>
							</div>

						</section>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
		<div class="footer-main">Copyright &copy The Expendables, 2017</div>
	</div>
	<!-- ./wrapper -->


	<script src="/Expendables/js/jquery.min.js" type="text/javascript"></script>
	<script src="/Expendables/jQuery/ui/jquery-ui.js"></script>
	<script src="/Expendables/jQuery/ui/jquery.ui.core.js"></script>
	<script src="/Expendables/jQuery/ui/jquery.ui.widget.js"></script>
	<script src="/Expendables/jQuery/ui/jquery.ui.dialog.js"></script>
	<script src="/Expendables/jQuery/ui/jquery.ui.datepicker.js"></script>
	<script src="/Expendables/jQuery/ui/jquery-ui-timepicker-addon.js"></script>
	<script src="/Expendables/jQuery/jquery.populate.js"></script>

	<script src="/Expendables/jQuery/jquery.validate.js"></script>
	<script src="/Expendables/jQuery/additional-methods.js"></script>
	<script src="/Expendables/jQuery/json.min.js"></script>
	<script src="/Expendables/jQuery/jquery.json.js"></script>

	<!-- Bootstrap -->
	<script src="/Expendables/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- Director App -->
	<script src="/Expendables/js/Director/app.js" type="text/javascript"></script>


	<!-- jqGrid JS -->
	<script src="/Expendables/jqGrid/i18n/grid.locale-en.js"
		type="text/javascript"></script>
	<script src="/Expendables/jqGrid/jquery.jqGrid.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$("#addEventInputEventCancelButton").click(function() {
			$(location).attr('href', 'demo.htm');
		});
		$(function() {

			var contentID = 0;
			$("#addEventInputEventAddNewButton").click(function() {
				contentID = 0;
				$("#addEventInputContentId").val(contentID);
			});

			$
					.ajax({
						url : 'getAllSlotDetails.htm',
						dataType : 'json',
						cache : false,
						success : function(data) {
							$("#addEventInputSlot").get(0).options.length = 0;
							$("#addEventInputSlot").get(0).options[0] = new Option(
									"Select ", "");
							$
									.each(
											data.mapperList,
											function(index, item) {
												$("#addEventInputSlot").get(0).options[$(
														"#addEventInputSlot")
														.get(0).options.length] = new Option(
														item.description,
														item.code);
											});
						}
					});

			$(".inputTextToDataPicker").datepicker({
				dateFormat : 'yymmdd',
				numberOfMonths : 1,
				showButtonPanel : true,
				changeMonth : true,
				changeYear : true
			});
			$(".inputTextToDataPicker").datepicker("option", "yearRange",
					getYearRange());

			$('#addEventInputEventTime').timepicker({
				showSecond : true,
				timeFormat : 'hh:mm:ss'
			});

			populatePrincipalDetails($("#addNewEventUserFullNameLabelId"),
					$("#addNewEventUserFirstNameLabelId"));

			var validator = $("#addContentForm").validate(
					{
						meta : "validate",
						rules : {
							contentName : {
								required : true
							},
							slotId : {
								required : true
							}
						},

						messages : {
							contentName : {
								required : 'Please enter Content Name.'
							},
							slotId : {
								required : 'Please select one Slot.'
							}
						},
						submitHandler : function() {
							$("#addEventErrorMessage").html("");
							var contentDetails = $('#addContentForm')
									.serializeObject();
							$.postJSON("saveOrUpdateContent.htm",
									contentDetails, function(data) {
										$(".inputError").removeClass(
												"inputError");
										var i = 0;
										var success = true;
										var messages = "";
										for (i = 0; i < data.length; i++) {
											messages += data[i].message;
											contentID = data[i].id;
										}
										$("#addEventInputContentId").val(
												contentID);
										$("#addEventErrorMessage").html(
												messages);
									});
							$('html,body').animate({
								scrollTop : $(".navbar-right").offset().top
							}, 'slow');
							return false;
						}
					});

			//Grid

			var contentGrid = jQuery("#add_ContentListJQGTable").jqGrid(
					{
						url : 'populateAllContentDetails.htm',
						mtype : "POST",
						jsonReader : {
							repeatitems : false,
							id : "position"
						},
						datatype : "local",
						colNames : [ "Content", 'Slot', 'Slot Min Duration',
								'contentId', 'id' ],
						colModel : [ {
							name : 'content_name',
							index : 'contentName',
							width : 50,
							sortable : false
						}, {
							name : 'slot_name',
							index : 'slotName',
							width : 90
						}, {
							name : 'duration',
							index : 'duration',
							width : 100
						}, {
							name : 'content_id',
							index : 'contentId',
							width : 10,
							hidden : true
						}, {
							name : 'position',
							index : 'position',
							sortable : false,
							hidden : true
						} ],
						rowNum : 6,
						rowList : [ 6, 10, 25 ],
						pager : '#add_ContentListJQGTablePagingToolbar',
						sortname : 'content_name',
						viewrecords : true,
						loadonce : false,
						sortorder : "desc",
						height : 309,
						autowidth : true,
						caption : "Last Week Game Points List",
						hidegrid : false,//to hide the collapse icon of grid
						loadtext : 'Loading....',
						emptyrecords : "There are no results to display",
						pgtext : "Page {0} of {1}",
						gridComplete : function() {
							var recs = $("#add_ContentListJQGTable")
									.getGridParam("records");
							if (recs == 0) {
								$("#add_ContentListJQGTableWrapper").hide();

							} else {
								$("#add_ContentListJQGTableWrapper").show();
							}
						},
						onSelectRow : function(rowid, status, e) {
							if (status) {
								var ret = jQuery("#add_ContentListJQGTable")
										.jqGrid('getRowData', rowid);
							}
						}
					});

			$("#searchEventInputEventSubmitButton").click(function() {
				reloadContentStore();
			});

			function reloadContentStore() {
				jQuery("#add_ContentListJQGTable").jqGrid('setGridParam', {
					datatype : 'json',
					url : "populateAllContentDetails.htm",
					postData : {
						contentName : $("#serachEventInputContentName").val()
					},
					page : 1
				}).trigger("reloadGrid");

			}
			jQuery("#add_ContentListJQGTable").jqGrid('navGrid',
					'#add_ContentListJQGTablePagingToolbar', {
						edit : false,
						add : false,
						del : false
					});

			$("#userHomeGameUsersSearchButton").click(function() {
				reloadContentStore();
			});
		});
	</script>
</body>
</html>
