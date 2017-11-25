package com.volvo.expendables.service;

import java.util.List;

import com.volvo.expendables.dto.*;


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

    public List<Acknowledge> createNewSlot(Slot slot);
    public void deleteSlot(String slotName);
    public List<Slot> getAllSlots();
    public Slot getSlot(String slotName);
}
