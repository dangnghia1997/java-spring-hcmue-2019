package org.o7planning.sbjdbc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.o7planning.sbjdbc.model.users;
import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<users> {
	public static final String BASE_SQL //
    = "Select ba.id, ba.email,  ba.password,ba.lastname,ba.firstname,ba.role From users ba ";
	

@Override
public users mapRow(ResultSet rs, int rowNum) throws SQLException {
	Integer id = rs.getInt("id");
	String phone = rs.getString("password");
	String email = rs.getString("email");
	String first = rs.getString("firstname");
	String last = rs.getString("lastname");
	int role = rs.getInt("role");
	
	
	return new users(id,email,phone,first,last,role);
}
}
