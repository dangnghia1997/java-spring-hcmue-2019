package org.o7planning.sbjdbc.model;

public class CB_GV extends BanDoc implements User{
	private String PhongBan;
	private String ChucVu;
	private String UserName;
	private String Password;
	public CB_GV(String maBanDoc, String hoTen, String ngaySinh, String gioiTinh, String diaChi, String phongBan,
			String chucVu) {
		super(maBanDoc, hoTen, ngaySinh, gioiTinh, diaChi);
		PhongBan = phongBan;
		ChucVu = chucVu;
	}
	
	public String getPhongBan() {
		return PhongBan;
	}

	public void setPhongBan(String phongBan) {
		PhongBan = phongBan;
	}

	public String getChucVu() {
		return ChucVu;
	}

	public void setChucVu(String chucVu) {
		ChucVu = chucVu;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public  String xacThucBanDoc() {
		return "Giảng viên";
	}
	public  String them() {
		return "Giảng viên không có quyền này";
	}
	public String xoa() {
		return "Giảng viên không có quyền này";
	}
	public  String capNhat() {
		return "Giảng viên không có quyền này";
	}
	public String doiMatKhau() {
		// Viết code cho đổu mật khảu
		return "chua xong";
	}
	public String themNguoiDung() {
		return "Giảng viên không có quyền này";
	}
	public String xoaNguoiDung() {
		return "Giảng viên không có quyền này";
	}
	
	
	

}
