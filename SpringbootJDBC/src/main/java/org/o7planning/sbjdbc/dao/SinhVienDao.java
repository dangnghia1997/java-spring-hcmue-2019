package org.o7planning.sbjdbc.dao;

import java.util.List;

import javax.sql.DataSource;

import org.o7planning.sbjdbc.mapper.SinhVienMapper;
import org.o7planning.sbjdbc.model.SinhVien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
@Repository
public class SinhVienDao extends JdbcDaoSupport {
	@Autowired
    public SinhVienDao(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	
	public List<SinhVien> getSinhVien() {
        // Select ba.Id, ba.Full_Name, ba.Balance From Bank_Account ba
        String sql = SinhVienMapper.BASE_SQL;
        Object[] params = new Object[] {};
        SinhVienMapper mapper = new SinhVienMapper();
        List<SinhVien> list = this.getJdbcTemplate().query(sql, params, mapper);
 
        return list;
    }

}
