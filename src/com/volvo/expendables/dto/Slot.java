package com.volvo.expendables.dto;

public class Slot {

    private int slotId;
    private String slotName;
    int slotDuration;

    public Slot() {
    }

    public Slot(String slot_name, int duration) {
        this.slotName = slot_name;
        this.slotDuration = duration;
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

    @Override
    public String toString() {
        return "Slot{" +
                "slotId=" + slotId +
                ", slotName='" + slotName + '\'' +
                ", slotDuration=" + slotDuration +
                '}';
    }
}
