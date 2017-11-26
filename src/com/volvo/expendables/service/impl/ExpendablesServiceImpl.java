package com.volvo.expendables.service.impl;

import com.volvo.expendables.dto.*;
import com.volvo.expendables.service.ExpendablesService;
import com.volvo.expendables.dto.*;
import com.volvo.expendables.service.impl.mapper.BookingRowMapper;
import com.volvo.expendables.service.impl.mapper.PrincipalRowMapper;
import com.volvo.expendables.service.impl.mapper.SlotMapper;
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
import java.util.Date;
import java.util.List;

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

    /*
     * (non-Javadoc)
     * 
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

    /*
     * (non-Javadoc)
     * 
     * @see
     */

    public PrincipalDTO getProfilePhoto(String userName) {
        PrincipalDTO photoDTO = new PrincipalDTO();
        ExpendablesServiceImpl.LOG.info("getProfilePhoto service layer call -------------------" + userName);
        try {
            RowMapper<PrincipalDTO> mapper = new RowMapper<PrincipalDTO>() {

                public PrincipalDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                    PrincipalDTO photo = new PrincipalDTO();

                    photo.setProfilePhoto(rs.getBinaryStream("profilePhoto"));

                    return photo;
                }

            };
            photoDTO = jdbcTemplate.queryForObject("select profilePhoto from users where username=?", new Object[]{userName}, mapper);
        } catch (Exception e) {
            ExpendablesServiceImpl.LOG.info("TEST FOR IMAGE DISPLAY  LIST SIZE " + e.getMessage());
        }
        return photoDTO;
    }

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

            namedParameterJdbcTemplate.update(SQL.CREATE_CONTENT, namedParameters, key);
            content.setContentId(key.getKey().longValue());
            for (int i = 0; i < content.getSlotIds().size(); i++) {
                jdbcTemplate.update(SQL.INSERT_SLOT_CONTENT_MAPPING, content.getSlotIds().get(i), content.getContentId());
            }
            acknowledge.setMessage("Content has been created. <br/>");
            acknowledge.setId(content.getContentId());

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
    public List<Acknowledge> updateContentDetails(ContentDTO content) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge acknowledge = new Acknowledge();
        try {

            SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(content);

            namedParameterJdbcTemplate.update(SQL.UPDATE_CONTENT_BY_ID, namedParameters);
            // content.setContent_id(key.getKey().longValue());

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
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge ack = new Acknowledge();
        try {

            ExpendablesServiceImpl.LOG.info("Add slot " + SQL.ADD_SLOT);
            jdbcTemplate.update(SQL.ADD_SLOT, slot.getSlotName(), slot.getSlotDuration(),slot.getOpen_from(),slot.getOpen_to());
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
        try {
            ExpendablesServiceImpl.LOG.info("SQL all get slots " + SQL.GET_ALL_SLOTS);
            list = jdbcTemplate.query(SQL.GET_ALL_SLOTS, new SlotMapper());
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

        try {
            ExpendablesServiceImpl.LOG.info("SQL Get slot " + SQL.GET_SLOT_BY_NAME);
            slot = jdbcTemplate.queryForObject(SQL.GET_SLOT_BY_NAME, new Object[]{slotName}, new SlotMapper());
            ExpendablesServiceImpl.LOG.info("SQL Slot name " + slot.getSlotName());
        } catch (DataAccessException e) {
            ExpendablesServiceImpl.LOG.info("Exception cause " + e.getMessage());
        }
        return slot;
    }

    @Override
    public List<DropDownDTO> getAllSlotsDropdown() {

        RowMapper<DropDownDTO> mapper = new RowMapper<DropDownDTO>() {

            public DropDownDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                DropDownDTO dropdown = new DropDownDTO();
                dropdown.setCode(rs.getString("slot_id"));
                dropdown.setDescription(rs.getString("slot_name"));
                return dropdown;
            }

        };
        List<DropDownDTO> list = jdbcTemplate.query("select * from slot s ", mapper);
        // DropDownDTO select = new DropDownDTO();
        // select.setDescription("Select");
        // select.setCode("");
        // list.add(0, select);
        return list;
    }

    public List<ContentDTO> populateAllContentDetails(int page, int rows, String sidx, String sord, String contentName) {
        String start = String.valueOf((page * rows) - rows);
        ExpendablesServiceImpl.LOG.info("populateAllContentDetails -------- ");
        RowMapper<ContentDTO> mapper = new RowMapper<ContentDTO>() {

            public ContentDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                ContentDTO content = new ContentDTO();
                content.setPosition(rs.getString("No"));
                content.setContentId(rs.getLong("content_id"));
                content.setContentName(rs.getString("content_name"));
                content.setSlotName(rs.getString("slot_name"));
                content.setDuration(rs.getString("duration"));

                // user.setProfilePhoto(rs.getBinaryStream("profilePhoto"));

                return content;
            }

        };
        List<ContentDTO> list = jdbcTemplate.query("select  @rownum:=@rownum+1 No,c.* , s.slot_name, s.duration from content c , "
                + "slot s right join content_slot cs on s.slot_id=cs.slot_id where " + "c.content_name LIKE '%" + contentName + "%' and" +
                // (checkNotNull(contentName)? " c.content_name LIKE '%"+contentName+"%' and ": " ") +
                " c.content_id =cs.content_id  " +

                "  ORDER BY " + sidx + " " + sord + " limit " + rows + " OFFSET " + start + "", mapper);
        ExpendablesServiceImpl.LOG.info("LOGGGGGGGGGGGGGGGGGGGGGGGGGGGGG LIST SIZE " + list.size());

        return list;
    }

    public static boolean checkNotNull(String str) {
        if (str != null && !str.isEmpty()) {
            return true;
        }
        return false;
    }

    @Transactional
    public List<Supplier> getAllSuppliers() {
        LOG.debug("getting all suppliers");
        return jdbcTemplate.query(SQL.GET_ALL_SUPPLIERS, new SupplierMapper());
    }

