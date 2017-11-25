<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Expendables</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <meta name="description" content="Developed By M Abdur Rokib Promy">
        <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
        <!-- bootstrap 3.0.2 -->
        <link href="/Expendables/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="/Expendables/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="/Expendables/css/ionicons.min.css" rel="stylesheet" type="text/css" />

        <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <!-- Theme style -->
        <link href="/Expendables/css/style.css" rel="stylesheet" type="text/css" />
        
        <link rel="stylesheet" href="/Expendables/jQuery/themes/bs/jquery-ui.css"> 
        <link rel="stylesheet" href="/Expendables/css/validation.css">

        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="/Expendables/js/common.js"></script>
		
    </head>
    <body class="skin-black">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="userHome.htm" class="logo">
            	<img alt="" src="/Expendables/img/images.png" style="width: 190px;">
<!--                 B<font size="2">&</font>P Care -->
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/bb.jpg" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Support Team
                                                </h4>
                                                <p>Challenges for B<font size="2">&</font>P Care </p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/bb.jpg" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Design Team

                                                </h4>
                                                <p>Design Challenges for B<font size="2">&</font>P Care</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers

                                                </h4>
                                                <p>Coding challenges for B<font size="2">&</font>P Care</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> Today</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/bb.jpg" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Networking Department

                                                </h4>
                                                <p>Networking challenges for B<font size="2">&</font>P Care</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Testing

                                                </h4>
                                                <p>Testing challenges for B<font size="2">&</font>P Care</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 2 days</small>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-tasks"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">

                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-success" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Create a nice theme
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-danger" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Some task I need to do
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-info" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-warning" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>

                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">

                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user"></i>
                                <span><label id="addNewUserFullNameLabelId" ></label> 
                                	<i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                <li class="dropdown-header text-center">Account</li>

                                <li>
                                    <a href="#">
                                    <i class="fa fa-clock-o fa-fw pull-right"></i>
                                        <span class="badge badge-success pull-right">10</span> Updates</a>
                                    <a href="#">
                                    <i class="fa fa-envelope-o fa-fw pull-right"></i>
                                        <span class="badge badge-danger pull-right">5</span> Messages</a>
                                    <a href="#"><i class="fa fa-magnet fa-fw pull-right"></i>
                                        <span class="badge badge-info pull-right">3</span> Subscriptions</a>
                                    <a href="#"><i class="fa fa-question fa-fw pull-right"></i> <span class=
                                        "badge pull-right">11</span> FAQ</a>
                                </li>

                                <li class="divider"></li>

                                    <li>
                                        <a href="profile.htm">
                                        <i class="fa fa-user fa-fw pull-right"></i>
                                            Profile
                                        </a>
                                        <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN','ROLE_NURSE', 'ROLE_PHYSICIAN','ROLE_PATIENT')">
                                        <a data-toggle="modal" href="${pageContext.request.contextPath}/userSettings.htm">
                                        <i class="fa fa-cog fa-fw pull-right"></i>
                                           User Settings
                                        </a>
                                        </sec:authorize>
                                        
                                        </li>

                                        <li class="divider"></li>

                                        <li>
                                            <a href="j_spring_security_logout"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
                                        </li>
                                    </ul>

                        </li>
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
                            <img src="getProfilePhoto.htm" class="img-circle" id="addUserWelcomeProfilePic"
                            alt="User Image" onerror="standbyPic($('#addUserWelcomeProfilePic'));"/>
                        </div>
                        <div class="pull-left info">
                            <p>Hello,&nbsp;
									<label id="addNewUserFirstNameLabelId"></label></p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                                <li  class="active">
		                            <a href="home.htm">
		                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="general.htm">
		                                <i class="fa fa-gavel"></i> <span>General</span>
		                            </a>
		                        </li>
		
		                        <li>
		                            <a href="basicForm.htm">
		                                <i class="fa fa-globe"></i> <span>Basic Elements</span>
		                            </a>
		                        </li>
		
		                        <li>
		                            <a href="simple.htm">
		                                <i class="fa fa-glass"></i> <span>Simple tables</span>
		                            </a>
		                        </li>
		                        <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
			                        <li>
			                            <a href="${pageContext.request.contextPath}/demo.htm">
			                                <i class="fa fa-glass"></i> <span>Additional</span>
			                            </a>
			                        </li>
                                 </sec:authorize>
                                <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
			                        <li>
			                            <a href="${pageContext.request.contextPath}/uploadProfilePhoto.htm">
			                                <i class="fa fa-glass"></i> <span>Upload Photo</span>
			                            </a>
			                        </li>
                                 </sec:authorize>
                                 
                                 <li>
			                            <a href="${pageContext.request.contextPath}/calendarBooking.htm">
			                                <i class="fa fa-glass"></i> <span>Booking</span>
			                            </a>
			                        </li>
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
                              <header class="panel-heading">
                                  Membership Application Form
                              </header>
                              <div class="panel-body">
                              <div id="addMembershipRegErrorMessage" style="color: red"></div>
                                  <form class="form-horizontal tasi-form" role="form" id="membershipRegForm">
                                  	 <div class="form-group">
                                          <label for="membershipInputUserName" class="col-lg-2 col-sm-2 control-label">
                                          User&nbsp;Name<font color="red">&nbsp;*</font></label>
                                          <div class="col-lg-6">
                                          	<input name="userName" type="text" class="form-control" 
                                          		id="membershipInputUserName" placeholder="User's Unique Name">
                                          </div>
                                      </div>
                                      
                                      <div class="form-group">
                                          <label for="membershipInputRole" class="col-lg-2 col-sm-2 control-label">
                                          Role<font color="red">&nbsp;*</font></label>
                                          <div class="col-lg-6">
	                                          <select class="form-control m-b-10" id="membershipInputRole" name="role" >
	                                          		  <option value="" selected="selected">Select Role</option>
	                                                  <option value="ROLE_ADMIN">Admin</option>
	                                                  <option value="ROLE_SUPPLIER">Supplier</option>
