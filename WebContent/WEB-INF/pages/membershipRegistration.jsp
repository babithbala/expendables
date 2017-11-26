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

<link rel="stylesheet"
	href="/Expendables/jQuery/themes/bs/jquery-ui.css">
<link rel="stylesheet" href="/Expendables/css/validation.css">


<script src="/Expendables/js/common.js"></script>

</head>
<body class="skin-black">
	<!-- header logo: style can be found in header.less -->
	<header class="header">
		<a href="home.htm" class="logo"> <img alt=""
			src="/Expendables/img/images.png" style="width: 190px;"> <!--                 B<font size="2">&</font>P Care -->
		</a>
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
												<img src="img/avatar.png" class="img-circle"
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
												<img src="img/avatar.png" class="img-circle"
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
												<img src="img/avatar.png" class="img-circle"
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
								id="addNewUserFullNameLabelId"></label> <i class="caret"></i></span>
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
							id="addUserWelcomeProfilePic" alt="User Image"
							onerror="standbyPic($('#addUserWelcomeProfilePic'));" />
					</div>
					<div class="pull-left info">
						<p>
							Hello,&nbsp; <label id="addNewUserFirstNameLabelId"></label>
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
					<li><a href="home.htm"> <i class="fa fa-dashboard"></i> <span>Home</span>
					</a></li>
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<li class="active"><a
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

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->


			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> Membership Application
								Form </header>
							<div class="panel-body">
								<div id="addMembershipRegErrorMessage" style="color: red"></div>
								<form class="form-horizontal tasi-form" role="form"
									id="membershipRegForm">
									<div class="form-group">
										<label for="membershipInputUserName"
											class="col-lg-2 col-sm-2 control-label">
											User&nbsp;Name<font color="red">&nbsp;*</font>
										</label>
										<div class="col-lg-6">
											<input name="userName" type="text" class="form-control"
												id="membershipInputUserName"
												placeholder="User's Unique Name">
										</div>
									</div>
									<div class="form-group">
										<label for="membershipInputRole"
											class="col-lg-2 col-sm-2 control-label"> Role<font
											color="red">&nbsp;*</font></label>
										<div class="col-lg-6">
											<select class="form-control m-b-10" id="membershipInputRole"
												name="role">
												<option value="" selected="selected">Select Role</option>
												<option value="ROLE_ADMIN">Admin</option>
												<option value="ROLE_SUPPLIER">Supplier</option>
												<option value="ROLE_USER">User</option>
											</select>
										</div>
									</div>
									<div class="form-group" id="membershipInputSupplierNameDiv">
										<label for="membershipInputSupplierContactpersonName"
											class="col-lg-2 col-sm-2 control-label">
											Supplier&nbsp;Name<font color="red">&nbsp;*</font>
										</label>
										<div class="col-lg-6">
											<input name="supplierName" type="text" class="form-control"
												id="membershipInputSupplierContactpersonName"
												placeholder="Supplier Name">
										</div>
									</div>

									<div class="form-group" id="membershipInputParmaDiv">
										<label for="membershipInputParma"
											class="col-lg-2 col-sm-2 control-label"> Parma<font
											color="red">&nbsp;*</font></label>
										<div class="col-lg-6">
											<input name="parma" type="text" class="form-control"
												id="membershipInputParma" placeholder="Parma">
										</div>
									</div>

									<div class="form-group" id="membershipInputContactPersonDiv">
										<label for="membershipInputContactPerson"
											class="col-lg-2 col-sm-2 control-label"> Contact
											Person<font color="red">&nbsp;*</font>
										</label>
										<div class="col-lg-6">
											<input name="contactPerson" type="text" class="form-control"
												id="membershipInputContactPerson"
												placeholder="Contact Person">
										</div>
									</div>
									<div class="form-group" id="membershipInputFirstNameDiv">
										<label for="membershipInputFirstName"
											class="col-lg-2 col-sm-2 control-label">
											First&nbsp;Name<font color="red">&nbsp;*</font>
										</label>
										<div class="col-lg-6">
											<input name="firstName" type="text" class="form-control"
												id="membershipInputFirstName" placeholder="First Name">
										</div>
									</div>


									<div class="form-group" id="membershipInputLastNameDiv">
										<label for="membershipInputLastName"
											class="col-lg-2 col-sm-2 control-label">
											Last&nbsp;Name<font color="red">&nbsp;*</font>
										</label>
										<div class="col-lg-6">
											<input name="lastName" type="text" class="form-control"
												id="membershipInputLastName" placeholder="Last Name">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label col-lg-2"
											for="membershipInputAddress">Address<font color="red">&nbsp;*</font></label>
										<div class="col-lg-6">
											<textarea row="5" name="address" class="form-control"
												id="membershipInputAddress" placeholder="Address"></textarea>
										</div>
									</div>

									<div class="form-group">
										<label for="membershipInputEmail1"
											class="col-lg-2 col-sm-2 control-label">Email&nbsp;address<font
											color="red">&nbsp;*</font></label>
										<div class="col-lg-6">
											<input type="email" name="email" class="form-control"
												id="membershipInputEmail1" placeholder="Enter email">
										</div>
									</div>
									<div class="form-group">
										<label for="membershipInputMobileNo"
											class="col-lg-2 col-sm-2 control-label">Phone&nbsp;No<font
											color="red">&nbsp;*</font></label>
										<div class="col-lg-6">
											<input name="mobileNo" type="text" class="form-control"
												id="membershipInputMobileNo"
												placeholder="(+CountryCode) PhoneNo">
										</div>
									</div>
									<div class="form-group">
										<label for="membershipInputPassword"
											class="col-lg-2 col-sm-2 control-label"> Password<font
											color="red">&nbsp;*</font></label>
										<div class="col-lg-6">
											<input type="password" name="password" class="form-control"
												id="membershipInputPassword" placeholder="Password">
										</div>
									</div>
									<div class="form-group">
										<label for="membershipInputConfirmPassword"
											class="col-lg-2 col-sm-2 control-label">Confirm&nbsp;Password<font
											color="red">&nbsp;*</font></label>
										<div class="col-lg-6">
											<input type="password" name="confirmPassword"
												class="form-control" id="membershipInputConfirmPassword"
												placeholder="Confirm Password">
										</div>
									</div>
									<div class="form-group">
										<div class="col-lg-offset-2 col-lg-8">
											<button type="submit" class="btn btn-info"
												id="membershipRegSubmitButton">Submit</button>
											<button type="button" class="btn btn-danger"
												id="membershipRegCancelButton">Cancel</button>
											<button type="reset" class="btn btn-warning"
												id="membershipRegAddnewButton">Add New</button>
										</div>
									</div>
								</form>

							</div>
						</section>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
		<div class="footer-main"></div>
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

	<script type="text/javascript">
		$(function() {
			$("#membershipRegCancelButton").click(function() {
				$.ajax({
					url : 'home.htm',
					success : function(data) {
						$(location).attr('href', 'home.htm');
					}
				});
			});

			// <!-- INITIAL STATE TO HIDE SHOW SOME ELEMENTS DEPENDING ON THE ROLE SELECTION -->
			$("#membershipInputSupplierNameDiv").hide();
			$("#membershipInputParmaDiv").hide();
			$("#membershipInputContactPersonDiv").hide();
			var roleSelected = "";
			$("#membershipInputRole").change(function() {
				roleSelected = this.value;

				if ("ROLE_SUPPLIER" == roleSelected) {
					$("#membershipInputSupplierNameDiv").show();
					$("#membershipInputParmaDiv").show();
					$("#membershipInputContactPersonDiv").show();
					$("#membershipInputFirstNameDiv").hide();
					$("#membershipInputLastNameDiv").hide();
				} else {
					$("#membershipInputSupplierNameDiv").hide();
					$("#membershipInputParmaDiv").hide();
					$("#membershipInputContactPersonDiv").hide();
					$("#membershipInputFirstNameDiv").show();
					$("#membershipInputLastNameDiv").show();
				}
			});

			var validator = $("#membershipRegForm")
					.validate(
							{
								meta : "validate",
								rules : {
									userName : {
										required : true,
										minlength : 4,
										maxlength : 15
									},
									supplierName : {
										required : function() {
											return roleSelected == "ROLE_SUPPLIER";
										},
										minlength : 3,
										maxlength : 25
									},
									parma : {
										required : function() {
											return roleSelected == "ROLE_SUPPLIER";
										},
										minlength : 3,
										maxlength : 25
									},
									contactPerson : {
										required : function() {
											return roleSelected == "ROLE_SUPPLIER";
										},
										minlength : 3,
										maxlength : 25
									},
									firstName : {
										required : function() {
											return roleSelected != "ROLE_SUPPLIER";
										},
										minlength : 3,
										maxlength : 25,
										lettersonly : true
									},
									lastName : {
										required : function() {
											return roleSelected != "ROLE_SUPPLIER";
										},
										minlength : 3,
										maxlength : 25,
										lettersonly : true
									},
									password : {
										required : true,
										minlength : 4,
										maxlength : 15
									},
									confirmPassword : {
										required : true,
										minlength : 4,
										maxlength : 15,
										equalTo : "#membershipInputPassword"
									},
									email : {
										email : true
									},
									mobileNo : {
										required : true
									},
									address : {
										required : true,
										minlength : 4,
										maxlength : 15
									},
									role : {
										required : true
									}
								},
								messages : {
									userName : {
										required : "Please enter Username.",
										minlength : "Username must be minimum 4 characters.",
										maxlength : "Username must be maximum 15 characters."
									},
									supplierName : {
										required : "Please enter Supplier Name.",
										minlength : "Supplier must be minimum 3 characters.",
										maxlength : "Supplier must be maximum 25 characters."
									},
									parma : {
										required : "Please enter Parma Name.",
										minlength : "Parma must be minimum 3 characters.",
										maxlength : "Parma must be maximum 25 characters."
									},
									contactPerson : {
										required : "Please enter Contact Person Name.",
										minlength : "Contact Person Name must be minimum 3 characters.",
										maxlength : "Contact Person Name must be maximum 25 characters."
									},
									firstName : {
										required : "Please enter First Name.",
										minlength : "FirstName must be minimum 3 characters.",
										maxlength : "FirstName must be maximum 25 characters.",
										lettersonly : "Please enter Letters only for FirstName."
									},
									lastName : {
										required : "Please enter Last Name.",
										minlength : "LastName must be minimum 3 characters.",
										maxlength : "LastName must be maximum 25 characters.",
										lettersonly : "Please enter Letters only for LastName."
									},
									password : {
										required : "Password is required",
										minlength : "Password must be minimum 4 characters.",
										maxlength : "Password must be maximum 15 characters."
									},
									confirmPassword : {
										required : "Confirm Password is required.",
										minlength : "Must be minimum 4 characters.",
										maxlength : "Must be maximum 15 characters.",
										equalTo : "Password and Confirm Password do not Match."
									},
									email : {
										email : "Enter a valid Email."
									},
									address : {
										required : "Please enter your address.",
										minlength : "Address must be minimum 4 characters.",
										maxlength : "Address must be maximum 15 characters."
									},
									mobileNo : {
										required : "Please enter your phone number."
									},
									role : {
										required : "Please select User Role."
									}
								},
								submitHandler : function() {
									$("#addMembershipRegErrorMessage").html("");
									var user = $('#membershipRegForm')
											.serializeObject();
									user.password = trim(user.password);
									user.confirmPassword = trim(user.confirmPassword);
									$
											.postJSON(
													"membershipRegistrationSubmission.htm",
													user,
													function(data) {
														displayUserAddMsg(data);
													});
									$('html,body').animate(
											{
												scrollTop : $(".navbar-right")
														.offset().top
											}, 'slow');
									return false;
								}
							});

			function displayUserAddMsg(data) {
				var i = 0;
				var messages = "";
				for (i = 0; i < data.length; i++) {
					messages += data[i].message;
				}
				$("#addMembershipRegErrorMessage").html(messages);
			}
		});
	</script>
</body>
</html>
