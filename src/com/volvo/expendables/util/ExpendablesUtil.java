package com.volvo.expendables.util;

/**
 * @author Balarkan Babith
 *
 * ${tags}
 */

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

public class ExpendablesUtil {
	
	private static final Logger LOG = Logger.getLogger(ExpendablesUtil.class.getName());
	
	private static final String[] CONFIG_FILES = { "/com/volvo/expendables/util/datasource.xml"};
	private static ApplicationContext ctx = null;
	
	private ExpendablesUtil(){
		
	}
	
		
	public static BasicDataSource getDataSource() {
		BasicDataSource	abSource =	(BasicDataSource) getAppContext().getBean("loginDataSource");
		return abSource;
	}
	
	public static ApplicationContext getAppContext() {
		if (ctx == null) {
			try {
				ctx = new ClassPathXmlApplicationContext(CONFIG_FILES);
			} catch (Exception e) {
				ExpendablesUtil.LOG.info("Exception : "+e.getMessage());
			}
		}
		return ctx;
	}
	
	public static String encodePassword(String password){
		 String cryptedPassword = new BCryptPasswordEncoder(12).encode(password);
		 ExpendablesUtil.LOG.info("Encrypted password : "+cryptedPassword);
	        return cryptedPassword;
	}
	
	public static boolean checkNotNull(String str){
		if(str != null && !str.isEmpty()) { 
			return true;
		}
		return false;
	}
	
}
