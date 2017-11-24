package com.volvo.expendables.service.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.springframework.context.annotation.Scope;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.volvo.expendables.dto.Acknowledge;
import com.volvo.expendables.dto.EventDTO;
import com.volvo.expendables.dto.PrincipalDTO;
import com.volvo.expendables.service.ExpendablesService;
import com.volvo.expendables.service.impl.mapper.PrincipalRowMapper;
import com.volvo.expendables.util.ExpendablesUtil;
import com.volvo.expendables.util.SQL;


@Service("expendablesService")
@Scope("session")
public class ExpendablesServiceImpl implements ExpendablesService {

    private static final Logger LOG=Logger.getLogger(ExpendablesServiceImpl.class.getName());
    
    private NamedParameterJdbcTemplate getNamedParameterJdbcTemplate(){
        return new NamedParameterJdbcTemplate(ExpendablesUtil.getDataSource());
    }
    
    /* (non-Javadoc)
     * @see edu.pwr.hc.service.UserInfoService#getPrincipalDetails(java.lang.String)
     */
    public PrincipalDTO getPrincipalDetails(String userName) {
        JdbcTemplate template = new JdbcTemplate(ExpendablesUtil.getDataSource());
        PrincipalDTO principalInfo = new PrincipalDTO();
        try {
            principalInfo =  (PrincipalDTO) template.queryForObject(SQL.GET_PRINCIPAL_DETAILS,new Object[] {userName},new PrincipalRowMapper());
        } catch (EmptyResultDataAccessException e) {
            LOG.info(e.getMessage());
        }
        return principalInfo;
    }
    
    @Transactional
    public List<Acknowledge> saveEventDetails(EventDTO eventDetails) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge acknowledge = new Acknowledge();
        try{
            NamedParameterJdbcTemplate template = getNamedParameterJdbcTemplate();
            SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(eventDetails);
            GeneratedKeyHolder key = new GeneratedKeyHolder();
            
            if(ExpendablesUtil.checkNotNull(eventDetails.getStreetName())){
                template.update(SQL.SAVE_EVENT_ADDRESS, namedParameters,key);
                eventDetails.setAddressId(key.getKey().longValue());
                acknowledge.setIdNext(eventDetails.getAddressId().longValue());
            }
            
            template.update(SQL.SAVE_EVENT, namedParameters,key);
            eventDetails.setEventId(key.getKey().longValue());
            
            acknowledge.setMessage("User Event details saved. <br/>");
            acknowledge.setId(eventDetails.getEventId().longValue());
            
            list.add(acknowledge);
            }catch(DataAccessException e){
                String cause = e.getCause().toString();
                if(cause !=null){
                    acknowledge.setMessage(cause.substring(cause.indexOf(":")+1, cause.length())+"<br/>");
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
        try{
            NamedParameterJdbcTemplate template = getNamedParameterJdbcTemplate();
            SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(eventDetails);
            GeneratedKeyHolder key = new GeneratedKeyHolder();
            if(eventDetails.getAddressId()!=null && eventDetails.getAddressId()>0){
                template.update(SQL.UPDATE_EVENT_ADDRESS, namedParameters);
            }else if(ExpendablesUtil.checkNotNull(eventDetails.getStreetName())){
                template.update(SQL.SAVE_EVENT_ADDRESS, namedParameters,key);
                eventDetails.setAddressId(key.getKey().longValue());
                acknowledge.setIdNext(eventDetails.getAddressId().longValue());
            }
            
            template.update(SQL.UPDATE_EVENT, namedParameters);
            
            acknowledge.setMessage("User Event details updated. <br/>");
            acknowledge.setId(Long.valueOf(eventDetails.getEventId().toString()));
            list.add(acknowledge);
            }catch(DataAccessException e){
                String cause = e.getCause().toString();
                if(cause !=null){
                    acknowledge.setMessage(cause.substring(cause.indexOf(":")+1, cause.length())+"<br/>");
                    list.add(acknowledge);
                }
                ExpendablesServiceImpl.LOG.info(e.getMessage());
            }
            return list;
    }

    public List<EventDTO> getAllUserEvents(String userName) {
        List<EventDTO> list=new ArrayList<EventDTO>();
        JdbcTemplate template = new JdbcTemplate(ExpendablesUtil.getDataSource());
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
        try{
                ExpendablesServiceImpl.LOG.info("SQL Events Search "+SQL.GET_EVENT_LIST);
                list = template.query(SQL.GET_EVENT_LIST,new Object[] {userName}, mapper);
                ExpendablesServiceImpl.LOG.info("SQL Events size "+ list.size());
            }catch (DataAccessException e){
                ExpendablesServiceImpl.LOG.info("Exception cause "+e.getMessage());
            }
            return list;    
    }
    
    public List<EventDTO> getAllSelectedDateEvents(String userName,String selectedDate){
        List<EventDTO> list=new ArrayList<EventDTO>();
        JdbcTemplate template = new JdbcTemplate(ExpendablesUtil.getDataSource());
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
        try{
                ExpendablesServiceImpl.LOG.info("SQL Events Search "+SQL.GET_EVENT_LIST);
                list = template.query(SQL.GET_ALL_EVENTS_ON_SELECTED_DATE,new Object[] {selectedDate,userName}, mapper);
                ExpendablesServiceImpl.LOG.info("SQL Events size "+ list.size());
            }catch (DataAccessException e){
                ExpendablesServiceImpl.LOG.info("Exception cause "+e.getMessage());
            }
            return list;    
    }
    
    /* (non-Javadoc)
     * @see
     */
    @Override
    public PrincipalDTO getProfilePhoto(String userName) {
        PrincipalDTO photoDTO = new PrincipalDTO();
        ExpendablesServiceImpl.LOG.info("getProfilePhoto service layer call -------------------"+userName);
        try {
            JdbcTemplate template = new JdbcTemplate(ExpendablesUtil.getDataSource());
            RowMapper<PrincipalDTO> mapper = new RowMapper<PrincipalDTO>() {

                public PrincipalDTO mapRow(ResultSet rs, int rowNum)
                        throws SQLException {
                    PrincipalDTO photo = new PrincipalDTO();

                    photo.setProfilePhoto(rs.getBinaryStream("profilePhoto"));

                    return photo;
                }

            };
            photoDTO = template.queryForObject(
                    "select profilePhoto from users where username=?",  new Object[] { userName }, mapper);
        } catch (Exception e) {
            ExpendablesServiceImpl.LOG.info("TEST FOR IMAGE DISPLAY  LIST SIZE "+ e.getMessage());
        }
        return photoDTO;
    }
    
    @Override
    public List<Acknowledge> uploadProfilePhoto(PrincipalDTO user) {
        List<Acknowledge> list = new ArrayList<Acknowledge>();
        Acknowledge acknowledge = new Acknowledge();
        try{
            NamedParameterJdbcTemplate template = getNamedParameterJdbcTemplate();
            SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(user);
                template.update(SQL.UPDATE_USER_PHOTO, namedParameters);
                acknowledge.setName("success");
                acknowledge.setMessage("User profile photo updated. <br/>");
                list.add(acknowledge);
            }catch (DataAccessException e) {
                if(e.getCause().toString() !=null){
                    String message= e.getCause().toString();
                    message = message.substring(message.indexOf(":")+1, message.length())+"<br/>";
                    acknowledge.setMessage(message);
                    list.add(acknowledge);
                } 
            }
        return list;
    }
}
