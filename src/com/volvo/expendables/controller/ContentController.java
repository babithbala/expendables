package com.volvo.expendables.controller;

import com.volvo.expendables.service.impl.ExpendablesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContentController {

    public ExpendablesService expendablesService;


    @RequestMapping(value = { "/manageContent.htm","/manageContent"}, method = RequestMethod.GET)
    public String createContent(Model model) {
        //expendablesService.createContent(content);
        return "manageContent";
    }
/*
    @RequestMapping(value = "/contentProcess/delete", method = RequestMethod.GET)
    public ModelAndView deleteContentById(@ModelAttribute("content") Content content) {
        expendablesService.deleteContentById(content);
        return new ModelAndView("contentDeleted", "contentName", content.getContent_name());
    }
    */

}
