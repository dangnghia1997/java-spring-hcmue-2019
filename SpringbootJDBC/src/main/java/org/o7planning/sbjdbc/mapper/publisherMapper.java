package org.o7planning.sbjdbc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.o7planning.sbjdbc.model.author;
import org.o7planning.sbjdbc.model.publisher;
import org.springframework.jdbc.core.RowMapper;

public class publisherMapper implements RowMapper<publisher>{

	public static final String BASE_SQL //
    = "Select id,publishername from publisher ";
	

@Override
public publisher mapRow(ResultSet rs, int rowNum) throws SQLException {
String name = rs.getString("publishername");
Integer id = rs.getInt("id");
return new publisher(id,name);
}

}