//    @Override
//    @Transactional
//    public void saveSupplier(Supplier supplier) {
//        LOG.debug("Saving the supplier: " + supplier);
//        jdbcTemplate.update(SQL.INSERT_SUPPLIER, new SupplierMapper());
//        LOG.debug("Saved the supplier: " + supplier);
//    }

    @Override
    @Transactional
    public void deleteSupplier(Supplier supplier) {
        LOG.debug("Deleting the supplier: " + supplier);
        jdbcTemplate.update(SQL.DELETE_SUPPLIER, new SupplierMapper());
        LOG.debug("Deleted the supplier: " + supplier);
    }

    @Override
    @Transactional
    public List<Booking> getBookingByBookingDateAndSlotName(Date bookedDate, String slot) {
        LOG.debug("getting booking date " + bookedDate + " slot: " + slot);
        return jdbcTemplate.query(SQL.GET_BOOKING_BY_SLOT_AND_DATE, new Object[]{bookedDate, slot}, new BookingRowMapper());
    }

//    @Override
//    @Transactional
//    public List<Content> getAllContents() {
//        LOG.debug("getting all content objects");
//        RowMapper<Content> rowMapper = new RowMapper<Content>() {
//            @Override
//            public Content mapRow(ResultSet rs, int rowNum) throws SQLException {
//                return new Content(rs.getInt("content_id"), rs.getString("content_name"));
//            }
//        };
//        return jdbcTemplate.query(SQL.GET_ALL_CONTENTS, rowMapper);
//    }

    @Override
    public List<Acknowledge> saveMemberDetails(UserDTO user) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge acknowledge = new Acknowledge();
        if (!userAvailable(user.getUserName())) {
            try {
                SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(user);
                GeneratedKeyHolder key = new GeneratedKeyHolder();


                namedParameterJdbcTemplate.update(SQL.ADD_NORMAL_MEMBER, namedParameters, key);
                namedParameterJdbcTemplate.update(SQL.SAVE_USER_ROLE, namedParameters);
                acknowledge.setMessage("User details saved. <br/>");

                if ("ROLE_SUPPLIER".equals(user.getRole())) {
                    namedParameterJdbcTemplate.update(SQL.INSERT_SUPPLIER, namedParameters);
                    acknowledge.setMessage("Supplier details saved. <br/>");

                }
                list.add(acknowledge);
            } catch (DataAccessException e) {
                String cause = e.getCause().toString();
                if (cause != null) {
                    acknowledge.setMessage(cause.substring(cause.indexOf(":") + 1, cause.length()) + "<br/>");
                    list.add(acknowledge);
                }
                ExpendablesServiceImpl.LOG.info(e.getMessage());
            }
        } else {
            acknowledge.setMessage("Username already used. Provide different username");
            list.add(acknowledge);
        }
        return list;
    }

    private boolean userAvailable(String name) {
        boolean userExists = false;
        String userName = "";
        try {
            userName = (String) jdbcTemplate.queryForObject(SQL.CHECK_FOR_USER_NAME, new Object[]{name}, String.class);
        } catch (EmptyResultDataAccessException e) {
            LOG.info(e.getMessage());
        }
        if (userName != null && userName != "") {
            userExists = true;
        } else {
            userExists = false;
        }
        return userExists;
    }

    @Override
    public List<Slot> populateAllSlotDetails(int page, int rows, String sidx, String sord, String slotname) {
        // TODO Auto-generated method stub
            String start = String.valueOf((page * rows) - rows);
            ExpendablesServiceImpl.LOG.info("populateAllSlotDetails -------- ");
            RowMapper<Slot> mapper = new RowMapper<Slot>() {

                public Slot mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Slot content = new Slot();
                    content.setSlotId(rs.getInt("slot_id"));
                    content.setSlotName(rs.getString("slot_name"));
                    content.setSlotDuration(rs.getInt("duration"));
                    content.setOpen_from(rs.getString("open_from"));
                    content.setOpen_to(rs.getString("open_to"));
                    // user.setProfilePhoto(rs.getBinaryStream("profilePhoto"));

                    return content;
                }

            };
            String sql="";
            if(slotname.trim().length()>0){
                sql ="select * from slot where slot_name like '%"+slotname+"%'";
            }else{
                sql="select * from slot ";
            }
            List<Slot> list = jdbcTemplate.query(sql+
                    "  ORDER BY " + sidx + " " + sord + " limit " + rows + " OFFSET " + start + "", mapper);
            ExpendablesServiceImpl.LOG.info("LOGGGGGGGGGGGGGGGGGGGGGGGGGGGGG LIST SIZE " + list.size());

            return list;
        }

}
