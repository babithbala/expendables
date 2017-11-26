package com.volvo.expendables.util;

/**
 * @author Balarkan Babith
 * <p>
 * ${tags}
 */

public class SQL {

    public static final String UPDATE_PASSWORD = "update users set password=:conformPassword where username=:userName";

    public static final String SAVE_EVENT = "insert into tbl_event (eventName,eventDate,eventTime,eventDescription,priority,userName,addressId) "
            + "values (:eventName,:eventDate,:eventTime,:eventDescription,:priority,:userName,:addressId)";


    public static final String UPDATE_EVENT = "update tbl_event set eventName=:eventName,eventDate=:eventDate,eventTime=:eventTime,"
            + "eventDescription=:eventDescription,priority=:priority,addressId=:addressId where eventId=:eventId";

    public static final String SAVE_EVENT_ADDRESS = "insert into tbl_address ( streetNo, streetName, cityName, state, zipCode, country, userName,addressType) "
            + "values (:streetNo, :streetName, :cityName, :state, :zipCode, :country, :userName,'E')";

    public static final String UPDATE_EVENT_ADDRESS = "update tbl_address set streetNo=:streetNo, streetName=:streetName, cityName=:cityName,"
            + " state=:state, zipCode=:zipCode, country=:country where addressId=:addressId";

    public static final String GET_EVENT_LIST = "select * from tbl_event where userName=?";

    public static final String GET_ALL_EVENTS_ON_SELECTED_DATE = "select e.*, concat(a.streetNo, ' ',a.streetName, ', ',a.cityName, ', ',a.state,', ',a.zipCode,', ',a.country) "
            + "as address  from tbl_event e left join tbl_address a on a.addressId=e.addressId where e.eventDate=? and e.userName=?";

    public static final String CHECK_FOR_USER_NAME = "select u.username from users u  where u.username = ? ";

    public static final String CHECK_FOR_USER_NAME_COUNT = "select count(*) from users u where u.username=?";

    public static final String GET_USER_FULLNAME = "select concat(u.last_name,' ',u.first_name) as fullName from users  u where u.username=?";

    public static final String CHECK_WHETHER_REGISTERED = "select registration_id from tbl_course_registration where "
            + "studentName=? and faculty_code=? and course_code=?";

    public static final String SAVE_USER_DETAILS = "insert into users (userName,firstName,lastName,enabled,sex,dob,password,profilePhoto,height, weight) "
            + "values (:userName,:firstName,:lastName,1,:sex,:dob,:password,:profilePhoto,:height,:weight)";

    public static final String UPDATE_USER_DETAILS = "update users set firstname=:firstName,"
            + "lastname=:lastName,sex=:sex,dob=:dob,height=:height,weight=:weight where username=:userName";

    public static final String UPDATE_USER_PHOTO = "update users set profilePhoto=:profilePhoto where username=:userName";

    public static final String SAVE_USER_ADDRESS = "insert into tbl_address ( streetNo, streetName, cityName, state, zipCode, country, userName,addressType) "
            + "values (:streetNo, :streetName, :cityName, :state, :zipCode, :country, :userName,'P')";
    public static final String UPDATE_USER_ADDRESS = "update tbl_address set streetNo=:streetNo, streetName=:streetName, cityName=:cityName, "
            + "state=:state, zipCode=:zipCode, country=:country where addressId=:addressId";


    public static final String SAVE_USER_CONTACT_DETAILS = "insert into tbl_contact (emailid, mobileNo, userName) values (:email, :mobileNo, :userName)";
    public static final String UPDATE_USER_CONTACT_DETAILS = "update tbl_contact set emailid=:email, mobileNo=:mobileNo where contactId=:contactId";

    public static final String SAVE_USER_ROLE = "insert into authorities (username,AUTHORITY) values(:userName,:role) ";
    public static final String UPDATE_USER_ROLE = "update authorities set AUTHORITY=:role where username=:userName";

    public static final String GET_USER_INFO = "select * from users where username=?";

    public static final String GET_PRINCIPAL_DETAILS = "select u.username, u.firstName,u.lastName,a.AUTHORITY,"
            + "u.profilePhoto from users u,authorities a where u.username=a.username and u.username=?";

    public static final String GET_USER_PROFILE_DETAILS = "select u.*,ta.*,tc.*,a.AUTHORITY from authorities a,users u "
            + "left join tbl_address ta on ta.userName=u.USERNAME and ta.addressType='P' "
            + "left join tbl_contact tc on tc.userName= u.USERNAME "
            + "where u.USERNAME=? and a.USERNAME= u.USERNAME";


    public static final String GET_ALL_USERS = "select u.USERNAME, concat(u.firstName,' ',u.lastName) as fullName,"
            + "u.profilePhoto, a.AUTHORITY from users u,authorities a where u.USERNAME=a.USERNAME ";
    public static final String GET_ALL_USERS_COUNT = "select count(*) from users";

    public static final String GET_USER_PASSWORD = "select password from users where username=?";

    public static final String GET_ALL_SUPPLIERS = "select * from supplier";

    public static final String CREATE_CONTENT = "insert into content (content_name) "
            + "values (:contentName)";
    
    public static final String INSERT_SLOT_CONTENT_MAPPING = "insert into content_slot (slot_id ,content_id ) values (?,?)";
	public static final String DELETE_SUPPLIER = "delete from supplier where sup_id = ?";
    public static final String INSERT_SUPPLIER = "insert into supplier (supplier_name, parma, address, supplier_email, supplier_phone, contact_person) "
            + "VALUES (:supplierName, :parma,:address, :email, :mobileNo, :contactPerson)";

    public static final String DELETE_CONTENT_BY_ID = "delete from content where content_id=:content_id ";
    public static final String UPDATE_CONTENT_BY_ID ="update content set content_name=:contentName where content_id=:contentId";
    
    public static final String GET_ALL_SLOTS = "select * from slot";
    public static final String GET_SLOT_BY_NAME = "select * from slot where slot_name=?";
    public static final String DELETE_SLOT = "DELETE FROM slot WHERE slot_name=?";
    public static final String ADD_SLOT = "INSERT INTO slot (slot_name, duration) VALUES (?, ?)";
    public final static String GET_ALL_CONTENTS="select * from content";
    public final static String INSERT_BOOKING = "insert into booking (booking_date, booked_from, booked_to, slot, supplier_name) VALUES (?, ?, ?, ?, ?)";
    public final static String GET_BOOKING_BY_SLOT_AND_DATE = "select * from booking where booking_date=? and slot=?";
    private SQL() {

    }
    
    public static final String ADD_NORMAL_MEMBER= "insert into users (username,password,firstName,lastName,address,email,mobileNo) "
            + "values (:userName,:password,:firstName,:lastName,:address,:email,:mobileNo)";
    
}
