package org.o7planning.sbjdbc.dao;

import java.util.List;

import javax.sql.DataSource;


import org.o7planning.sbjdbc.mapper.publisherMapper;

import org.o7planning.sbjdbc.model.publisher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
@Repository
public class PublisherDao  extends JdbcDaoSupport{
	
	@Autowired
    public PublisherDao(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	public List<publisher> getPub() {
		
        // Select ba.Id, ba.Full_Name, ba.Balance From Bank_Account ba
        String sql = publisherMapper.BASE_SQL;
        Object[] params = new Object[] {};
        publisherMapper mapper = new publisherMapper();
        List<publisher> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
}
