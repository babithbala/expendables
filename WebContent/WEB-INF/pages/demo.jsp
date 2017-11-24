<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expendables | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- bootstrap 3.0.2 -->
    <link href="/Expendables/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="/Expendables/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="/Expendables/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="/Expendables/css/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="/Expendables/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="/Expendables/css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- fullCalendar -->
    <!-- <link href="css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" /> -->
    <!-- Daterange picker -->
    <link href="/Expendables/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- iCheck for checkboxes and radio inputs -->
    <link href="/Expendables/css/iCheck/all.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <!-- <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="/Expendables/css/style.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="/Expendables/jQuery/themes/bs/jquery-ui.css" type="text/css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->

          <style type="text/css">
				table.ui-datepicker-calendar tbody td.highlightLow > a {
				    background: repeat-x scroll 50% bottom #5bc0de;
				    color: #363636;
				    border: 1px solid #5bc0de;
				}
				table.ui-datepicker-calendar tbody td.highlightMedium > a {
				    background: repeat-x scroll 50% bottom #5cb85c;
				    color: #363636;
				    border: 1px solid #5cb85c;
				}
				table.ui-datepicker-calendar tbody td.highlightHigh > a {
				    background: repeat-x scroll 50% bottom #d9534f;
				    color: #363636;
				    border: 1px solid #d9534f;
				}
			</style>
      </head>
      <body class="skin-black">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="home.htm" class="logo">
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
                        <!-- English -->
                    	<li id="englishLangSC">
                    	<a href="?lang=en">
                    	<img src="/Expendables/images/uk.png" style="width: 20px;" alt="EN" >
                            </a>
                    	</li>
                    	<!-- Polish -->
                    	<li id="polishLangSC">
                    	<a href="?lang=pl">
                    	<img src="/Expendables/images/pl.png" style="width: 20px;" alt="PL">
                            </a>
                    	</li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user"></i>
                                <span>Jane Doe <i class="caret"></i></span>
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
                                        <a href="#">
                                        <i class="fa fa-user fa-fw pull-right"></i>
                                            Profile
                                        </a>
                                        <a data-toggle="modal" href="#modal-user-settings">
                                        <i class="fa fa-cog fa-fw pull-right"></i>
                                            Settings
                                        </a>
                                        </li>

                                        <li class="divider"></li>

                                        <li>
                                            <a href="Expendables/j_spring_security_logout"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
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
                                    <img src="getProfilePhoto.htm" class="img-circle" id="indexWelcomeProfilePic"
                                    alt="User Image" onerror="standbyPic($('#indexWelcomeProfilePic'));"/>
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
                            </ul>
                        </section>
                        <!-- /.sidebar -->
                    </aside>

                    <aside class="right-side">

                <!-- Main content -->
                <section class="content">

                    <div class="row" style="margin-bottom:5px;">


                        <div class="col-md-3">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-red"><i class="fa fa-check-square-o"></i></span>
                                <div class="sm-st-info">
                                    <span>3200</span>
                                    Total Tasks
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-violet"><i class="fa fa-envelope-o"></i></span>
                                <div class="sm-st-info">
                                    <span>2200</span>
                                    Total Messages
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-blue"><i class="fa fa-dollar"></i></span>
                                <div class="sm-st-info">
                                    <span>100,320</span>
                                    Total Profit
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-green"><i class="fa fa-paperclip"></i></span>
                                <div class="sm-st-info">
                                    <span>4567</span>
                                    Total Documents
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Main row -->
                    <div class="row">

                        <div class="col-md-8">
                            <!--earning graph start-->
                            <section class="panel">
                                <header class="panel-heading">
                                    Earning Graph
                                </header>
                                <div class="panel-body">
                                    <canvas id="linechart" width="600" height="330"></canvas>
                                </div>
                                        </section>
                                        <!--earning graph end-->

                                    </div>
                                    <div class="col-lg-4">

                                        <!--chat start-->
                                        <section class="panel">
                                            <header class="panel-heading">
                                                Notifications
                                            </header>
                                                <div class="panel-body" id="noti-box">

                                                    <div class="alert alert-block alert-danger">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Oh snap!</strong> Change a few things up and try submitting again.
                                                    </div>
                                                    <div class="alert alert-success">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Well done!</strong> You successfully read this important alert message.
                                                    </div>
                                                    <div class="alert alert-info">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                                                    </div>
                                                    <div class="alert alert-warning">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Warning!</strong> Best check yo self, you're not looking too good.
                                                    </div>


                                                    <div class="alert alert-block alert-danger">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Oh snap!</strong> Change a few things up and try submitting again.
                                                    </div>
                                                    <div class="alert alert-success">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Well done!</strong> You successfully read this important alert message.
                                                    </div>
                                                    <div class="alert alert-info">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                                                    </div>
                                                    <div class="alert alert-warning">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Warning!</strong> Best check yo self, you're not looking too good.
                                                    </div>



                                                </div>
                                        </section>



                      </div>


                  </div>
                    <div class="row">

                        <div class="col-md-8">
                            <section class="panel">
                              <header class="panel-heading">
                                  Work Progress
                            </header>
                            <div class="panel-body table-responsive">
                                <table class="table table-hover">
                                  <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Project</th>
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


          </div><!--end col-6 -->
          <div class="col-md-4">
            <section class="panel">
                <header class="panel-heading">
                    Twitter Feed
                </header>
                <div class="panel-body">
                    <div class="twt-area">
                        <form action="#" method="post">
                            <textarea class="form-control" name="profile-tweet" placeholder="Share something on Twitter.." rows="3"></textarea>

                            <div class="clearfix">
                                <button class="btn btn-sm btn-primary pull-right" type="submit">
                                    <i class="fa fa-twitter"></i>
                                    Tweet
                                </button>
                                <a class="btn btn-link btn-icon fa fa-location-arrow" data-original-title="Add Location" data-placement="bottom" data-toggle="tooltip" href=
                                "#" style="text-decoration:none;" title=""></a>
                                <a class="btn btn-link btn-icon fa fa-camera" data-original-title="Add Photo" data-placement="bottom" data-toggle="tooltip" href="#"
                                style="text-decoration:none;" title=""></a>
                            </div>
                        </form>
                    </div>
                    <ul class="media-list">
                        <li class="media">
                            <a href="#" class="pull-left">
                                <img src="img/26115.jpg" alt="Avatar" class="img-circle" width="64" height="64">
                            </a>
                            <div class="media-body">
                                <span class="text-muted pull-right">
                                    <small><em>30 min ago</em></small>
                                </span>
                                <a href="page_ready_user_profile.php">
                                    <strong>John Doe</strong>
                                </a>
                                <p>
                                    In hac <a href="#">habitasse</a> platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend.
                                    <a href="#" class="text-danger">
                                        <strong>#dev</strong>
                                    </a>
                                </p>
                            </div>
                        </li>
                        <li class="media">
                            <a href="#" class="pull-left">
                                <img src="img/26115.jpg" alt="Avatar" class="img-circle" width="64" height="64">
                            </a>
                            <div class="media-body">
                                <span class="text-muted pull-right">
                                    <small><em>30 min ago</em></small>
                                </span>
                                <a href="page_ready_user_profile.php">
                                    <strong>John Doe</strong>
                                </a>
                                <p>
                                    In hac <a href="#">habitasse</a> platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend.
                                    <a href="#" class="text-danger">
                                        <strong>#design</strong>
                                    </a>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="panel">
                                <header class="panel-heading">
                                    Teammates
                                </header>

                                <ul class="list-group teammates">
                                    <li class="list-group-item">
                                        <a href=""><img src="img/26115.jpg" width="50" height="50"></a>
                                        <span class="pull-right label label-danger inline m-t-15">Admin</span>
                                        <a href="">Damon Parker</a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href=""><img src="img/26115.jpg"  width="50" height="50"></a>
                                        <span class="pull-right label label-info inline m-t-15">Member</span>
                                        <a href="">Joe Waston</a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href=""><img src="img/26115.jpg"  width="50" height="50"></a>
                                        <span class="pull-right label label-warning inline m-t-15">Editor</span>
                                        <a href="">Jannie Dvis</a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href=""><img src="img/26115.jpg"  width="50" height="50"></a>
                                        <span class="pull-right label label-warning inline m-t-15">Editor</span>
                                        <a href="">Emma Welson</a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href=""><img src="img/26115.jpg"  width="50" height="50"></a>
                                        <span class="pull-right label label-success inline m-t-15">Subscriber</span>
                                        <a href="">Emma Welson</a>
                                    </li>
                                </ul>
                                <div class="panel-footer bg-white">
                                    <!-- <span class="pull-right badge badge-info">32</span> -->
                                    <button class="btn btn-primary btn-addon btn-sm">
                                        <i class="fa fa-plus"></i>
                                        Add Teammate
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                          <section class="panel tasks-widget">
                              <header class="panel-heading">
                                  Todo list
                            </header>
                            <div class="panel-body">

                              <div class="task-content" >

                                  <div id="todoListDatepicker"></div>
                              </div>

                              <div class=" add-task-row">
                                  <a class="btn btn-danger btn-sm pull-left" id= "addNewEventByUserButton" href="addEvent.htm">
                                   <spring:message code="label.AddNewTasks"/></a>
                                  <section class="pull-right">
	                                  <label class="label-danger label inline m-t-15">
	                                  <spring:message code="label.High"/></label>&nbsp;&nbsp;
	                                  <label class="label-success label inline m-t-15">
	                                  <spring:message code="label.Medium"/></label>&nbsp;&nbsp;
	                                  <label class="label-info label inline m-t-15">
	                                  <spring:message code="label.Low"/></label>
	                               </section>