<!-- 	                                                  <option value="ROLE_CARRIER">Carrier</option> -->
	                                                  <option value="ROLE_USER">User</option>
	                                              </select>
                                           </div>
                                      </div>
                                      
                                      <div class="form-group" id="membershipInputSupplierNameDiv">
                                          <label for="membershipInputSupplierName" class="col-lg-2 col-sm-2 control-label">
                                          Supplier&nbsp;Name<font color="red">&nbsp;*</font></label>
                                          <div class="col-lg-6">
                                          	<input name="supplierName" type="text" class="form-control" 
                                          		id="membershipInputSupplierName" placeholder="Supplier Name">
                                          </div>
                                      </div>
                                      
                                      <div class="form-group" id="membershipInputSupplierContactpersonNameDiv">
                                          <label for="membershipInputSupplierContactpersonName" class="col-lg-2 col-sm-2 control-label">
                                          Contact&nbsp;Person<font color="red">&nbsp;*</font></label>
                                          <div class="col-lg-6">
                                          	<input name="contactPersonName" type="text" class="form-control" 
                                          		id="membershipInputSupplierContactpersonName" placeholder="Supplier Name">
                                          </div>
                                      </div>
                                      
                                  	 <div class="form-group">
                                          <label for="membershipInputFirstName" class="col-lg-2 col-sm-2 control-label">
                                          First&nbsp;Name<font color="red">&nbsp;*</font></label>
                                          <div class="col-lg-6">
                                          	<input name="firstName" type="text" class="form-control" 
                                          		id="membershipInputFirstName" placeholder="First Name">
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label for="membershipInputLastName" class="col-lg-2 col-sm-2 control-label">
                                          Last&nbsp;Name<font color="red">&nbsp;*</font></label>
                                          <div class="col-lg-6">
                                          	<input name="lastName" type="text" class="form-control" 
                                          		id="membershipInputLastName" placeholder="Last Name">
                                          </div>
                                      </div>
                                      <div class="form-group">
                                      <label for="membershipInputSex" class="col-lg-2 col-sm-2 control-label">
                                      Sex<font color="red">&nbsp;*</font></label>
                                           <div class="col-lg-8">
                                              <div class="row">
                                                  <div class="col-lg-3">
                                                       <select class="form-control" id="membershipInputSex" name="sex">
		                                          		  <option value="" selected="selected">Select One</option>
		                                                  <option value="M">Male</option>
		                                                  <option value="F">Female</option>
		                                                  <option value="U">Unknown</option>
		                                              </select>
                                                  </div>
                                                  <label for="membershipInputDoB" class="col-lg-2 col-sm-2 control-label">
                                                  DOB<font color="red">&nbsp;*</font></label>
                                                  <div class="col-lg-4">
                                                       <input type="text" id="membershipInputDoB" name="dob" 
	                                          			class="inputTextToDataPicker form-control "  maxlength="8">
                                                  </div>
                                              </div>
                                          </div>
                                          
                                      </div>
                                      
                                      <div class="form-group">
                                          <label class="col-sm-2 control-label col-lg-2" for="membershipInputStreetNo">Address</label>
                                          <div class="col-lg-6">
	                                          <input type="text" name="address" class="form-control" 
	                                          id="membershipInputAddress" placeholder="Address">
	                                       </div>
                                      </div>
                                      
                                      <div class="form-group">
                                          <label for="exampleInputEmail1" class="col-lg-2 col-sm-2 control-label">Email&nbsp;address</label>
                                          <div class="col-lg-6">
	                                          <input type="email" name="email" class="form-control" 
	                                          id="membershipInputEmail1" placeholder="Enter email">
	                                       </div>
                                      </div>
                                      <div class="form-group">
                                          <label for="membershipInputMobileNo" class="col-lg-2 col-sm-2 control-label">Phone&nbsp;No</label>
                                          <div class="col-lg-6">
	                                          <input name="mobileNo" type="text" class="form-control" 
	                                          id="membershipInputMobileNo" placeholder="(+CountryCode)PhoneNo">
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label for="membershipInputPassword" class="col-lg-2 col-sm-2 control-label">
                                          Password<font color="red">&nbsp;*</font></label>
                                          <div class="col-lg-6">
	                                          <input type="password" name="password" class="form-control" 
	                                          id="membershipInputPassword" placeholder="Password">
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label for="membershipInputConfirmPassword" class="col-lg-2 col-sm-2 control-label">Confirm&nbsp;Password</label>
                                          <div class="col-lg-6">
	                                          <input type="password" name="confirmPassword" class="form-control" 
	                                          id="membershipInputConfirmPassword" placeholder="Confirm Password">
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label for="exampleInputFile" class="col-lg-2 col-sm-2 control-label">Upload&nbsp;Photo</label>
                                          <div class="col-lg-6">
                                          <input type="file" id="membershipInputProfileFile" name="profilePhoto">
                                          <p class="help-block">Example block-level help text here.</p>
                                          </div>
                                      </div>
                                      
                                       
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-8">
                                          	  <button type="submit" class="btn btn-info" id="memebershipRegSubmitButton">Submit</button>
                                              <button type="button" class="btn btn-danger" id="memebershipRegCancelButton">Cancel</button>
                                          </div>
                                      </div>
                                  </form>

                              </div>
                          </section>
                      </div>
                   </div>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
            <div class="footer-main">
               Copyright &copy Babith Balarkan & Prashanth Xavier, 2017
            </div>
        </div><!-- ./wrapper -->
        
        <!-- Bootstrap -->
        <script src="/Expendables/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Director App -->
