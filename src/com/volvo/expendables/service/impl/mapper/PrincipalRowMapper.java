/**
 * 
 */
package com.volvo.expendables.service.impl.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.volvo.expendables.dto.PrincipalDTO;
import com.volvo.expendables.service.impl.extractor.PrincipalResultSetExtractor;


/**
 * @author Balarkan Babith
 *
 */
public class PrincipalRowMapper implements RowMapper<PrincipalDTO>{

	public PrincipalDTO mapRow(ResultSet rs, int arg1) throws SQLException {
		PrincipalResultSetExtractor extractor = new PrincipalResultSetExtractor();
		
		return extractor.extractData(rs);
	}

}