<!--                                   <a class="btn btn-default btn-sm pull-right" href="#">See All Tasks</a> -->
                              </div>
                          </div>
                      </section>
                  </div>
              </div>
              <!-- row end -->
                </section><!-- /.content -->
                <div class="footer-main">
                    Copyright &copy The Expendables, 2017
                </div>
            </aside><!-- /.right-side -->

        </div><!-- ./wrapper -->
   <!-- --------------------------------MODAL DIALOG START-------------------------------- -->
        			<a href="#userEventDialogBoxId" id="userEventDialogBoxClickLink" data-toggle="modal"
        			 class="btn btn-xs btn-success" style="display: none;">Open Event Dialog</a>
							<div aria-hidden="true" aria-labelledby="myModalLabel" 
									role="dialog" tabindex="-1" id="userEventDialogBoxId" class="modal fade">
                                      <div class="modal-dialog">
                                          <div class="modal-content">
                                              <div class="modal-header">
                                                  <button aria-hidden="true" data-dismiss="modal" class="close" type="button">�</button>
                                                  <h4 class="modal-title"><img alt="" src="/Expendables/img/images.png" style="width: 190px;">Event Details</h4>
                                              </div>
                                              <div class="modal-body" id="userEventData">
												  	
                                              </div>
                                          </div>
                                      </div>
                                  </div> 
           <!-- --------------------------------MODAL DIALOG END-------------------------------- -->
           

        <!-- jQuery 2.0.2 -->
        <script src="/Expendables/js/jquery.min.js" type="text/javascript"></script>
         <script src="/Expendables/js/common.js"></script>

         <!-- jQuery UI 1.10.3 -->
        <script src="/Expendables/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <script src="/Expendables/jQuery/ui/jquery-ui.js"></script>
        <script src="/Expendables/jQuery/ui/jquery.ui.core.js"></script>
		<script src="/Expendables/jQuery/ui/jquery.ui.widget.js"></script>
		<script src="/Expendables/jQuery/ui/jquery.ui.resizable.js"></script><!-- added  newly BB-->
		<script src="/Expendables/jQuery/ui/jquery.ui.button.js"></script><!-- added  newly BB-->
		<script src="/Expendables/jQuery/ui/jquery.ui.accordion.js"></script><!-- added  newly BB-->
		<script src="/Expendables/jQuery/ui/jquery.ui.tabs.js"></script><!-- added  newly BB-->
		<script src="/Expendables/jQuery/ui/jquery.ui.menu.js"></script>
		<script src="/Expendables/jQuery/ui/jquery.ui.menubar.js"></script>
		<script src="/Expendables/jQuery/ui/jquery.ui.dialog.js"></script>
        <script src="/Expendables/jQuery/ui/jquery.ui.datepicker.js"></script>
		<script src="/Expendables/jQuery/ui/jquery-ui-timepicker-addon.js"></script>
		<script src="/Expendables/jQuery/jquery.populate.js"></script>
		<script src="/Expendables/jQuery/ui.tabs.closable.js"></script>
		<script src="/Expendables/jQuery/jquery.metadata.js"></script>
		<script src="/Expendables/jQuery/jquery.validate.js"></script>
		<script src="/Expendables/jQuery/additional-methods.js"></script>
		<script src="/Expendables/jQuery/json.min.js"></script>
		<script src="/Expendables/jQuery/jquery.json.js"></script>
		
        <!-- Bootstrap -->
        <script src="/Expendables/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="/Expendables/js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>

        <script src="/Expendables/js/plugins/chart.js" type="text/javascript"></script>

        <!-- datepicker
        <script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>-->
        <!-- Bootstrap WYSIHTML5
        <script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>-->
        <!-- iCheck -->
        <script src="/Expendables/js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <!-- calendar -->
        <script src="/Expendables/js/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>

        <!-- Director App -->
        <script src="/Expendables/js/Director/app.js" type="text/javascript"></script>

        <!-- Director dashboard demo (This is only for demo purposes) -->
        <script src="/Expendables/js/Director/dashboard.js" type="text/javascript"></script>
        
        <!-- jqGrid JS -->
        <script src="/Expendables/jqGrid/i18n/grid.locale-en.js" type="text/javascript"></script>
		<script src="/Expendables/jqGrid/jquery.jqGrid.min.js" type="text/javascript"></script>

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
                height: '400px',
                size: '5px',
                BorderRadius: '5px'
            });

            $('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey').iCheck({
                checkboxClass: 'icheckbox_flat-grey',
                radioClass: 'iradio_flat-grey'
            });
