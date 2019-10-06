package org.o7planning.sbjdbc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.o7planning.sbjdbc.model.SinhVien;
import org.springframework.jdbc.core.RowMapper;

public class SinhVienMapper implements RowMapper<SinhVien>{

	public static final String BASE_SQL //
    = "Select ba.MaBanDoc, ba.HoTen,  ba.GioiTinh,ba.DiaChi,ba.MaKhoa,ba.Lop,ba.NgaySinh,ba.Username,ba.Password From sinhvien ba ";
	

@Override
public SinhVien mapRow(ResultSet rs, int rowNum) throws SQLException {
	
	String maBanDoc = rs.getString("MaBanDoc");
	String hoTen = rs.getString("HoTen");
	String gioiTinh = rs.getString("GioiTinh");
	String diaChi = rs.getString("DiaChi");
	String maKhoa = rs.getString("MaKhoa");
	String lop = rs.getString("Lop");
	String ngaySinh  = rs.getString("NgaySinh");
	String userName = rs.getString("Username");
	String pass = rs.getString("Password");
	
	return new SinhVien(maBanDoc,hoTen,ngaySinh,gioiTinh,diaChi,maKhoa,lop,userName,pass);
}

}
