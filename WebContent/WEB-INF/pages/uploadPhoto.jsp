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

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
		<link rel="stylesheet" href="/Expendables/jQuery/themes/bs/jquery-ui.css"> 
		<link rel="stylesheet" href="/Expendables/css/validation.css">
		
		<!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="/Expendables/js/common.js"></script>
		
		<!--  File Upload -->
        <style type="text/css">
	        input[type="file"] {
			    display: none;
			}
			.custom-file-upload {
			    border: 1px solid #ccc;
			    display: inline-block;
			    padding: 6px 12px;
			    cursor: pointer;
			}
        </style>
        
    </head>
    <body class="skin-black">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="demo.htm" class="logo">
                Expendables
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
                                                    <img src="img/avatar.png" class="img-circle" alt="User Image"/>
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
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
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
                                                    <img src="img/avatar5.png" class="img-circle" alt="user image"/>
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
                                                    <img src="img/avatar3.png" class="img-circle" alt="user image"/>
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
                                <span><label id="addUserProfileFullNameLabelId" ></label>
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
                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                                        <a data-toggle="modal" href="${pageContext.request.contextPath}/adminSettings.htm">
                                        <i class="fa fa-cog fa-fw pull-right"></i>
                                            Admin Settings
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
                            <img src="getProfilePhoto.htm"  class="img-circle" alt="User Image" id="addProfilePhotoFromDb"
                            onerror="standbyPic($('#addProfilePhotoFromDb'));"/>
                        </div>
                        <div class="pull-left info">
                            <p>Hello,&nbsp;
									<label id="addUserProfileFirstNameLabelId"></label></p>

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
                                <li >
		                            <a href="home.htm">
		                                <i class="fa fa-dashboard"></i> <span>Home</span>
		                            </a>
		                        </li>
		                        <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
		                        <li>
		                            <a href="${pageContext.request.contextPath}/membershipRegistration.htm">
		                                <i class="fa fa-gavel"></i> <span>Register</span>
		                            </a>
		                        </li>
								</sec:authorize>
								<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
		                        <li>
		                            <a href="${pageContext.request.contextPath}/manageContent.htm">
		                                <i class="fa fa-globe"></i> <span>Contents</span>
		                            </a>
		                        </li>
								</sec:authorize>
								<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
		                        <li>
		                            <a href="${pageContext.request.contextPath}/getAllSlots.htm">
		                                <i class="fa fa-glass"></i> <span>Slots</span>
		                            </a>
		                        </li>   
		                        </sec:authorize>
		                        <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
			                        <li>
			                            <a href="${pageContext.request.contextPath}/manageSchedule.htm">
			                                <i class="fa fa-dashboard"></i> <span>Booking</span>
			                            </a>
			                        </li>
                                 </sec:authorize>
                                 
                                 <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
			                        <li>
			                            <a href="${pageContext.request.contextPath}/reschedule.htm">
			                                <i class="fa fa-gavel"></i> <span>Reschedule</span>
			                            </a>
			                        </li>
                                 </sec:authorize>
                                 
                                 <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER','ROLE_SUPPLIER')">
                                 <li>
			                            <a href="${pageContext.request.contextPath}/slotsQueue.htm">
			                                <i class="fa fa-globe"></i> <span>Slots Queue</span>
			                            </a>
			                        </li>
			                        </sec:authorize>
			                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER','ROLE_SUPPLIER')">
			                        <li>
			                            <a href="${pageContext.request.contextPath}/queueStatus.htm">
			                                <i class="fa fa-glass"></i> <span>Queue Status</span>
			                            </a>
			                        </li>
			                        </sec:authorize>
			                        <li  class="active">
			                            <a href="${pageContext.request.contextPath}/uploadProfilePhoto.htm">
			                                <i class="fa fa-dashboard"></i> <span>Upload Photo</span>
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
                      <div class="col-md-12">
                          <section class="panel">
                              <header class="panel-heading">
                                  Upload Profile Picture
                              </header>
                              <div class="panel-body">
                              <div id="addProfilePhotoErrorMessage" style="color: red"></div>
                                  
                                  	 <div class="form-group">
                                          <label for="uploadPersonProfileImage" class="col-lg-2 col-sm-2 control-label">
										  Profile&nbsp;Picture<font color="red">&nbsp;*</font></label>
										<div class="col-lg-10">
											<form  action="profilePictureUpload.htm" id="uploadPersonProfileImage" method="post"
											             enctype="multipart/form-data">
		              							<div class="col-md-8 form-group">
		                                            <input name="file" type="file" id="file-upload" class="btn btn-primary form-control" />
		                                            <label for="file-upload" class="custom-file-upload btn btn-primary form-control">
													    <i class="fa fa-cloud-upload"></i> Select Photo
													</label>
													<p class="help-block">Browse a photo and click Upload.</p>
		                                        </div>
		                                        <div class="col-md-2 form-group">
		                                            <input type="submit" value="Upload" class="btn btn-success form-control"/>
		                                        </div>
							            </form>
									</div>
                                  </div>    
                                     
                                 <form class="form-horizontal tasi-form" role="form" id="add_profilePhotoForm">
                                      <div class="form-group" style="height: 500px;">
                                          <div class="col-lg-offset-2 col-lg-10">
                                          	  <button type="submit" class="btn btn-info" id="addProfilePictureSubmitButton">Submit</button>
                                              <button type="button" class="btn btn-danger" id="addProfilePictureCancelButton">Cancel</button>
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
               Copyright &copy The Expendables, 2017
            </div>
        </div><!-- ./wrapper -->
        
		<!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
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
        	 $("#addProfilePictureCancelButton").click(function(){
              	  $.ajax({
              	       url: 'demo.htm',
              	       success: function(data) {
              	    	   $(location).attr('href', 'demo.htm');
              	       }
              	    });
              });
        	 
        		        		 
        		 populatePrincipalDetails($("#addUserProfileFullNameLabelId"),$("#addUserProfileFirstNameLabelId"));
        		 
        			var validator = $("#add_profilePhotoForm").validate({
        				meta : "validate", 
        				submitHandler : function() {
        					$("#addProfilePhotoErrorMessage").html("");
        					
        					
        					var diagrams = $('#add_profilePhotoForm').serializeObject();
        					
        						$.postJSON("saveProfilePhoto.htm", diagrams, function(data) {
        							var i = 0;
          							var success=true;
          							var messages = "";
    	      						for (i = 0; i < data.length; i++) {
    	      							messages += data[i].message;
    	      						}
    	      						$("#addProfilePhotoErrorMessage").html(messages);							
        						});
        						$('html,body').animate({
        	 				        scrollTop: $(".navbar-right").offset().top},
        	 				        'slow');
        				return false;
        				}
        			  }); 
        			
        });
        
        </script>
    </body>
</html>
