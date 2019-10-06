package org.o7planning.sbjdbc.model;

public class TheMuonSach {
   private String MaTheMuon;
   private String MaBanDoc;
   private int NgayMuon;
   private int SoNgayDuocmuon;
   private String NgayTraDuKien;
   private String NgayTraThucTe;
   private int SoNgayMuonTiep;
   private int TinhTrang;
public String getMaTheMuon() {
	return MaTheMuon;
}
public void setMaTheMuon(String maTheMuon) {
	MaTheMuon = maTheMuon;
}
public String getMaBanDoc() {
	return MaBanDoc;
}
public void setMaBanDoc(String maBanDoc) {
	MaBanDoc = maBanDoc;
}
public int getNgayMuon() {
	return NgayMuon;
}
public void setNgayMuon(int ngayMuon) {
	NgayMuon = ngayMuon;
}
public int getSoNgayDuocmuon() {
	return SoNgayDuocmuon;
}
public void setSoNgayDuocmuon(int soNgayDuocmuon) {
	SoNgayDuocmuon = soNgayDuocmuon;
}
public String getNgayTraDuKien() {
	return NgayTraDuKien;
}
public void setNgayTraDuKien(String ngayTraDuKien) {
	NgayTraDuKien = ngayTraDuKien;
}
public String getNgayTraThucTe() {
	return NgayTraThucTe;
}
public void setNgayTraThucTe(String ngayTraThucTe) {
	NgayTraThucTe = ngayTraThucTe;
}
public int getSoNgayMuonTiep() {
	return SoNgayMuonTiep;
}
public void setSoNgayMuonTiep(int soNgayMuonTiep) {
	SoNgayMuonTiep = soNgayMuonTiep;
}
public int getTinhTrang() {
	return TinhTrang;
}
public void setTinhTrang(int tinhTrang) {
	TinhTrang = tinhTrang;
}
public TheMuonSach(String maTheMuon, String maBanDoc, int ngayMuon, int soNgayDuocmuon, String ngayTraDuKien,
		String ngayTraThucTe, int soNgayMuonTiep, int tinhTrang) {
	super();
	MaTheMuon = maTheMuon;
	MaBanDoc = maBanDoc;
	NgayMuon = ngayMuon;
	SoNgayDuocmuon = soNgayDuocmuon;
	NgayTraDuKien = ngayTraDuKien;
	NgayTraThucTe = ngayTraThucTe;
	SoNgayMuonTiep = soNgayMuonTiep;
	TinhTrang = tinhTrang;
}
public String themPMS() {
	//Viet chuong trinh them PMS
	return "Chua xong";
}
public String xoaPMS() {
	//Viet chuong trinh them PMS
	return "Chua xong";
}
public String muonSach() {
	//Viet chuong trinh muon sach
	//Kiem tra dk mượn sách là đã trả sách rồi hoặc chưa mượn sách cho mượn tối đa 5 cuốn ko quá 20 ngày
	
	return "Chua xong";
}
public String traSach() {
	//Viet chuong trinh them PMS
	//Kiểm tra ngày mượn nếu đúng ngày trả thì thông báo thành công không thì ra thông báo "trả trễ"
	return "Chua xong";
}

}
