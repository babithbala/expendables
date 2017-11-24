/**
 * 
 */
package com.volvo.expendables.service.impl.extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.volvo.expendables.dto.PrincipalDTO;


/**
 * @author Balarkan Babith
 *
 */
public class PrincipalResultSetExtractor implements ResultSetExtractor<PrincipalDTO> {

	public PrincipalDTO extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		PrincipalDTO user= new PrincipalDTO();
		user.setFirstName(rs.getString("firstName"));
		user.setLastName(rs.getString("lastName"));
		user.setRole(rs.getString("AUTHORITY"));
		//user.setProfilePhoto(rs.getBinaryStream("profilePhoto"));
		return user;
	}

}