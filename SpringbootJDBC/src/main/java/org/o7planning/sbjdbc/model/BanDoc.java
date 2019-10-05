package org.o7planning.sbjdbc.model;

public abstract class BanDoc {
	private String MaBanDoc;
	private String HoTen;
	private String NgaySinh;
	private String GioiTinh;
	public String getMaBanDoc() {
		return MaBanDoc;
	}
	public void setMaBanDoc(String maBanDoc) {
		MaBanDoc = maBanDoc;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	private String DiaChi;
	
	public BanDoc(String maBanDoc, String hoTen, String ngaySinh, String gioiTinh, String diaChi) {
		super();
		MaBanDoc = maBanDoc;
		HoTen = hoTen;
		NgaySinh = ngaySinh;
		GioiTinh = gioiTinh;
		DiaChi = diaChi;
	}
	public abstract String xacThucBanDoc();
	public abstract String them();
	public abstract String xoa();
	public abstract String capNhat();
	public abstract String doiMatKhau();

}
