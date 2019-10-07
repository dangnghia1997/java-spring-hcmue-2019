package org.o7planning.sbjdbc.dao;

import java.util.List;

import javax.sql.DataSource;
import javax.websocket.Session;

import org.o7planning.sbjdbc.mapper.UserMapper;
import org.o7planning.sbjdbc.mapper.publisherMapper;
import org.o7planning.sbjdbc.model.publisher;
import org.o7planning.sbjdbc.model.users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
@Repository
public class UsersDao extends JdbcDaoSupport {
	@Autowired
    public UsersDao(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	public List<users> getPub() {
		
        // Select ba.Id, ba.Full_Name, ba.Balance From Bank_Account ba
        String sql = UserMapper.BASE_SQL;
        Object[] params = new Object[] {};
       UserMapper mapper = new UserMapper();
        List<users> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
}
	
