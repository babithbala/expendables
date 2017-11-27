package com.volvo.expendables.dto;

public class BookingContentWrapper {
    private String slot;
    private String bookingDate;

    public BookingContentWrapper() {
    }

    public BookingContentWrapper(String slot, String bookingDate) {
        this.slot = slot;
        this.bookingDate = bookingDate;
    }

    public String getSlot() {
        return slot;
    }

    public void setSlot(String slot) {
        this.slot = slot;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    @Override
    public String toString() {
        return "BookingContentWrapper{" +
                "slot='" + slot + '\'' +
                ", bookingDate='" + bookingDate + '\'' +
                '}';
    }
}
