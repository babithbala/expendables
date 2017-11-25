package com.volvo.expendables.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

<<<<<<< HEAD
import com.volvo.expendables.dto.ContentDTO;
import com.volvo.expendables.dto.Slot;

=======
import com.volvo.expendables.dto.*;
>>>>>>> ff23940750377965990fba9d14b597b895c7bf84
import net.sf.json.JSONArray;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.volvo.expendables.dto.Acknowledge;
import com.volvo.expendables.dto.DropDownDTO;
import com.volvo.expendables.dto.EventDTO;
import com.volvo.expendables.dto.PrincipalDTO;
import com.volvo.expendables.service.ExpendablesService;


@Controller
@Scope("session")
public class UserInfoController {

    private static final Logger LOG = Logger.getLogger(UserInfoController.class.getName());

    private ExpendablesService expendablesService;
    private ObjectMapper jacksonObjectMapper;


    public ObjectMapper getJacksonObjectMapper() {
        return jacksonObjectMapper;
    }

    @Autowired
    public void setJacksonObjectMapper(ObjectMapper jacksonObjectMapper) {
        this.jacksonObjectMapper = jacksonObjectMapper;
    }

    public ExpendablesService getExpendablesService() {
        return expendablesService;
    }

    @Autowired
    public void setExpendablesService(ExpendablesService expendablesService) {
        this.expendablesService = expendablesService;
    }


    @RequestMapping(value = "/uploadProfilePhoto.htm", method = RequestMethod.GET)
    public String uploadProfilePhoto() {
        return "uploadPhoto";
    }

    @Secured({"ROLE_USER", "ROLE_ADMIN"})
    @RequestMapping(value = "getPrincipalDetails.htm", method = RequestMethod.GET)
    public @ResponseBody
    PrincipalDTO getPrincipalDetails() {
        String userName = getLoggedInUserName();
        UserInfoController.LOG.info("--------------------inside getPrincipalDetails :" + userName);
        LOG.info("==============================================");
        LOG.info("==============================================");
        LOG.info("==============================================");
        LOG.info("==========================USERNAME=" + userName);
        LOG.info("==============================================");
        LOG.info("==============================================");
        PrincipalDTO user = expendablesService.getPrincipalDetails(userName);
        return user;
    }

    @RequestMapping(value = "/addEvent.htm", method = RequestMethod.GET)
    public String addEvent(Model model) {
        model.addAttribute("message",
                "Hello " + getLoggedInUserName() + "\n This is protected page!.");

        return "addEventDetails";
    }

