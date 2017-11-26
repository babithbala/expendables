package com.volvo.expendables.dto;

public class Slot {

    private int slotId;
    private String slotName;
    private int slotDuration;
    private String open_from;
    private String open_to;

    public Slot() {
    }

    public Slot(int slotId, String slotName, int slotDuration, String open_from, String open_to) {
        this.slotId = slotId;
        this.slotName = slotName;
        this.slotDuration = slotDuration;
        this.open_from = open_from;
        this.open_to = open_to;
    }

    public int getSlotId() {
        return slotId;
    }

    public void setSlotId(int slotId) {
        this.slotId = slotId;
    }

    public String getSlotName() {
        return slotName;
    }

    public void setSlotName(String slotName) {
        this.slotName = slotName;
    }

    public int getSlotDuration() {
        return slotDuration;
    }

    public void setSlotDuration(int slotDuration) {
        this.slotDuration = slotDuration;
    }

    public String getOpen_from() {
        return open_from;
    }

    public void setOpen_from(String open_from) {
        this.open_from = open_from;
    }

    public String getOpen_to() {
        return open_to;
    }

    public void setOpen_to(String open_to) {
        this.open_to = open_to;
    }

    @Override
    public String toString() {
        return "Slot{" +
                "slotId=" + slotId +
                ", slotName='" + slotName + '\'' +
                ", slotDuration=" + slotDuration +
                ", open_from='" + open_from + '\'' +
                ", open_to='" + open_to + '\'' +
                '}';
    }
}
