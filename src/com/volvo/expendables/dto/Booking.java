package com.volvo.expendables.dto;

import java.util.Date;

public class Booking {
    private int booking_id;
    private Date booking_date;
    private String booked_from;
    private String booked_to;
    private String slot;
    private String supplier_name;

    public Booking() {
    }

    public Booking(int booking_id, Date booking_date, String booked_from, String booked_to, String slot, String supplier_name) {
        this.booking_id = booking_id;
        this.booking_date = booking_date;
        this.booked_from = booked_from;
        this.booked_to = booked_to;
        this.slot = slot;
        this.supplier_name = supplier_name;
    }

    public int getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(int booking_id) {
        this.booking_id = booking_id;
    }

    public Date getBooking_date() {
        return booking_date;
    }

    public void setBooking_date(Date booking_date) {
        this.booking_date = booking_date;
    }

    public String getBooked_from() {
        return booked_from;
    }

    public void setBooked_from(String booked_from) {
        this.booked_from = booked_from;
    }

    public String getBooked_to() {
        return booked_to;
    }

    public void setBooked_to(String booked_to) {
        this.booked_to = booked_to;
    }

    public String getSlot() {
        return slot;
    }

    public void setSlot(String slot) {
        this.slot = slot;
    }

    public String getSupplier_name() {
        return supplier_name;
    }

    public void setSupplier_name(String supplier_name) {
        this.supplier_name = supplier_name;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "booking_id=" + booking_id +
                ", booking_date=" + booking_date +
                ", booked_from='" + booked_from + '\'' +
                ", booked_to='" + booked_to + '\'' +
                ", slot='" + slot + '\'' +
                ", supplier_name='" + supplier_name + '\'' +
                '}';
    }
}
