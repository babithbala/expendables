package com.volvo.expendables.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;


public class CustomAuthenticationSuccessHandler   implements AuthenticationSuccessHandler {
	Logger logger=Logger.getLogger(CustomAuthenticationSuccessHandler.class.getName());
	// cxccxc
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,HttpServletResponse response,
			Authentication authentication) throws IOException,ServletException {
		
		String userName="";
//
		userName = request.getParameter("j_username");
		
		HttpSession session = request.getSession(false);
		session.setAttribute("userName", null);
	
			session.setAttribute("userName", userName);
			logger.info("==============================================");	
			logger.info("==============================================");
			logger.info("==============================================");
			logger.info("==========================="+userName);
			logger.info("==============================================");
			logger.info("==============================================");
			
		
		if(request.getRequestURL().toString().endsWith("/j_spring_security_check")){
			response.sendRedirect(request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"+"home.htm");
		}else{
			response.sendRedirect(request.getRequestURL().toString());
		}
		
	}
	
}