    @RequestMapping(value = "/saveOrUpdateEvent.htm", method = RequestMethod.POST)
    public @ResponseBody
    String saveOrUpdateEvent(@RequestBody EventDTO eventDetails) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        UserInfoController.LOG.info("--------------------inside saveOrUpdateEvent" + eventDetails.getEventDate());
        eventDetails.setUserName(getLoggedInUserName());
        if (eventDetails.getEventId() != null && eventDetails.getEventId() > 0) {
            list = expendablesService.updateEventDetails(eventDetails);
        } else {
            list = expendablesService.saveEventDetails(eventDetails);
        }
        JSONArray data = JSONArray.fromObject(list);
        return data.toString();
    }

    @RequestMapping(value = "/getUserEvents.htm", method = RequestMethod.GET)
    public @ResponseBody
    String getUserEvents() {
        UserInfoController.LOG.info("--------------------inside getUserEvents :");
        List<EventDTO> eventList = expendablesService.getAllUserEvents(getLoggedInUserName());
        UserInfoController.LOG.info("--------------------inside getUserEvents size :" + eventList.size());
        JSONArray data = JSONArray.fromObject(eventList);
        return data.toString();
    }


    @RequestMapping(value = "/populateAllSelectedDateEvents.htm", method = RequestMethod.GET)
    public @ResponseBody
    String populateAllSelectedDateEvents(@RequestParam String selectedDate) {
        List<EventDTO> eventList = new ArrayList<EventDTO>();
        UserInfoController.LOG.info("--------------------inside populateAllSelectedDateEvents :" + selectedDate);
        eventList = expendablesService.getAllSelectedDateEvents(getLoggedInUserName(), selectedDate);
        UserInfoController.LOG.info("--------------------inside populateAllSelectedDateEvents size :" + eventList.size());
        JSONArray data = JSONArray.fromObject(eventList);
        return data.toString();
    }

    private String getLoggedInUserName() {
        String userName = (String) RequestContextHolder.currentRequestAttributes()
                .getAttribute("userName", RequestAttributes.SCOPE_SESSION);
        return userName;
    }


    @Secured({"ROLE_USER", "ROLE_ADMIN", "ROLE_NURSE", "ROLE_PHYSICIAN", "ROLE_PATIENT"})
    @RequestMapping(value = "/getProfilePhoto.htm", method = RequestMethod.GET)
    public ServletOutputStream profilePhotoByUserName(HttpServletRequest request, HttpServletResponse response) {
        UserInfoController.LOG.info("getProfilePhoto getProfilePhoto method called");
        InputStream image = null;
        PrincipalDTO photoDTO = expendablesService.getProfilePhoto(getLoggedInUserName());
        image = photoDTO.getProfilePhoto();
        ServletOutputStream out = null;

        try {
            response.flushBuffer();
            out = response.getOutputStream();
            int length = (int) image.available();
            UserInfoController.LOG.info("######################################################################### " + (int) image.available());
            int bufferSize = 1024;
            byte[] buffer = new byte[bufferSize];
            while ((length = image.read(buffer)) != -1) {
                out.write(buffer, 0, length);
            }
            image.close();
        } catch (Exception e) {
            UserInfoController.LOG.info("Exception : " + e.getMessage());
        } finally {
            try {
                out.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return out;
    }

    @Secured({"ROLE_USER", "ROLE_ADMIN", "ROLE_NURSE", "ROLE_PHYSICIAN", "ROLE_PATIENT"})
    @RequestMapping(value = "/getProfilePhotoByUserName.htm", method = RequestMethod.GET)
    public ServletOutputStream profilePhotoByUserNameRequest(HttpServletRequest request, HttpServletResponse response) {

        UserInfoController.LOG.info("getProfilePhotoByUserName method called" + request.getParameter("userName"));
        String userName = request.getParameter("userName");
        InputStream image = null;
        if (userName != null)
            userName = userName.substring(0, userName.indexOf("-"));

        PrincipalDTO photoDTO = expendablesService.getProfilePhoto(userName);
        image = photoDTO.getProfilePhoto();
        ServletOutputStream out = null;

        try {
            response.flushBuffer();
            out = response.getOutputStream();
            int length = (int) image.available();
            UserInfoController.LOG.info("######################################################################### " + (int) image.available());
            int bufferSize = 1024;
            byte[] buffer = new byte[bufferSize];
            while ((length = image.read(buffer)) != -1) {
                out.write(buffer, 0, length);
            }
            image.close();
        } catch (Exception e) {
            UserInfoController.LOG.info("Exception : " + e.getMessage());
        } finally {
            try {
                out.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return out;
    }


    @RequestMapping(value = "/profilePictureUpload.htm", method = RequestMethod.POST)
    public String create(FileUploadBean file, HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (!ServletFileUpload.isMultipartContent(request)) {
            UserInfoController.LOG.info("Request is not multipart, please 'multipart/form-data' enctype for your form.");
            throw new IllegalArgumentException("Request is not multipart, please 'multipart/form-data' enctype for your form.");
        }
        HttpSession session = request.getSession(false);
        UserInfoController.LOG.info("Upload : " + file.getFile().getOriginalFilename() + " ");
        session.setAttribute("profilePhoto", file);
        //return "success:true";
        return "uploadPhoto";
    }

    @Secured({"ROLE_ADMIN", "ROLE_NURSE", "ROLE_PHYSICIAN", "ROLE_PATIENT"})
    @RequestMapping(value = "saveProfilePhoto.htm", method = RequestMethod.POST)
    public @ResponseBody
    String saveProfilePhoto(HttpServletRequest request,
                            @RequestBody PrincipalDTO profileDetails) throws IOException {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        String userName = getLoggedInUserName();
        profileDetails.setUserName(userName);
        HttpSession session = request.getSession(false);
        if (session.getAttribute("profilePhoto") != null && session.getAttribute("profilePhoto") != "") {
            FileUploadBean uploadImage = (FileUploadBean) session.getAttribute("profilePhoto");
            session.setAttribute("profilePhoto", null);
            profileDetails.setProfilePhoto(uploadImage.getFile().getInputStream());
            profileDetails.setRequestWithImage(true);
            UserInfoController.LOG.info("image set in dto");
        }
        list = expendablesService.uploadProfilePhoto(profileDetails);
        JSONArray data = JSONArray.fromObject(list);
        return data.toString();
    }


    @RequestMapping(value = "/manageContent.htm", method = RequestMethod.GET)
    public String createContent(Model model) {
        //expendablesService.createContent(content);
        return "manageContent";
    }

    @RequestMapping(value = "/manageSchedule.htm", method = RequestMethod.GET)
    public String manageSchedule(Model model) {
        //expendablesService.createContent(content);
        return "schedule";
    }

    @RequestMapping(value = "/saveOrUpdateContent.htm", method = RequestMethod.POST)
    public @ResponseBody
    String saveOrUpdateContent(@RequestBody ContentDTO contentDetails) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        UserInfoController.LOG.info("--------------------inside saveOrUpdateContent" + contentDetails.getContentName());

        if (contentDetails.getContentId() != null && contentDetails.getContentId() > 0) {
            list = expendablesService.updateContentDetails(contentDetails);
        } else {
            list = expendablesService.saveContentDetails(contentDetails);
        }
        JSONArray data = JSONArray.fromObject(list);
        return data.toString();
    }

    @RequestMapping(value = "/getAllSlots.htm", method = RequestMethod.GET)
    public String listSlots(Model model) {
        model.addAttribute("slot", new Slot());
        model.addAttribute("listSlots", this.expendablesService.getAllSlots());
        return "slot";
    }

    @RequestMapping(value = "/saveOrUpdateSlot.htm", method = RequestMethod.POST)
    public @ResponseBody
    String addSlot(@RequestBody Slot slotDetails) {
        List<Acknowledge> list;
        UserInfoController.LOG.info("--------------------inside saveOrUpdateEvent" + slotDetails.getSlotDuration());

        list = expendablesService.createNewSlot(slotDetails);
        JSONArray data = JSONArray.fromObject(list);
        return data.toString();

    }

    @RequestMapping(value = "/slot/remove/{slot_name}", method = RequestMethod.GET)
    public String deleteSlot(@PathVariable("slot_name") String slot_name) {
        this.expendablesService.deleteSlot(slot_name);
        return "redirect:/slot";
    }

    @RequestMapping(value = "/slot/get/{slot_name}", method = RequestMethod.GET)
    public String getSlot(Model model, @PathVariable("slot_name") String slot_name) {
        model.addAttribute("slot", new Slot());
        this.expendablesService.getSlot(slot_name);
        return "redirect:/slot";
    }

    @RequestMapping(value = "/supplier.htm", method = RequestMethod.GET)
    public String listSuppliers(Model model) {
        model.addAttribute("supplier", new Supplier());
        model.addAttribute("listSlots", expendablesService.getAllSuppliers());
        return "supplier";
    }


    @RequestMapping(value = "/membershipRegistration.htm", method = RequestMethod.GET)
    public String membershipRegistration(Model model) {
        model.addAttribute("message",
                "Hello " + getLoggedInUserName() + "\n This is protected page!.");

        return "membershipRegistration";
    }

<<<<<<< HEAD
           return "membershipRegistration";
       }
    
    
    
    @RequestMapping(value="/getAllSlotDetails.htm",method=RequestMethod.GET)
    public @ResponseBody Map<String, Object> getAllSlotDetails(){
        List<DropDownDTO> slotList = new ArrayList<DropDownDTO>();
        Map<String,Object> map = new HashMap<String,Object>();
        slotList  = expendablesService.getAllSlotsDropdown();
        JSONArray data = JSONArray.fromObject(slotList);
        map.put("mapperList", data);
        return map;
    }
    
    
    @RequestMapping(value= "/populateAllContentDetails.htm",method=RequestMethod.POST)
    public @ResponseBody Map<String, ? extends Object> populateAllContentDetails(@RequestParam int page,
            int rows,String sidx,String sord,String contentName)   {
        UserInfoController.LOG.info("populateAllContentDetails : ");
        Map<String,Object> modelMap = new HashMap<String,Object>();
        List<ContentDTO> list = expendablesService.populateAllContentDetails(page,rows,sidx,sord,contentName);
                
        long count=list.size();
        modelMap.put("rows", list);
        modelMap.put("page", page);
        modelMap.put("total", count%rows>0 ?  Math.round((count)/rows)+1:Math.round((count)/rows));
        modelMap.put("records",count);
        return modelMap;
    }
=======
>>>>>>> ff23940750377965990fba9d14b597b895c7bf84
}
