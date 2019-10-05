package org.o7planning.sbjdbc.model;

public class Sach {
	private String MaSach;
	private String TenSach;
	private String TacGia;
	private String NXB;
	private String TheLoaiSach;
	private String Hinh;
	public String getMaSach() {
		return MaSach;
	}
	public void setMaSach(String maSach) {
		MaSach = maSach;
	}
	public String getTenSach() {
		return TenSach;
	}
	public void setTenSach(String tenSach) {
		TenSach = tenSach;
	}
	public String getTacGia() {
		return TacGia;
	}
	public void setTacGia(String tacGia) {
		TacGia = tacGia;
	}
	public String getNXB() {
		return NXB;
	}
	public void setNXB(String nXB) {
		NXB = nXB;
	}
	public String getTheLoaiSach() {
		return TheLoaiSach;
	}
	public void setTheLoaiSach(String theLoaiSach) {
		TheLoaiSach = theLoaiSach;
	}
	public String getHinh() {
		return Hinh;
	}
	public void setHinh(String hinh) {
		Hinh = hinh;
	}
	public Sach(String maSach, String tenSach, String tacGia, String nXB, String theLoaiSach, String hinh) {
		super();
		MaSach = maSach;
		TenSach = tenSach;
		TacGia = tacGia;
		NXB = nXB;
		TheLoaiSach = theLoaiSach;
		Hinh = hinh;
	}
	public String themSach(String tenSach) {
		return "Chuaxong";
	}
	public String xoaSach(String tenSach) {
		return "Chuaxong";
	}
	public String suaSach(String tenSach) {
		return "Chuaxong";
	}
	public String timKiemSach(String tenSach) {
		return "Chuaxong";
	}

}