<!--         <script src="/Expendables/js/Director/app.js" type="text/javascript"></script> -->
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
		
        <script type="text/javascript">
        $(function() {
        	 $("#memebershipRegCancelButton").click(function(){
              	  $.ajax({
              	       url: 'userHome.htm',
              	       success: function(data) {
              	    	   $(location).attr('href', 'userHome.htm');
              	       }
              	    });
              });
        	 
        	 $(".inputTextToDataPicker").datepicker( {
 				dateFormat: 'yymmdd',
 				numberOfMonths : 1,
 				showButtonPanel : true,
 				changeMonth: true,
 				changeYear: true
 			});
 		  $( ".inputTextToDataPicker" ).datepicker( "option", "yearRange", getYearRange() );
 		  
 		 populatePrincipalDetails($("#addNewUserFullNameLabelId"),$("#addNewUserFirstNameLabelId"));
 		$("#membershipInputSupplierNameDiv").hide();
		$("#membershipInputSupplierContactpersonNameDiv").hide();
 		
 		$("#membershipInputRole").change(function () {
 	        var roleSelected = this.value;

			if("ROLE_SUPPLIER"==roleSelected){
				$("#membershipInputSupplierNameDiv").show();
				$("#membershipInputSupplierContactpersonNameDiv").show();
			}else{
				$("#membershipInputSupplierNameDiv").hide();
				$("#membershipInputSupplierContactpersonNameDiv").hide();
			}
 	    });
 		var validator = $("#membershipRegForm").validate({
 			meta : "validate",
 			rules:{  
			 				userName: {
								required : true,
								minlength : 4,
								maxlength : 15
							},
 							firstName : {
 								required : true,
 								minlength : 3,
 								maxlength : 25,
 								lettersonly : true
 							},
 							lastName : {
 								required : true,
 								minlength : 3,
 								maxlength : 25,
 								lettersonly : true
 							},
 							password : {
 								required : true,
 								minlength : 4,
 								maxlength : 15
 							},
 							confirmPassword:{
 								required : true,
 								minlength : 4,
 								maxlength : 15,
 								equalTo:"#membershipInputPassword"
 							},
 							sex : {
 								required : true
 							},
 							dob : {
 								dateBS : true,
 								required: true
 							},
 							email : {
 								email : true
 							},
 							streetNo : {
 								required :function() {
 											return  $.trim($('#membershipInputStreetName').val()) != "" ||
 													$.trim($('#membershipInputCityName').val()) != "" ||
 													$.trim($('#membershipInputCountryCode').val()) != "" ||
 													$.trim($('#membershipInputStateName').val())!="" ;
 			            				  }
 								},
 							streetName : {
 								required :function() {
 											return  $.trim($('#membershipInputStreetNo').val()) != "" || 
 													$.trim($('#membershipInputCityName').val()) != "" ||
 													$.trim($('#membershipInputCountryCode').val()) != "" ||
 													$.trim($('#membershipInputStateName').val())!="" ;
 			            				  }
 								},
 							city : {
 								required :function() {
 											return  $.trim($('#membershipInputStreetNo').val()) != "" || 
 													$.trim($('#membershipInputStreetName').val()) != "" ||
 													$.trim($('#membershipInputCountryCode').val()) != "" ||
 													$.trim($('#membershipInputStateName').val())!="" ;
 			            				  }
 								},
 							state : {
 								required :function() {
 											return  $.trim($('#membershipInputStreetNo').val()) != "" || 
 													$.trim($('#membershipInputStreetName').val()) != "" ||
 													$.trim($('#membershipInputCountryCode').val()) != "" ||
 													$.trim($('#membershipInputCityName').val())!="" ;
 			            				  }
 								},
 								country : {
 	 								required :function() {
											return  $.trim($('#membershipInputStreetNo').val()) != "" || 
													$.trim($('#membershipInputStreetName').val()) != "" ||
													$.trim($('#membershipInputStateName').val()) != "" ||
													$.trim($('#membershipInputCityName').val())!="" ;
			            				  }
								},
 							role: {
 								required: true
 							}
 					},
 			messages : {
 							userName : {
 								required : "Please enter Username.",
 								minlength : "Username must be minimum 4 characters.",
 								maxlength : "Username must be maximum 15 characters."
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
 							confirmPassword:{
 								required : "Confirm Password is required.",
 								minlength : "Must be minimum 4 characters.",
 								maxlength : "Must be maximum 15 characters.",
 								equalTo : "Password and Confirm Password do not Match."
 							},
 							sex : {
 								required : "Please select Sex."
 							},
 							dob : {
 								dateBS : "Please enter a valid DOB.",
 								required : "Please enter DOB."
 							},
 							email : {
 								email : "Enter a valid Email."
 							},
 							streetNo : {
 								required :"Please enter Street No."
 								},
 							streetName : {
 								required :"Please enter Street Name."
 								},
 							city : {
 								required :"Please enter City."
 								},
 							state : {
 								required :"Please enter State."
 								},
 							country : {
 								required :"Please enter Country."
								},
 							role: {
 								required: "Please select User Role."
 							}
 						},
 			submitHandler : function() {
 				$("#addMembershipRegErrorMessage").html("");
 				var user = $('#membershipRegForm').serializeObject();
 				alert("user.password"+user.password);
 				user.password = trim(user.password);
 				user.confirmPassword = trim(user.confirmPassword);
 				user.dob=formatDate(user.dob);
 					$.postJSON("saveOrUpdateNewUserDetails.htm", user, function(data) {
 						displayUserAddMsg(data);
 					});
 					$('html,body').animate({
 				        scrollTop: $(".navbar-right").offset().top},
 				        'slow');
 				return false;
 		 	}
 		}); 
 		
 		
 		function displayUserAddMsg(data){
 			var i = 0;
 			var messages = "";
 			for (i = 0; i < data.length; i++) {
 				messages += data[i].message;
 			}
 			$("#addMembershipRegErrorMessage").html(messages);
 		}
 		
 		populatePrincipalDetails();
        });
        
        </script>
    </body>
</html>
