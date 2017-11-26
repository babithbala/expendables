<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Schedule</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
    <!-- bootstrap 3.0.2 -->
    <link href="/Expendables/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- font Awesome -->
    <link href="/Expendables/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- Ionicons -->
    <link href="/Expendables/css/ionicons.min.css" rel="stylesheet" type="text/css"/>

    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="/Expendables/css/style.css" rel="stylesheet" type="text/css"/>

    <link rel="stylesheet" href="/Expendables/jQuery/themes/bs/jquery-ui.css">
    <link rel="stylesheet" href="/Expendables/css/validation.css">

    <link rel="stylesheet" href="/Expendables/jqwidgets/styles/jqx.base.css" type="text/css"/>

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
                                            <div class="progress-bar progress-bar-success" style="width: 20%"
                                                 role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                 aria-valuemax="100">
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
                                            <div class="progress-bar progress-bar-danger" style="width: 40%"
                                                 role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                 aria-valuemax="100">
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
                                            <div class="progress-bar progress-bar-info" style="width: 60%"
                                                 role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                 aria-valuemax="100">
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
                                            <div class="progress-bar progress-bar-warning" style="width: 80%"
                                                 role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                 aria-valuemax="100">
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
                        <span><label id="addNewUserFullNameLabelId"></label>
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
                                                                                                      "badge pull-right">11</span>
                                FAQ</a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="profile.htm">
                                <i class="fa fa-user fa-fw pull-right"></i>
                                Profile
                            </a>
                            <sec:authorize
                                    access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN','ROLE_NURSE', 'ROLE_PHYSICIAN','ROLE_PATIENT')">
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
                            Schedule Application Form
                        </header>
                        <div class="panel-body">
                            <div id="addMembershipRegErrorMessage" style="color: red"></div>
                            <form class="form-horizontal tasi-form" role="form" id="scheduleForm" name="scheduleForm">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label col-lg-2" for="contents">Contents</label>
                                    <div class="col-lg-10">
                                        <c:forEach var="content" items="${contents}">
                                            <label class="checkbox-inline">
                                                <input type="checkbox"
                                                       value="${content.content_name}"
                                                       onclick="contentCheckBox(event)"
                                                       name="contentCheckbox"><c:out
                                                    value=" ${content.content_name}"/>
                                            </label>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div id="packagesDiv" class="form-group"></div>
                                <div id="packagesDateDiv" class="form-group"></div>
                                <div id="proceedToBookingDiv" class="form-group">
                                    <label class="col-sm-2 control-label col-lg-2">&nbsp;</label>
                                    <div class="col-lg-10">
                                        <label class="checkbox-inline">
                                            <input type="checkbox" value="proceed_to_book"
                                                   id="proceedToBookingCheckbox"
                                                   onclick="proceedToBook(event)">Proceed to book
                                        </label>
                                    </div>
                                </div>
                                <div id="bookingSlotsDiv">BOOKING SLOTS:)
                                    <div id="scheduler"></div>
                                </div>
                                <p>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-8">
                                        <button type="submit" class="btn btn-info" id="memebershipRegSubmitButton">
                                            Submit
                                        </button>
                                        <button type="button" class="btn btn-danger" id="memebershipRegCancelButton">
                                            Cancel
                                        </button>
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
<script type="text/javascript" src="/Expendables/jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxbuttons.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxscrollbar.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxdata.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxdate.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxscheduler.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxscheduler.api.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxdatetimeinput.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxmenu.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxcalendar.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxtooltip.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxwindow.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxcheckbox.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxlistbox.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxdropdownlist.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxnumberinput.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxradiobutton.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/jqxinput.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/globalization/globalize.js"></script>
<script type="text/javascript" src="/Expendables/jqwidgets/globalization/globalize.culture.de-DE.js"></script>
<script type="text/javascript" src="/Expendables/scripts/demos.js"></script>

