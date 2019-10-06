package org.o7planning.sbjdbc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.o7planning.sbjdbc.model.author;
import org.o7planning.sbjdbc.model.books;
import org.springframework.jdbc.core.RowMapper;
public class Authormapper implements RowMapper<author>{
	
	public static final String BASE_SQL //
    = "Select id,authorname from author ";
	

@Override
public author mapRow(ResultSet rs, int rowNum) throws SQLException {
String author_name = rs.getString("authorname");
Integer author_id = rs.getInt("id");
return new author(author_id,author_name);
}


}
