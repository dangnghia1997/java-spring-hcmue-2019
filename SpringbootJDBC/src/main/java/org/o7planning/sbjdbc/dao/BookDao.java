package org.o7planning.sbjdbc.dao;

import java.util.List;

import javax.sql.DataSource;

import org.o7planning.sbjdbc.mapper.BookMapper;

import org.o7planning.sbjdbc.model.books;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
@Repository
public class BookDao  extends JdbcDaoSupport  {
	@Autowired
    public BookDao(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	
	public List<books> getSach() {
		
        // Select ba.Id, ba.Full_Name, ba.Balance From Bank_Account ba
        String sql = BookMapper.BASE_SQL;
       
        
        Object[] params = new Object[] {};
        BookMapper mapper = new BookMapper();
        List<books> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
}
