package com.volvo.expendables.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ContentDTO implements Serializable {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private Long contentId;
    private String contentName;
    private String slotId;

    private List<String> slotIds = new ArrayList<String>();
    private String position;
    private String slotName;
    private String duration;

    public String getSlotId() {
        return slotId;
    }

    public void setSlotId(String slotId) {
        this.slotId = slotId;
    }

    public Long getContentId() {
        return contentId;
    }

    public void setContentId(Long contentId) {
        this.contentId = contentId;
    }

    public String getContentName() {
        return contentName;
    }

    public void setContentName(String contentName) {
        this.contentName = contentName;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getSlotName() {
        return slotName;
    }

    public void setSlotName(String slotName) {
        this.slotName = slotName;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public List<String> getSlotIds() {
        return slotIds;
    }

    public void setSlotIds(List<String> slotIds) {
        this.slotIds = slotIds;
    }
}
