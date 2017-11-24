<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<!--META-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>

<!--STYLESHEETS-->
<link href="/Expendables/css/styles.css" rel="stylesheet" type="text/css" />
<style type="text/css">
a {text-decoration: none}
</style>

<!--SCRIPTS-->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<!--Slider-in icons-->
<script type="text/javascript">

	function loginSubmit(){
		return true;
	}
	
$(document).ready(function() {
	$(".username").focus(function() {
		$(".user-icon").css("left","-48px");
	});
	$(".username").blur(function() {
		$(".user-icon").css("left","0px");
	});
	
	$(".password").focus(function() {
		$(".pass-icon").css("left","-48px");
	});
	$(".password").blur(function() {
		$(".pass-icon").css("left","0px");
	});
	
	
	$("#registrationButton").click(function(){
// 		$.ajax({
// 			  type: "GET",
// 			  url: "register.htm"
// 			});
//		$("#registerLink").click();
	});
	
	

});
</script>

</head>
<body>

<div id="wrapper">

	<!--SLIDE-IN ICONS-->
    <div class="user-icon"></div>
    <div class="pass-icon"></div>
     <div class="db-icon"></div>
    <!--END SLIDE-IN ICONS-->

<!--LOGIN FORM-->
<form name="f" class="login-form" action="j_spring_security_check" method="post" >

    <div class="header">
    <h1>
    Login&nbsp;Form</h1>
    <span>Please Login to the application.</span><br/>
    <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
				  <span style="color: #FF0000">
					Your login attempt was not successful due to <br/>
					<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
				  </span>
	</c:if>
    </div>
    
	

    <div class="content">
	<input name="j_username" type="text" class="input username" onfocus="this.value=''" />
    <input name="j_password" type="password" class="input password"  onfocus="this.value=''" />
    </div>
    
    <div class="footer">
    Remember Me:&nbsp;<input type="checkbox" name="_spring_security_remember_me" id="rememberMe"  />
    <input type="submit" name="submit" value="Login" class="button" onclick="loginSubmit();"/>
<!--     <input type="button" value="Register" class="register" id="registrationButton" /> -->
    <a href="#" id="registerLink" class="register" >Register</a>
    </div>


</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

</body>
</html>