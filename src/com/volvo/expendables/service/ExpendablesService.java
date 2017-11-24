package com.volvo.expendables.service.impl;

import java.util.List;

import com.volvo.expendables.dto.Acknowledge;
import com.volvo.expendables.dto.ContentDTO;
import com.volvo.expendables.dto.EventDTO;
import com.volvo.expendables.dto.PrincipalDTO;



public interface ExpendablesService {

    public abstract PrincipalDTO getPrincipalDetails(String userName);
    public abstract List<Acknowledge> saveEventDetails(EventDTO eventDetails);
    public abstract List<Acknowledge> updateEventDetails(EventDTO eventDetails);
    public abstract List<EventDTO> getAllUserEvents(String userName);
    public abstract List<EventDTO> getAllSelectedDateEvents(String userName,String selectedDate);
    public abstract PrincipalDTO getProfilePhoto(String userName);
    public abstract List<Acknowledge> uploadProfilePhoto(PrincipalDTO user);

    public abstract List<Acknowledge> updateContentDetails(ContentDTO content);
    public abstract List<Acknowledge> saveContentDetails(ContentDTO content);

}
