package com.volvo.expendables.dto;

import java.util.Date;

public class Booking {
    private int booking_id;
    private Date booking_date;
    private String booked_from;
    private String booked_to;
    private String slot;
    private String supplier_name;
    private String vehicle_reg_number;
    private int customs_deliver;
    private int packaging_units;
    private String driver_phone_number;

    public Booking() {
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

    public String getVehicle_reg_number() {
        return vehicle_reg_number;
    }

    public void setVehicle_reg_number(String vehicle_reg_number) {
        this.vehicle_reg_number = vehicle_reg_number;
    }

    public int getCustoms_deliver() {
        return customs_deliver;
    }

    public void setCustoms_deliver(int customs_deliver) {
        this.customs_deliver = customs_deliver;
    }

    public int getPackaging_units() {
        return packaging_units;
    }

    public void setPackaging_units(int packaging_units) {
        this.packaging_units = packaging_units;
    }

    public String getDriver_phone_number() {
        return driver_phone_number;
    }

    public void setDriver_phone_number(String driver_phone_number) {
        this.driver_phone_number = driver_phone_number;
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
                ", vehicle_reg_number='" + vehicle_reg_number + '\'' +
                ", customs_deliver=" + customs_deliver +
                ", packaging_units=" + packaging_units +
                ", driver_phone_number='" + driver_phone_number + '\'' +
                '}';
    }
}
