<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expendables</title>
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

     <link rel="stylesheet" href="/Expendables/jQuery/themes/bs/jquery-ui.css">
    <link rel="stylesheet" href="/Expendables/css/validation.css">

<link rel="stylesheet" href="/Expendables/jqwidgets/styles/jqx.base.css" type="text/css" />
		


    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script src="/Expendables/js/common.js"></script>
<!-- jqGrid CSS -->
<link rel="stylesheet" type="text/css" media="screen"
	href="/Expendables/jqGrid/css/ui.jqgrid.css" />

<style type="text/css">
.ui-jqgrid tr.jqgrow td {
	word-wrap: break-word; /* IE 5.5+ and CSS3 */
	white-space: pre-wrap; /* CSS3 */
	white-space: -moz-pre-wrap; /* Mozilla, since 1999 */
	white-space: -pre-wrap; /* Opera 4-6 */
	white-space: -o-pre-wrap; /* Opera 7 */
	overflow: hidden;
	height: auto;
	vertical-align: middle;
	padding-top: 3px;
	padding-bottom: 3px
}

.myAltRowClass {
	background-color: #DDDDDD;
	background-image: none;
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
                                            <img src="img/avatar5.png" class="img-circle" alt="User Image"/>
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
                        <span><label id="addNewEventUserFullNameLabelId"></label>
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
                    <img src="getProfilePhoto.htm" class="img-circle" id="addEventWelcomeProfilePic"
                         alt="User Image" onerror="standbyPic($('#addEventWelcomeProfilePic'));"/>
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
                <li  >
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
		                        <li  class="active">
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
			                        <li>
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
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Slot Queue
                        </header>
                        <div class="panel-body">
                            <div id="addSlot" style="color: red"></div>
                            <form class="form-horizontal tasi-form" role="form" id="addSlotForm">
                                <div class="form-group">
										<label for="addEventInputSlot"
											class="col-lg-2 col-sm-2 control-label">Slot<font
											color="red">&nbsp;*</font></label>
										<div class="col-lg-6">
											<select class="form-control m-b-10" id="addEventInputEventPriority"
                                                name="slot">
                                            <option value="" selected="selected">Select One</option>
                                            <option value="14">SLOT-1</option>
                                            <option value="15">SLOT2</option>
                                        </select>
										</div>
									</div>

                                
                                
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button type="button" class="btn btn-info" id="addEventInputEventSubmitButton">
                                            Search
                                        </button>
                                        <button type="button" class="btn btn-danger"
                                                id="addEventInputEventCancelButton">Cancel
                                        </button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </section>
                </div>
            </div>
            
        </section><!-- /.content -->
        
        <section class="content">
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> Slot Queue Results </header>
							<div class="panel-body">
							
							 <div class="row">
                        <div class="col-md-6" id="slot1Div">
                            <div class="panel">
                            <header class="panel-heading"> Slot-1 </header>
                                <div id="slot1scheduler"></div>
                            </div>
                        </div>
                        <div class="col-md-6" id="slot2Div">
                          <div class="panel">
                          <header class="panel-heading"> Slot2 </header>
                                <div id="slot2scheduler"></div>
                            </div>
                  </div>
              </div>


							</div>
							

						</section>
					</div>
				</div>
			</section>
    </aside><!-- /.right-side -->
    <div class="footer-main">
        Copyright &copy The Expendables, 2017
    </div>
</div><!-- ./wrapper -->


<script src="/Expendables/js/jquery.min.js" type="text/javascript"></script>
<script src="/Expendables/jQuery/ui/jquery-ui.js"></script>
<script src="/Expendables/jQuery/ui/jquery.ui.core.js"></script>
<script src="/Expendables/jQuery/ui/jquery.ui.widget.js"></script>
<script src="/Expendables/jQuery/ui/jquery.ui.dialog.js"></script>
<script src="/Expendables/jQuery/ui/jquery.ui.datepicker.js"></script>
<!-- <script src="/Expendables/js/plugins/bs-datetimepicker/bootstrap-datetimepicker.js"></script> -->
<script src="/Expendables/jQuery/jquery.populate.js"></script>
<script src="/Expendables/jQuery/ui/jquery-ui-timepicker-addon.js"></script>

<script src="/Expendables/jQuery/combobox.js"></script>	
<script src="/Expendables/jQuery/jquery.validate.js"></script>
<script src="/Expendables/jQuery/additional-methods.js"></script>
<script src="/Expendables/jQuery/json.min.js"></script>
<script src="/Expendables/jQuery/jquery.json.js"></script>


<!-- jqGrid JS -->
	<script src="/Expendables/jqGrid/i18n/grid.locale-en.js"
		type="text/javascript"></script>
	<script src="/Expendables/jqGrid/jquery.jqGrid.min.js"
		type="text/javascript"></script>
<!-- Bootstrap -->
<script src="/Expendables/js/bootstrap.min.js" type="text/javascript"></script>
<!-- Director App -->
<script src="/Expendables/js/Director/app.js" type="text/javascript"></script>



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
    $(function () {
        $("#deleteSlotButton").click(function () {
            $.ajax({
                type: "DELETE",
                url: '/slot/remove/#tableSlotName',
                success: function () {
                    $(location).attr('', '/slot/remove/#tableSlotName');
                }
            });
        });
    });

    $(function () {
        $("#addEventInputEventCancelButton").click(function () {
            $.ajax({
                url: 'demo.htm',
                success: function (data) {
                    $(location).attr('href', 'demo.htm');
                }
            });
        });

        
         
        $('#addSlotInputStartDate').timepicker({showSecond: true, timeFormat: 'hh:mm:ss'});

        $('#addSlotInputEndDate').timepicker({showSecond: true, timeFormat: 'hh:mm:ss'});
       // $("#addEventInputSlot" ).combobox();
//         $.ajax({
// 			url : 'getAllSlotDetails.htm',
// 			dataType : 'json',
// 			cache : false,
// 			success : function(data) {
// 				$("#addEventInputSlot").get(0).options.length = 0;
// 				$("#addEventInputSlot").get(0).options[0] = new Option("Select ", "");
// 				$.each(data.mapperList,function(index, item) {
// 					$("#addEventInputSlot").get(0).options[$("#addEventInputSlot").get(0).options.length] =
// 							new Option(item, item);
// 					});

// 			}
// 		});
        $("#addEventInputEventPriority").change(function() {
        	var val =$( this ).val();
        	if("14"==val){
        		$("#slot1Div").show();
        		$("#slot2Div").hide();
        	}else{
        		$("#slot1Div").hide();
        		$("#slot2Div").show();
        	}
});
       
        
        
        
        $("#addEventInputSlot").change(function(){
        	
        });

        populatePrincipalDetails($("#addNewEventUserFullNameLabelId"), $("#addNewEventUserFirstNameLabelId"));

        var slotID = 0;
        
        var contentGrid = jQuery("#add_SlotListJQGTable").jqGrid(
				{
					url : 'populateAllSlotDetails.htm',
					mtype : "POST",
					jsonReader : {
						repeatitems : false,
						id : "slotId"
					},
					datatype : "local",
					colNames : [ "Slot", 'Slot name', 'Slot Min Duration',
							'Open From', 'Open To' ],
					colModel : [ {
						name : 'slotId',
						index : 'slotId',
						width : 10,
						sortable : false,
						hidden:true
					}, {
						name : 'slotName',
						index : 'slot_name',
						width : 90
					}, {
						name : 'slotDuration',
						index : 'duration',
						width : 100
					}, {
						name : 'open_from',
						index : 'open_from',
						width : 100,
						sortable : true
					}, {
						name : 'open_to',
						index : 'open_to',
						sortable : true,
						width : 100
					} ],
					rowNum : 6,
					rowList : [ 6, 10, 25 ],
					pager : '#add_SlotListJQGTablePagingToolbar',
					sortname : 'slot_name',
					viewrecords : true,
					loadonce : false,
					sortorder : "desc",
					height : 209,
					autowidth : true,
					caption : "Slot List",
					altclass : 'myAltRowClass',
					hidegrid : false,//to hide the collapse icon of grid
					loadtext : 'Loading....',
					emptyrecords : "There are no results to display",
					pgtext : "Page {0} of {1}",
					gridComplete : function() {
						var recs = $("#add_SlotListJQGTable")
								.getGridParam("records");
						if (recs == 0) {
							$("#add_SlotListJQGTableWrapper").hide();

						} else {
							$("#add_SlotListJQGTableWrapper").show();
						}
					},
					onSelectRow : function(rowid, status, e) {
						if (status) {
							var ret = jQuery("#add_SlotListJQGTable")
									.jqGrid('getRowData', rowid);
						}
					}
				});

		var htable = jQuery("table.ui-jqgrid-htable", jQuery("#gview_list"));
		htable.css("height", 30);

		$("#searchEventInputEventSubmitButton").click(function() {
			reloadContentStore();
		});
var slotName="";
		function reloadContentStore() {
			jQuery("#add_SlotListJQGTable").jqGrid('setGridParam', {
				datatype : 'json',
				url : "populateAllSlotDetails.htm",
				postData : {
					slotName : slotName
				},
				page : 1
			}).trigger("reloadGrid");

		}
		jQuery("#add_SlotListJQGTable").jqGrid('navGrid',
				'#add_SlotListJQGTablePagingToolbar', {
					edit : false,
					add : false,
					del : false
				});

		$("#userHomeGameUsersSearchButton").click(function() {
			slotName = $("#serachEventInputSlotName").val();
			reloadContentStore();
		});
		
		
		
		//------------------------SLOT1 START
		
		var appointments = new Array();

            var appointment1 = {
                id: "id1",
                description: "",
                location: "",
                subject: "Soft Drinks",
                calendar: "Room 1",
                start: new Date(2017, 10, 23, 9, 0, 0),
                end: new Date(2017, 10, 23, 16, 0, 0)
            }

            var appointment2 = {
                id: "id2",
                description: "IT Group Mtg.",
                location: "",
                subject: "John",
                calendar: "Room 2",
                start: new Date(2017, 10, 24, 10, 0, 0),
                end: new Date(2017, 10, 24, 15, 0, 0)
            }

            var appointment3 = {
                id: "id3",
                description: "Course Social Media",
                location: "",
                subject: "Antony",
                calendar: "Room 3",
                start: new Date(2017, 10, 27, 11, 0, 0),
                end: new Date(2017, 10, 27, 13, 0, 0)
            }

            var appointment4 = {
                id: "id4",
                description: "New Projects Planning",
                location: "",
                subject: "Michael",
                calendar: "Room 2",
                start: new Date(2017, 10, 23, 16, 0, 0),
                end: new Date(2017, 10, 23, 18, 0, 0)
            }

            var appointment5 = {
                id: "id5",
                description: "Interview with James",
                location: "",
                subject: "Peter",
                calendar: "Room 1",
                start: new Date(2017, 10, 25, 15, 0, 0),
                end: new Date(2017, 10, 25, 17, 0, 0)
            }

            var appointment6 = {
                id: "id6",
                description: "Interview with Nancy",
                location: "",
                subject: "George",
                calendar: "Room 4",
                start: new Date(2017, 10, 26, 14, 0, 0),
                end: new Date(2017, 10, 26, 16, 0, 0)
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
                    { name: 'style', type: 'string' },
                    { name: 'color', type: 'string' },
                    { name: 'background', type: 'string' },
                    { name: 'borderColor', type: 'string' },
                    { name: 'start', type: 'date' },
                    { name: 'end', type: 'date' }
                ],
                id: 'id',
                localData: appointments
            };
            var adapter = new $.jqx.dataAdapter(source);
            $("#slot1scheduler").jqxScheduler({
                date: new $.jqx.date(2017, 11, 23),
                width: 590,
                height: 600,
                source: adapter,
                renderAppointment: function(data)
                {
                    // data Object properties
                    // appointment - Object with the properties from the Scheduler.s source object.
                    // width - int
                    // height- int
                    // textColor - hex
                    // background - hex
                    // borderColor - hex
                    // style - string
                    // cssClass - string
                    // html - html string
                    // view - string
                    var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/person.png'/>";
                    if (data.appointment.subject == "Nancy") {
                        var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/woman.png'/>";
                    }
                    else if (data.appointment.subject == "Peter") {
                        var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/boss.png'/>";
                    }
                    else if (data.appointment.subject == "Antony") {
                        var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/oldboss.png'/>";
                    }
                    else if (data.appointment.subject == "John") {
                        var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/asian.png'/>";
                    }

                    if (data.view == "weekView" || data.view == "dayView" || data.view == "monthView") {
                        data.html =  img + "<i>" + data.appointment.subject + "</i>";
                        if (data.appointment.id == "id1") {
                            data.style = "#AA4643";
                        }
                        else if (data.appointment.id == "id2" || data.appointment.id == "id6") {
                            data.style = "#309B46";
                        }
                        else if (data.appointment.id == "id3") {
                            data.style = "#447F6E";
                        }
                   }

                    return data;
                },
                ready: function () {
                    $("#slot1scheduler").jqxScheduler('ensureAppointmentVisible', 'id1');
                },
                appointmentDataFields:
                {
                    from: "start",
                    to: "end",
                    id: "id",
                    description: "description",
                    location: "location",
                    subject: "subject",
                    style: "style",
                    color: "color",
                    background: "background",
                    borderColor: "borderColor"
                },
                view: 'weekView',
                appointmentsMinHeight: 20,
                views:
                [
                    'dayView',
                    'weekView',
                    'monthView'
                ]
            });

		//------------------------SLOT1 END
		
				//------------------------SLOT2 START
		var slot2Appointments = new Array();

            var slot2Appointment1 = {
                id: "id1",
                description: "Quarterly Project Review Meeting",
                location: "",
                subject: "Nancy",
                calendar: "Room 1",
                start: new Date(2017, 10, 23, 9, 0, 0),
                end: new Date(2017, 10, 23, 16, 0, 0)
            }

            var slot2Appointment2 = {
                id: "id2",
                description: "IT Group Mtg.",
                location: "",
                subject: "John",
                calendar: "Room 2",
                start: new Date(2017, 10, 24, 10, 0, 0),
                end: new Date(2017, 10, 24, 15, 0, 0)
            }

            var slot2Appointment3 = {
                id: "id3",
                description: "Course Social Media",
                location: "",
                subject: "Antony",
                calendar: "Room 3",
                start: new Date(2017, 10, 27, 11, 0, 0),
                end: new Date(2017, 10, 27, 13, 0, 0)
            }

            var slot2Appointment4 = {
                id: "id4",
                description: "New Projects Planning",
                location: "",
                subject: "Michael",
                calendar: "Room 2",
                start: new Date(2017, 10, 23, 16, 0, 0),
                end: new Date(2017, 10, 23, 18, 0, 0)
            }

            var slot2Appointment5 = {
                id: "id5",
                description: "Interview with James",
                location: "",
                subject: "Peter",
                calendar: "Room 1",
                start: new Date(2017, 10, 25, 15, 0, 0),
                end: new Date(2017, 10, 25, 17, 0, 0)
            }

            var slot2Appointment6 = {
                id: "id6",
                description: "Interview with Nancy",
                location: "",
                subject: "George",
                calendar: "Room 4",
                start: new Date(2017, 10, 26, 14, 0, 0),
                end: new Date(2017, 10, 26, 16, 0, 0)
            }
            slot2Appointments.push(slot2Appointment1);
            slot2Appointments.push(slot2Appointment2);
            slot2Appointments.push(slot2Appointment3);
            slot2Appointments.push(slot2Appointment4);
            slot2Appointments.push(slot2Appointment5);
            slot2Appointments.push(slot2Appointment6);


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
                    { name: 'style', type: 'string' },
                    { name: 'color', type: 'string' },
                    { name: 'background', type: 'string' },
                    { name: 'borderColor', type: 'string' },
                    { name: 'start', type: 'date' },
                    { name: 'end', type: 'date' }
                ],
                id: 'id',
                localData: slot2Appointments
            };
            var adapter = new $.jqx.dataAdapter(source);
            $("#slot2scheduler").jqxScheduler({
                date: new $.jqx.date(2017, 11, 23),
                width: 590,
                height: 600,
                source: adapter,
                renderAppointment: function(data)
                {
                  
                    var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/person.png'/>";
                    if (data.appointment.subject == "Nancy") {
                        var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/woman.png'/>";
                    }
                    else if (data.appointment.subject == "Peter") {
                        var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/boss.png'/>";
                    }
                    else if (data.appointment.subject == "Antony") {
                        var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/oldboss.png'/>";
                    }
                    else if (data.appointment.subject == "John") {
                        var img = "<img style='top: 2px; position: relative;' src='/Expendables/images/asian.png'/>";
                    }

                    if (data.view == "weekView" || data.view == "dayView" || data.view == "monthView") {
                        data.html =  img + "<i>" + data.appointment.subject + "</i>";
                        if (data.appointment.id == "id1") {
                            data.style = "#AA4643";
                        }
                        else if (data.appointment.id == "id2" || data.appointment.id == "id6") {
                            data.style = "#309B46";
                        }
                        else if (data.appointment.id == "id3") {
                            data.style = "#447F6E";
                        }
                   }

                    return data;
                },
                ready: function () {
                    $("#slot2scheduler").jqxScheduler('ensureAppointmentVisible', 'id1');
                },
                appointmentDataFields:
                {
                    from: "start",
                    to: "end",
                    id: "id",
                    description: "description",
                    location: "location",
                    subject: "subject",
                    style: "style",
                    color: "color",
                    background: "background",
                    borderColor: "borderColor"
                },
                view: 'weekView',
                appointmentsMinHeight: 20,
                views:
                [
                    'dayView',
                    'weekView',
                    'monthView'
                ]
            });
		//------------------------SLOT2 END
		

    });

</script>
</body>
</html>