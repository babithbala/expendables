/**
 * 
 */
package com.volvo.expendables.service.impl.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.volvo.expendables.dto.UserDTO;
import com.volvo.expendables.service.impl.extractor.UserResultSetExtractor;




/**
 * @author Balarkan Babith
 *
 */
public class UserRowMapper implements RowMapper<UserDTO>{

	public UserDTO mapRow(ResultSet rs, int arg1) throws SQLException {
		UserResultSetExtractor extractor = new UserResultSetExtractor();
		
		return extractor.extractData(rs);
	}

}