<script type="text/javascript">

    var appointments = new Array();
    var appointment1 = {
        id: "id1",
        description: "George brings projector for presentations.",
        location: "",
        subject: "Quarterly Project Review Meeting",
        calendar: "Room 1",
        start: new Date(2015, 10, 23, 9, 0, 0),
        end: new Date(2015, 10, 23, 16, 0, 0)
    }
    var appointment2 = {
        id: "id2",
        description: "",
        location: "",
        subject: "IT Group Mtg.",
        calendar: "Room 2",
        start: new Date(2015, 10, 24, 10, 0, 0),
        end: new Date(2015, 10, 24, 15, 0, 0)
    }
    var appointment3 = {
        id: "id3",
        description: "",
        location: "",
        subject: "Course Social Media",
        calendar: "Room 3",
        start: new Date(2015, 10, 27, 11, 0, 0),
        end: new Date(2015, 10, 27, 13, 0, 0)
    }
    var appointment4 = {
        id: "id4",
        description: "",
        location: "",
        subject: "New Projects Planning",
        calendar: "Room 2",
        start: new Date(2015, 10, 23, 16, 0, 0),
        end: new Date(2015, 10, 23, 18, 0, 0)
    }
    var appointment5 = {
        id: "id5",
        description: "",
        location: "",
        subject: "Interview with James",
        calendar: "Room 1",
        start: new Date(2015, 10, 25, 15, 0, 0),
        end: new Date(2015, 10, 25, 17, 0, 0)
    }
    var appointment6 = {
        id: "id6",
        description: "",
        location: "",
        subject: "Interview with Nancy",
        calendar: "Room 4",
        start: new Date(2015, 10, 26, 14, 0, 0),
        end: new Date(2015, 10, 26, 16, 0, 0)
    }
    appointments.push(appointment1);
    appointments.push(appointment2);
    appointments.push(appointment3);
    appointments.push(appointment4);
    appointments.push(appointment5);
    appointments.push(appointment6);
    // prepare the data
    var source =
        {
            dataType: "array",
            dataFields: [
                { name: 'id', type: 'string' },
                { name: 'description', type: 'string' },
                { name: 'location', type: 'string' },
                { name: 'subject', type: 'string' },
                { name: 'calendar', type: 'string' },
                { name: 'start', type: 'date' },
                { name: 'end', type: 'date' }
            ],
            id: 'id',
            localData: appointments
        };
    var adapter = new $.jqx.dataAdapter(source);
    $("#scheduler").jqxScheduler({
        date: new $.jqx.date(2015, 11, 23),
        width: 700,
        height: 500,
        source: adapter,
        view: 'dayView',
        showLegend: false,
        ready: function () {
            $("#scheduler").jqxScheduler('ensureAppointmentVisible', 'id1');
        },
        resources:
            {
                colorScheme: "scheme05",
                dataField: "calendar",
                source: new $.jqx.dataAdapter(source)
            },
        appointmentDataFields:
            {
                from: "start",
                to: "end",
                id: "id",
                description: "description",
                location: "place",
                subject: "subject",
                resourceId: "calendar"
            },
        views:
            [
                'dayView',
                'weekView',
                'monthView'
            ]
    });


    var selectedCheckboxesArray = [];

    function proceedToBook(ev) {
        var checkedValue = document.getElementById("proceedToBookingCheckbox").checked;
        if (checkedValue) {
            $("#bookingSlotsDiv").show();
            printPackagesDatesDivData();
        } else {
            $("#bookingSlotsDiv").hide();
        }
    }

    function contentCheckBox(ev) {
        selectedCheckboxesArray = [];
        var group = document.getElementsByName("contentCheckbox");

        for (var i = 0; i < group.length; i++) {
            var current = group[i];
            var currElementCheckVal = current.checked;
            if (currElementCheckVal && !selectedCheckboxesArray.includes(current)) {
                selectedCheckboxesArray.push(current);
            } else {
                var removeIndex = selectedCheckboxesArray.indexOf(current);
                if (removeIndex > 0) {
                    selectedCheckboxesArray.splice(removeIndex, 1);
                }
            }
        }
        //hide&display other div elements
        if (selectedCheckboxesArray.length > 0) {
            //display the packagesDiv content
            printpackagesDivData();
        } else {
            $("#packagesDiv").hide();
            $("#packagesDateDiv").hide();
            $("#proceedToBookingDiv").hide();
            $("#bookingSlotsDiv").hide();
            checkedValue = document.getElementById("proceedToBookingCheckbox").checked = false;
        }
    }


    function printpackagesDivData() {
        $("#packagesDiv").show();
        $("#packagesDiv").empty();
        var parentDiv = document.getElementById('packagesDiv');
        var title = document.createElement('label');
        title.setAttribute('class', 'col-sm-2 control-label col-lg-2');
        title.innerHTML = 'Packages';
        parentDiv.appendChild(title);
        var childDiv = document.createElement('div');
        childDiv.setAttribute('class', 'col-lg-10');
        parentDiv.appendChild(childDiv);
        for (var i = 0; i < selectedCheckboxesArray.length; i++) {
            var currElementVal = selectedCheckboxesArray[i].value;
            var childLabel = document.createElement('label');
            childLabel.setAttribute('class', 'col-lg-2 col-sm-2 control-label');
            childLabel.innerHTML = currElementVal;
            childDiv.appendChild(childLabel);
            var childTextField = document.createElement('INPUT');
            childTextField.setAttribute('type', 'text');
            childTextField.setAttribute('class', 'form-control round-input');
            childDiv.appendChild(childTextField);
        }
        printPackagesDatesDivData();
    }

    function printPackagesDatesDivData() {
        $("#proceedToBookingDiv").show();
        $("#packagesDateDiv").show();
        $("#packagesDateDiv").empty();
        var parentDiv = document.getElementById('packagesDateDiv');
        var title = document.createElement('label');
        title.setAttribute('class', 'col-sm-2 control-label col-lg-2');
        title.innerHTML = 'Booking Date';
        parentDiv.appendChild(title);
        var childDiv = document.createElement('div');
        childDiv.setAttribute('class', 'col-lg-10');
        parentDiv.appendChild(childDiv);
        for (var i = 0; i < selectedCheckboxesArray.length; i++) {
            var currElementVal = selectedCheckboxesArray[i].value;
            var div = document.createElement('div');
            var childLabel = document.createElement('label');
            childLabel.setAttribute('class', 'col-lg-2 col-sm-2 control-label');
            childLabel.innerHTML = currElementVal;
            childDiv.appendChild(childLabel);
            var childTextField = document.createElement('INPUT');
            childTextField.setAttribute('type', 'text');
            childTextField.setAttribute('class', 'form-control round-input');
            childTextField.setAttribute('readonly', 'true');
            childTextField.setAttribute('id', 'datepicker_' + currElementVal);
            childDiv.appendChild(childTextField);
            $("#datepicker_" + currElementVal).datepicker({
                dateFormat: "dd-mm-yy"
            });
        }
    }

    $(function () {

        <!-- INITIALLY HIDE SOME AREAS -->
        $("#packagesDiv").hide();
        $("#packagesDateDiv").hide();
        $("#proceedToBookingDiv").hide();
        $("#bookingSlotsDiv").hide();

        $("#memebershipRegCancelButton").click(function () {
            $.ajax({
                url: 'userHome.htm',
                success: function (data) {
                    $(location).attr('href', 'userHome.htm');
                }
            });
        });


        var validator = $("#membershipRegForm").validate({
            meta: "validate",
            rules: {
                userName: {
                    required: true,
                    minlength: 4,
                    maxlength: 15
                },
                firstName: {
                    required: true,
                    minlength: 3,
                    maxlength: 25,
                    lettersonly: true
                },
                lastName: {
                    required: true,
                    minlength: 3,
                    maxlength: 25,
                    lettersonly: true
                },
                password: {
                    required: true,
                    minlength: 4,
                    maxlength: 15
                },
                confirmPassword: {
                    required: true,
                    minlength: 4,
                    maxlength: 15,
                    equalTo: "#membershipInputPassword"
                },
                sex: {
                    required: true
                },
                dob: {
                    dateBS: true,
                    required: true
                },
                email: {
                    email: true
                },
                streetNo: {
                    required: function () {
                        return $.trim($('#membershipInputStreetName').val()) != "" ||
                            $.trim($('#membershipInputCityName').val()) != "" ||
                            $.trim($('#membershipInputCountryCode').val()) != "" ||
                            $.trim($('#membershipInputStateName').val()) != "";
                    }
                },
                streetName: {
                    required: function () {
                        return $.trim($('#membershipInputStreetNo').val()) != "" ||
                            $.trim($('#membershipInputCityName').val()) != "" ||
                            $.trim($('#membershipInputCountryCode').val()) != "" ||
                            $.trim($('#membershipInputStateName').val()) != "";
                    }
                },
                city: {
                    required: function () {
                        return $.trim($('#membershipInputStreetNo').val()) != "" ||
                            $.trim($('#membershipInputStreetName').val()) != "" ||
                            $.trim($('#membershipInputCountryCode').val()) != "" ||
                            $.trim($('#membershipInputStateName').val()) != "";
                    }
                },
                state: {
                    required: function () {
                        return $.trim($('#membershipInputStreetNo').val()) != "" ||
                            $.trim($('#membershipInputStreetName').val()) != "" ||
                            $.trim($('#membershipInputCountryCode').val()) != "" ||
                            $.trim($('#membershipInputCityName').val()) != "";
                    }
                },
                country: {
                    required: function () {
                        return $.trim($('#membershipInputStreetNo').val()) != "" ||
                            $.trim($('#membershipInputStreetName').val()) != "" ||
                            $.trim($('#membershipInputStateName').val()) != "" ||
                            $.trim($('#membershipInputCityName').val()) != "";
                    }
                },
                role: {
                    required: true
                }
            },
            messages: {
                userName: {
                    required: "Please enter Username.",
                    minlength: "Username must be minimum 4 characters.",
                    maxlength: "Username must be maximum 15 characters."
                },
                firstName: {
                    required: "Please enter First Name.",
                    minlength: "FirstName must be minimum 3 characters.",
                    maxlength: "FirstName must be maximum 25 characters.",
                    lettersonly: "Please enter Letters only for FirstName."
                },
                lastName: {
                    required: "Please enter Last Name.",
                    minlength: "LastName must be minimum 3 characters.",
                    maxlength: "LastName must be maximum 25 characters.",
                    lettersonly: "Please enter Letters only for LastName."
                },
                password: {
                    required: "Password is required",
                    minlength: "Password must be minimum 4 characters.",
                    maxlength: "Password must be maximum 15 characters."
                },
                confirmPassword: {
                    required: "Confirm Password is required.",
                    minlength: "Must be minimum 4 characters.",
                    maxlength: "Must be maximum 15 characters.",
                    equalTo: "Password and Confirm Password do not Match."
                },
                sex: {
                    required: "Please select Sex."
                },
                dob: {
                    dateBS: "Please enter a valid DOB.",
                    required: "Please enter DOB."
                },
                email: {
                    email: "Enter a valid Email."
                },
                streetNo: {
                    required: "Please enter Street No."
                },
                streetName: {
                    required: "Please enter Street Name."
                },
                city: {
                    required: "Please enter City."
                },
                state: {
                    required: "Please enter State."
                },
                country: {
                    required: "Please enter Country."
                },
                role: {
                    required: "Please select User Role."
                }
            },
            submitHandler: function () {
                $("#addMembershipRegErrorMessage").html("");
                var user = $('#membershipRegForm').serializeObject();
                alert("user.password" + user.password);
                user.password = trim(user.password);
                user.confirmPassword = trim(user.confirmPassword);
                user.dob = formatDate(user.dob);
                $.postJSON("saveOrUpdateNewUserDetails.htm", user, function (data) {
                    displayUserAddMsg(data);
                });
                $('html,body').animate({
                        scrollTop: $(".navbar-right").offset().top
                    },
                    'slow');
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
