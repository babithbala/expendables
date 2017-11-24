<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expendables | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- bootstrap 3.0.2 -->
    <link href="/Expendables/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- font Awesome -->
    <link href="/Expendables/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- Ionicons -->
    <link href="/Expendables/css/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <!-- Morris chart -->
    <link href="/Expendables/css/morris/morris.css" rel="stylesheet" type="text/css"/>
    <!-- jvectormap -->
    <link href="/Expendables/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css"/>
    <!-- Date Picker -->
    <link href="/Expendables/css/datepicker/datepicker3.css" rel="stylesheet" type="text/css"/>
    <!-- fullCalendar -->
    <!-- <link href="css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" /> -->
    <!-- Daterange picker -->
    <link href="/Expendables/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/>
    <!-- iCheck for checkboxes and radio inputs -->
    <link href="/Expendables/css/iCheck/all.css" rel="stylesheet" type="text/css"/>
    <!-- bootstrap wysihtml5 - text editor -->
    <!-- <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="/Expendables/css/style.css" rel="stylesheet" type="text/css"/>
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
                        <img src="/Expendables/images/uk.png" style="width: 20px;" alt="EN">
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
                                                                                                      "badge pull-right">11</span>
                                FAQ</a>
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
                            <a href="Expendables/j_spring_security_logout"><i class="fa fa-ban fa-fw pull-right"></i>
                                Logout</a>
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
                                        <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i
                                                class="fa fa-search"></i></button>
                                    </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="active">
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
        <div class="container">
            <h2>Unloading point</h2>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Truck number</th>
                    <th>Status</th>
                    <th>Duration</th>
                    <th>Next unloading point</th>
                    <th>Arrival time</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>DW3456U</td>
                    <td>Unloading</td>
                    <td>3.5 minutes</td>
                    <td>2</td>
                    <td>arrived</td>
                </tr>
                <tr>
                    <td>DW3456U</td>
                    <td>Waiting</td>
                    <td>3.5 minutes</td>
                    <td>Exit gateway</td>
                    <td>11:25</td>
                </tr>
                <tr>
                    <td>DW3456U</td>
                    <td>In ways</td>
                    <td>-</td>
                    <td>-</td>
                    <td>13:25</td>
                </tr>
                </tbody>
            </table>
        </div>
        <!-- Main content -->

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
                <h4 class="modal-title"><img alt="" src="/Expendables/img/images.png" style="width: 190px;">Event
                    Details</h4>
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


</body>
</html>