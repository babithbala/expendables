package com.volvo.expendables.service.impl.mapper;

import com.volvo.expendables.dto.Supplier;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SupplierMapper implements RowMapper<Supplier> {

    @Override
    public Supplier mapRow(ResultSet rs, int rowNum) throws SQLException {
        Supplier supplier = new Supplier();
        supplier.setSup_id(rs.getInt("sup_id"));
        supplier.setAddress(rs.getString("address"));
        supplier.setSupplier_name(rs.getString("supplier_name"));
        supplier.setSupplier_email(rs.getString("supplier_email"));
        supplier.setSupplier_phone(rs.getString("supplier_phone"));
        supplier.setParma(rs.getString("parma"));
        supplier.setContact_person(rs.getString("contact_person"));
        return supplier;
    }
}
