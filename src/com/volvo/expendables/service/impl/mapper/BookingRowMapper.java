package com.volvo.expendables.service.impl.mapper;

import com.volvo.expendables.dto.Booking;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BookingRowMapper implements RowMapper<Booking> {

    @Override
    public Booking mapRow(ResultSet rs, int rowNum) throws SQLException {
        Booking booking = new Booking();
        booking.setBooking_id(rs.getInt("booking_id"));
        booking.setBooking_date(rs.getDate("booking_date"));
        booking.setBooked_from(rs.getString("booked_from"));
        booking.setBooked_to(rs.getString("booked_to"));
        booking.setSlot(rs.getString("slot"));
        booking.setSupplier_name(rs.getString("supplier_name"));
        booking.setVehicle_reg_number(rs.getString("vehicle_reg_number"));
        booking.setCustoms_deliver(rs.getInt("customs_deliver"));
        booking.setPackaging_units(rs.getInt("packaging_units"));
        booking.setDriver_phone_number(rs.getString("driver_phone_number"));
        return booking;
    }
}
