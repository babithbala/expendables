package com.volvo.expendables.dto;

public class Slot {

    private int slot_id;
    private String slot_name;
    int duration;

    public Slot(String slot_name, int duration) {
        this.slot_name = slot_name;
        this.duration = duration;
    }

    public int getSlot_id() {
        return slot_id;
    }

    public void setSlot_id(int slot_id) {
        this.slot_id = slot_id;
    }

    public String getSlot_name() {
        return slot_name;
    }

    public void setSlot_name(String slot_name) {
        this.slot_name = slot_name;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    @Override
    public String toString() {
        return "Slot{" +
                "slot_id=" + slot_id +
                ", slot_name='" + slot_name + '\'' +
                ", duration=" + duration +
                '}';
    }
}