</script>
<script type="text/javascript">
    $(function() {
                "use strict";
                //BAR CHART
                var data = {
                    labels: ["January", "February", "March", "April", "May", "June", "July"],
                    datasets: [
                        {
                            label: "My First dataset",
                            fillColor: "rgba(220,220,220,0.2)",
                            strokeColor: "rgba(220,220,220,1)",
                            pointColor: "rgba(220,220,220,1)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",
                            data: [65, 59, 80, 81, 56, 55, 40]
                        },
                        {
                            label: "My Second dataset",
                            fillColor: "rgba(151,187,205,0.2)",
                            strokeColor: "rgba(151,187,205,1)",
                            pointColor: "rgba(151,187,205,1)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(151,187,205,1)",
                            data: [28, 48, 40, 19, 86, 27, 90]
                        }
                    ]
                };
            new Chart(document.getElementById("linechart").getContext("2d")).Line(data,{
                responsive : true,
                maintainAspectRatio: false,
            });

            
            
			var events="";
            
            $.ajax({
         		  url: "getUserEvents.htm",
         		  dataType: 'json',
         		  cache: false,
          	  	  success: function(data) {
          	  		  	events = data;
          	  			populateCalendar(events);
         				}
         		});

         	function convertDate(inputFormat) {
         	   function pad(s) { return (s < 10) ? '0' + s : s; }
         	   var d = new Date(inputFormat);
         	  return [ pad(d.getMonth()+1),pad(d.getDate()), d.getFullYear()].join('/');
         	 }
             
         	function populateCalendar(events){
         		$( "#todoListDatepicker" ).datepicker({
         		    beforeShowDay: function(date) {
         		    	$(".ui-datepicker").css('font-size', 24);
         		    	$(".ui-datepicker").css('width', '19em');
         		        var result = [true, '', null];
         		        var matching = $.grep(events, function(event) {
         					var temp =convertDate(event.eventDate);
         					//console.log(date.valueOf() + " "+new Date(temp).valueOf() +" "+temp);//05/20/2016
         		            return new Date(temp).valueOf() === date.valueOf();
         		            //return new Date(convertDate(event.eventDate)).valueOf() === date.valueOf();
         		        });
         		        
         				$.each( matching, function( key, event ) {
         					if(event.priority=='L'){
         		            result = [true, 'highlightLow', null];
         					}else if(event.priority=='M'){
         						result = [true, 'highlightMedium', null];
         					}else{
         						result = [true, 'highlightHigh', null];
         					}
         				});
         		        return result;
         		    },
         		    onSelect: function(dateText) {
         		    	console.log(formatEventDate(new Date(dateText)));
         		        var date, selectedDate ,
         					
         		            i = 0,
         		            event = null;
         					var date = new Date(dateText);
         					
         					dateText=((date.getMonth() + 1 < 10)?  '0' + (date.getMonth() + 1) : (date.getMonth() + 1)) + '/' + date.getDate() + '/' +  date.getFullYear();
         					var selectedDate= new Date(dateText);
         		        while (i < events.length && !event) {
         		            var tempText =convertDate(events[i].eventDate);
         		            var tempDate=new Date(tempText);
         		            if (selectedDate.valueOf() === tempDate.valueOf()) {
         		                event = events[i];
         		            }
         		            i++;
         		        }
         		       console.log(selectedDate +"event"+event+".");
         		        if (event) {
         		        	populateAllDateEvents(formatEventDate(new Date(dateText)));
         		            //TO-DO-LIST
         		            // make event an array and insert all events on the selected date there and here you iterate the array and display all events
         		        }
         		        
         		    }
         		});
         	}
         	function formatEventDate(date) {
         	    var d = new Date(date),
         	        month = '' + (d.getMonth() + 1),
         	        day = '' + d.getDate(),
         	        year = d.getFullYear();

         	    if (month.length < 2) month = '0' + month;
         	    if (day.length < 2) day = '0' + day;

         	    return [year, month, day].join('-');
         	}
         	
    		function populateAllDateEvents(date){
    			$.ajax({
           		  url: "populateAllSelectedDateEvents.htm",
           		  dataType: 'json',
           		  data: {
           			  selectedDate: date
           		  },
           		  cache: false,
            	  success: function(data) {
            	  		// $("#userEventDialogBoxId").find("p").html("<h3>"+event.eventName+"</h3><br/>"+event.eventDescription);
        				 //$( "#userEventDialogBoxClickLink" ).click();
        				 createEventDetailsModal(data);
           		  }
           		});
    		}
    		
    		function createEventDetailsModal(event){
    			var eventModelBody="";
    			$.each(event, function(index, item) {
    				
    			
    				eventModelBody=eventModelBody.concat('<div class="form-group">'+
    			     '<label for="modalEventLabel"'+index+'" class="col-lg-2 col-sm-2 control-label">Event&nbsp;Name</label>'+
	    			     '<div class="col-lg-10">'+
	    			         '<label id="modalEventLabel"'+index+'"  class="col-lg-10 col-sm-10 control-label">'+item.eventName+'</label>'+
	    			     '</div>'+
    				' </div>'+
    				'<div class="form-group">'+
		   			     '<label for="modalEventLabel"'+index+'" class="col-lg-2 col-sm-2 control-label">Description</label>'+
			    			     '<div class="col-lg-10">'+
			    			         '<label id="modalEventLabel"'+index+'"  class="col-lg-10 col-sm-10 control-label">'+item.eventDescription+'</label>'+
			    			     '</div>'+
		   			' </div>'+
		   			'<div class="form-group">'+
	   			     		'<label for="modalEventLabel"'+index+'" class="col-lg-2 col-sm-2 control-label">Priority</label>'+
			    			     '<div class="col-lg-10">'+
			    			         '<label id="modalEventLabel"'+index+'"  class="col-lg-10 col-sm-10 control-label">'+item.priority+'</label>'+
			    			     '</div>'+
	   				' </div>'+
		   			'<div class="form-group">'+
			     		'<label for="modalEventLabel"'+index+'" class="col-lg-2 col-sm-2 control-label">Date&nbsp;&&nbsp;Time</label>'+
			    			     '<div class="col-lg-10">'+
			    			         '<label id="modalEventLabel"'+index+'"  class="col-lg-10 col-sm-10 control-label">'+item.eventDate+' '+item.eventTime+'</label>'+
			    			     '</div>'+
					' </div>'+
		   			'<div class="form-group">'+
			     		'<label for="modalEventLabel"'+index+'" class="col-lg-2 col-sm-2 control-label">Location</label>'+
			    			     '<div class="col-lg-10">'+
			    			         '<label id="modalEventLabel"'+index+'"  class="col-lg-10 col-sm-10 control-label">'+(item.streetName.length>0 ? item.streetName: "&nbsp;")+'</label>'+
			    			     '</div>'+
					' </div> <hr class="modal-header">'					
   				);
    				
    			});
    			
    			$("#userEventDialogBoxId >.modal-dialog>.modal-content .modal-body").html(eventModelBody);
    			$( "#userEventDialogBoxClickLink" ).click();
    		}
    		
    		
    		
            });
            // Chart.defaults.global.responsive = true;
</script>
</body>
</html>