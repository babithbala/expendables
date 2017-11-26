package com.volvo.expendables.service.impl.mapper;

import com.volvo.expendables.dto.Slot;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SlotMapper implements RowMapper<Slot> {

    @Override
    public Slot mapRow(ResultSet rs, int rowNum) throws SQLException {
        Slot slot = new Slot();
        slot.setSlotId(rs.getInt("slot_id"));
        slot.setSlotName(rs.getString("slot_name"));
        slot.setSlotDuration(rs.getInt("duration"));
        slot.setOpen_from(rs.getString("open_from"));
        slot.setOpen_to(rs.getString("open_to"));
        return slot;
    }
}
