package org.o7planning.sbjdbc.model;

public class SinhVien  extends BanDoc implements User  {
	private String MaKhoa;
	private String Lop;
	private String Username;
	private String Password;
	public SinhVien(String maBanDoc, String hoTen, String ngaySinh, String gioiTinh, String diaChi,String maKhoa, String lop,String user,String pass) {
		super(maBanDoc, hoTen, ngaySinh,  gioiTinh, diaChi);
		MaKhoa = maKhoa;
		Lop = lop;
		Username=user;
		Password=pass;
	}
	
	public String getMaKhoa() {
		return MaKhoa;
	}

	public void setMaKhoa(String maKhoa) {
		MaKhoa = maKhoa;
	}

	public String getLop() {
		return Lop;
	}

	public void setLop(String lop) {
		Lop = lop;
	}

	public String getUserName() {
		return Username;
	}

	public void setUserName(String userName) {
		Username = userName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public  String xacThucBanDoc() {
		return "Sinh viên";
	}
	public  String them() {
		return "Sinh viên không có quyền này";
	}
	public String xoa() {
		return "Sinh viên không có quyền này";
	}
	public  String capNhat() {
		return "Sinh viên không có quyền này";
	}
	public String doiMatKhau() {
		// Viết code cho đổu mật khảu
		return "chua xong";
	}
	@Override
	public String themNguoiDung() {
		return "Sinh viên không có quyền này";
	}
	@Override
	public String xoaNguoiDung() {
		return "Sinh viên không có quyền này";
	}
	

}
