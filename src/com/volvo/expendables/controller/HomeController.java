/**
 * 
 */
package com.volvo.expendables.controller;

import java.util.logging.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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

	@RequestMapping(value = "/slotInfo.htm", method = RequestMethod.GET)
	public String slotInfo(Model model) {
		/*model.addAttribute(TITLE, "Home");*/
		return "slotInfo";
	}

	
	
	@RequestMapping(value = "/calendarBooking.htm", method = RequestMethod.GET)
    public String calendarBooking(Model model) {
        model.addAttribute(TITLE, "Booking");
        return "calendarBooking";
    }
	@RequestMapping(value = "/calendarBooking1.htm", method = RequestMethod.GET)
    public String calendarBooking1(Model model) {
        model.addAttribute(TITLE, "Booking");
        return "calendarBooking1";
    }
	
}
