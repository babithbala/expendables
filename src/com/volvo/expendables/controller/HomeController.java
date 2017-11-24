/**
 * 
 */
package com.volvo.expendables.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.volvo.expendables.dto.Acknowledge;
import com.volvo.expendables.dto.EventDTO;
import com.volvo.expendables.service.ExpendablesService;


/**
 * @author Balarkan Babith
 *
 */
@Controller
public class HomeController {

    
    private static final Logger LOG=Logger.getLogger(HomeController.class.getName());
    
	public static final String TITLE = "title";
	private static final String MESSAGE ="message";
	
	
    @RequestMapping(value = { "/login.htm","/login" }, method = RequestMethod.GET)
	   public String loadLoginPage(Model model) {
		   model.addAttribute(TITLE, "Login");
	       model.addAttribute(MESSAGE, "Enter your username/password:");
	       return "loginPage";
	   }
	
	@RequestMapping(value = {"/","/home.htm"}, method = RequestMethod.GET)
	   public String loadHomePage(Model model) {
		   model.addAttribute(TITLE, "Home");
	       return "index";
	   }
	
	@RequestMapping(value = "/basicForm.htm", method = RequestMethod.GET)
	   public String basicFormPageLoad(Model model) {
		   model.addAttribute(TITLE, "Home");
	       return "basicForm";
	   }
	
	@RequestMapping(value = "/general.htm", method = RequestMethod.GET)
	   public String generalPageLoad(Model model) {
		   model.addAttribute(TITLE, "Home");
	       return "general";
	   }
	
	@RequestMapping(value = "/simple.htm", method = RequestMethod.GET)
	   public String simplePageLoad(Model model) {
		   model.addAttribute(TITLE, "Home");
	       return "simple";
	   }
	
	@RequestMapping(value = "/demo.htm", method = RequestMethod.GET)
    public String demoPage(Model model) {
        model.addAttribute(TITLE, "Home");
        return "demo";
    }
	
	
}
