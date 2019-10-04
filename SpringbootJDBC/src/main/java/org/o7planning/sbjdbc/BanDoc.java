package org.o7planning.sbjdbc;

public abstract class BanDoc {
	private String MaBanDoc;
	private String HoTen;
	private String NgaySinh;
	private String GioiTinh;
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
