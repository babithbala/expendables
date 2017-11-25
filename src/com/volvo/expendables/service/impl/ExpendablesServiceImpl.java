package com.volvo.expendables.service.impl;

import com.volvo.expendables.dto.*;
import com.volvo.expendables.service.impl.mapper.PrincipalRowMapper;
import com.volvo.expendables.service.impl.mapper.SupplierMapper;
import com.volvo.expendables.util.ExpendablesUtil;
import com.volvo.expendables.util.SQL;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.volvo.expendables.service.*;


@Component
public class ExpendablesServiceImpl implements ExpendablesService {

    private static final Logger LOG = Logger.getLogger(ExpendablesServiceImpl.class.getName());

    private JdbcTemplate jdbcTemplate;
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Autowired
    public void setJdbcTemplate(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Autowired
    public void setNamedParameterJdbcTemplate(DataSource dataSource) {
        this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }


    /* (non-Javadoc)
     * @see edu.pwr.hc.service.UserInfoService#getPrincipalDetails(java.lang.String)
     */
    public PrincipalDTO getPrincipalDetails(String userName) {
        PrincipalDTO principalInfo = new PrincipalDTO();
        try {
            principalInfo = (PrincipalDTO) jdbcTemplate.queryForObject(SQL.GET_PRINCIPAL_DETAILS, new Object[]{userName}, new PrincipalRowMapper());
        } catch (EmptyResultDataAccessException e) {
            LOG.info(e.getMessage());
        }
        return principalInfo;
    }

    @Transactional
    public List<Acknowledge> saveEventDetails(EventDTO eventDetails) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge acknowledge = new Acknowledge();
        try {
            SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(eventDetails);
            GeneratedKeyHolder key = new GeneratedKeyHolder();

            if (ExpendablesUtil.checkNotNull(eventDetails.getStreetName())) {
                jdbcTemplate.update(SQL.SAVE_EVENT_ADDRESS, namedParameters, key);
                eventDetails.setAddressId(key.getKey().longValue());
                acknowledge.setIdNext(eventDetails.getAddressId().longValue());
            }

            jdbcTemplate.update(SQL.SAVE_EVENT, namedParameters, key);
            eventDetails.setEventId(key.getKey().longValue());

            acknowledge.setMessage("User Event details saved. <br/>");
            acknowledge.setId(eventDetails.getEventId().longValue());

            list.add(acknowledge);
        } catch (DataAccessException e) {
            String cause = e.getCause().toString();
            if (cause != null) {
                acknowledge.setMessage(cause.substring(cause.indexOf(":") + 1, cause.length()) + "<br/>");
                list.add(acknowledge);
            }
            ExpendablesServiceImpl.LOG.info(e.getMessage());
        }
        return list;
    }

