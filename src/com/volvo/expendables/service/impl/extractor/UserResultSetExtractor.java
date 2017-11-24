/**
 * 
 */
package com.volvo.expendables.service.impl.extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.volvo.expendables.dto.UserDTO;



/**
 * @author Balarkan Babith
 *
 */
public class UserResultSetExtractor implements ResultSetExtractor<UserDTO> {

	public UserDTO extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		UserDTO user= new UserDTO();
		user.setUserName(rs.getString("username"));
		//user.setPassword(rs.getString("password"));
		//user.setConfirmPassword(rs.getString("password"));
		user.setFirstName(rs.getString("firstName"));
		user.setLastName(rs.getString("lastName"));
		user.setSex(rs.getString("sex"));
		user.setDob(rs.getDate("dob"));
		//user.setProfilePhoto(rs.getBinaryStream("profilePhoto"));
		user.setRole(rs.getString("role"));
		user.setHeight(rs.getString("height"));
		user.setWeight(rs.getString("weight"));
		
		//address part
		user.setAddressId(rs.getLong("addressId"));
		user.setStreetNo(rs.getString("streetNo"));
		user.setStreetName(rs.getString("streetName"));
		user.setCityName(rs.getString("cityName"));
		user.setState(rs.getString("state"));
		user.setZipCode(rs.getString("zipCode"));
		user.setCountry(rs.getString("country"));
	
		//contact details
		user.setContactId(rs.getLong("contactId"));
		user.setEmail(rs.getString("emailId"));
		user.setMobileNo(rs.getString("mobileNo"));
		return user;
	}

}