    @Transactional
    public List<Acknowledge> updateEventDetails(EventDTO eventDetails) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge acknowledge = new Acknowledge();
        try {
            SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(eventDetails);
            GeneratedKeyHolder key = new GeneratedKeyHolder();
            if (eventDetails.getAddressId() != null && eventDetails.getAddressId() > 0) {
                jdbcTemplate.update(SQL.UPDATE_EVENT_ADDRESS, namedParameters);
            } else if (ExpendablesUtil.checkNotNull(eventDetails.getStreetName())) {
                jdbcTemplate.update(SQL.SAVE_EVENT_ADDRESS, namedParameters, key);
                eventDetails.setAddressId(key.getKey().longValue());
                acknowledge.setIdNext(eventDetails.getAddressId().longValue());
            }

            jdbcTemplate.update(SQL.UPDATE_EVENT, namedParameters);

            acknowledge.setMessage("User Event details updated. <br/>");
            acknowledge.setId(Long.valueOf(eventDetails.getEventId().toString()));
            list.add(acknowledge);
        } catch (DataAccessException e) {
            String cause = e.getCause().toString();
            if (cause != null) {
                acknowledge.setMessage(cause.substring(cause.indexOf(":") + 1, cause.length()) + "<br/>");
                list.add(acknowledge);
            }
            ExpendablesServiceImpl.LOG.info(e.getMessage());
        }
        return list;
    }

    public List<EventDTO> getAllUserEvents(String userName) {
        List<EventDTO> list = new ArrayList<EventDTO>();
        RowMapper<EventDTO> mapper = new RowMapper<EventDTO>() {

            public EventDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                EventDTO event = new EventDTO();
                event.setEventDate(rs.getString("eventDate"));
                event.setEventDescription(rs.getString("eventDescription"));
                event.setEventName(rs.getString("eventName"));
                event.setEventTime(rs.getString("eventTime"));
                event.setEventId(rs.getLong("eventId"));
                event.setPriority(rs.getString("priority"));
                return event;
            }

        };
        try {
            ExpendablesServiceImpl.LOG.info("SQL Events Search " + SQL.GET_EVENT_LIST);
            list = jdbcTemplate.query(SQL.GET_EVENT_LIST, new Object[]{userName}, mapper);
            ExpendablesServiceImpl.LOG.info("SQL Events size " + list.size());
        } catch (DataAccessException e) {
            ExpendablesServiceImpl.LOG.info("Exception cause " + e.getMessage());
        }
        return list;
    }

    public List<EventDTO> getAllSelectedDateEvents(String userName, String selectedDate) {
        List<EventDTO> list = new ArrayList<EventDTO>();
        RowMapper<EventDTO> mapper = new RowMapper<EventDTO>() {

            public EventDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                EventDTO event = new EventDTO();
                event.setEventDate(rs.getString("eventDate"));
                event.setEventDescription(rs.getString("eventDescription"));
                event.setEventName(rs.getString("eventName"));
                event.setEventTime(rs.getString("eventTime"));
                event.setEventId(rs.getLong("eventId"));
                event.setPriority(rs.getString("priority"));
                event.setStreetName(rs.getString("address"));
                event.setAddressId(rs.getLong("addressId"));
                return event;
            }

        };
        try {
            ExpendablesServiceImpl.LOG.info("SQL Events Search " + SQL.GET_EVENT_LIST);
            list = jdbcTemplate.query(SQL.GET_ALL_EVENTS_ON_SELECTED_DATE, new Object[]{selectedDate, userName}, mapper);
            ExpendablesServiceImpl.LOG.info("SQL Events size " + list.size());
        } catch (DataAccessException e) {
            ExpendablesServiceImpl.LOG.info("Exception cause " + e.getMessage());
        }
        return list;
    }

    /* (non-Javadoc)
     * @see
     */
    @Override
    public PrincipalDTO getProfilePhoto(String userName) {
        PrincipalDTO photoDTO = new PrincipalDTO();
        ExpendablesServiceImpl.LOG.info("getProfilePhoto service layer call -------------------" + userName);
        try {
            RowMapper<PrincipalDTO> mapper = new RowMapper<PrincipalDTO>() {

                public PrincipalDTO mapRow(ResultSet rs, int rowNum)
                        throws SQLException {
                    PrincipalDTO photo = new PrincipalDTO();

                    photo.setProfilePhoto(rs.getBinaryStream("profilePhoto"));

                    return photo;
                }

            };
            photoDTO = jdbcTemplate.queryForObject(
                    "select profilePhoto from users where username=?", new Object[]{userName}, mapper);
        } catch (Exception e) {
            ExpendablesServiceImpl.LOG.info("TEST FOR IMAGE DISPLAY  LIST SIZE " + e.getMessage());
        }
        return photoDTO;
    }

    @Override
    public List<Acknowledge> uploadProfilePhoto(PrincipalDTO user) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge acknowledge = new Acknowledge();
        try {
            SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(user);
            jdbcTemplate.update(SQL.UPDATE_USER_PHOTO, namedParameters);
            acknowledge.setName("success");
            acknowledge.setMessage("User profile photo updated. <br/>");
            list.add(acknowledge);
        } catch (DataAccessException e) {
            if (e.getCause().toString() != null) {
                String message = e.getCause().toString();
                message = message.substring(message.indexOf(":") + 1, message.length()) + "<br/>";
                acknowledge.setMessage(message);
                list.add(acknowledge);
            }
        }
        return list;
    }

    @Transactional
    public List<Acknowledge> saveContentDetails(ContentDTO content) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge acknowledge = new Acknowledge();
        try {
            SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(content);
            GeneratedKeyHolder key = new GeneratedKeyHolder();

            jdbcTemplate.update(SQL.CREATE_CONTENT, namedParameters, key);
            content.setContentId(key.getKey().longValue());

            acknowledge.setMessage("Content has been created. <br/>");
            acknowledge.setId(content.getContentId());

            //list.add(acknowledge);
        } catch (DataAccessException e) {
            String cause = e.getCause().toString();
            if (cause != null) {
                acknowledge.setMessage(cause.substring(cause.indexOf(":") + 1, cause.length()) + "<br/>");
                list.add(acknowledge);
            }
            ExpendablesServiceImpl.LOG.info(e.getMessage());
        }
        return list;
    }

    @Transactional
    public List<Acknowledge> updateContentDetails(ContentDTO content) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge acknowledge = new Acknowledge();
        try {

            SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(content);
            GeneratedKeyHolder key = new GeneratedKeyHolder();

            jdbcTemplate.update(SQL.DELETE_CONTENT_BY_ID, namedParameters, key);
            //content.setContent_id(key.getKey().longValue());

            acknowledge.setMessage("Content has been created. <br/>");
            acknowledge.setName(content.getContentName());

            list.add(acknowledge);
        } catch (DataAccessException e) {
            String cause = e.getCause().toString();
            if (cause != null) {
                acknowledge.setMessage(cause.substring(cause.indexOf(":") + 1, cause.length()) + "<br/>");
                list.add(acknowledge);
            }
            ExpendablesServiceImpl.LOG.info(e.getMessage());
        }
        return list;
    }

    @Override
    @Transactional
    public List<Acknowledge> createNewSlot(Slot slot) {
        List<Acknowledge> list =new ArrayList<Acknowledge>();
        Acknowledge ack = new Acknowledge();
        try {

            ExpendablesServiceImpl.LOG.info("Add slot " + SQL.ADD_SLOT);
            jdbcTemplate.update(SQL.ADD_SLOT, slot.getSlotName(), slot.getSlotDuration());
            ExpendablesServiceImpl.LOG.info("Added slot: " + slot);
            ack.setMessage("Slot Added ");
        } catch (DataAccessException e) {
            ExpendablesServiceImpl.LOG.info("Exception cause " + e.getMessage());
            ack.setMessage(e.getMessage());
        }
        list.add(ack);
        return list;
    }

    @Override
    @Transactional
    public void deleteSlot(String slotName) {
        try {
            ExpendablesServiceImpl.LOG.info("Delete slot " + SQL.DELETE_SLOT);
            jdbcTemplate.update(SQL.DELETE_SLOT, slotName);
            ExpendablesServiceImpl.LOG.info("Deleted slot: " + slotName);
        } catch (DataAccessException e) {
            ExpendablesServiceImpl.LOG.info("Exception cause " + e.getMessage());
        }

    }

    @Override
    @Transactional
    public List<Slot> getAllSlots() {
        List<Slot> list = new ArrayList<Slot>();
        RowMapper<Slot> mapper = new RowMapper<Slot>() {

            public Slot mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new Slot(rs.getString("slot_name"), rs.getInt("duration"));
            }
        };
        try {
            ExpendablesServiceImpl.LOG.info("SQL all get slots " + SQL.GET_ALL_SLOTS);
            list = jdbcTemplate.query(SQL.GET_ALL_SLOTS, mapper);
            ExpendablesServiceImpl.LOG.info("SQL Events size " + list.size());
        } catch (DataAccessException e) {
            ExpendablesServiceImpl.LOG.info("Exception cause " + e.getMessage());
        }
        return list;
    }

    @Override
    @Transactional
    public Slot getSlot(String slotName) {
        Slot slot = null;
        RowMapper<Slot> mapper = new RowMapper<Slot>() {

            public Slot mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new Slot(rs.getString("slot_name"), rs.getInt("duration"));
            }
        };
        try {
            ExpendablesServiceImpl.LOG.info("SQL Get slot " + SQL.GET_SLOT_BY_NAME);
            slot = jdbcTemplate.queryForObject(SQL.GET_SLOT_BY_NAME, new Object[]{slotName}, mapper);
            ExpendablesServiceImpl.LOG.info("SQL Slot name " + slot.getSlotName());
        } catch (DataAccessException e) {
            ExpendablesServiceImpl.LOG.info("Exception cause " + e.getMessage());
        }
        return slot;
    }

    @Override
    @Transactional
    public List<Supplier> getAllSuppliers() {
        LOG.debug("getting all suppliers");
        return jdbcTemplate.query(SQL.GET_ALL_SUPPLIERS, new SupplierMapper());
    }

    @Override
    @Transactional
    public void saveSupplier(Supplier supplier) {
        LOG.debug("Saving the supplier: " + supplier);
        jdbcTemplate.update(SQL.INSERT_SUPPLIER, new SupplierMapper());
        LOG.debug("Saved the supplier: " + supplier);
    }

    @Override
    @Transactional
    public void deleteSupplier(Supplier supplier) {
        LOG.debug("Deleting the supplier: " + supplier);
        jdbcTemplate.update(SQL.DELETE_SUPPLIER, new SupplierMapper());
        LOG.debug("Deleted the supplier: " + supplier);
    }

}
