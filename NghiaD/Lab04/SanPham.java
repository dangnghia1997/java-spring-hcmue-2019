package Lab04;

import java.util.*;
public class SanPham {
	private String tenSp;
	private double donGia;
	private double giamGia;
	
	public SanPham() {};
		
	public SanPham(String tenSp, double donGia, double giamGia) {
		this.tenSp = tenSp;
		this.donGia = donGia;
		this.giamGia = giamGia;
	}
	
	public SanPham(String tenSp, double donGia) {
		this(tenSp, donGia, 0);
	}
	
	public String getTenSp() {
		return tenSp;
	}
	public void setTenSp(String tenSp) {
		this.tenSp = tenSp;
	}
	public double getDonGia() {
		return donGia;
	}
	public void setDonGia(double donGia) {
		this.donGia = donGia;
	}
	public double getGiamGia() {
		return giamGia;
	}
	public void setGiamGia(double giamGia) {
		this.giamGia = giamGia;
	}
	
	private double getThueNhapKhau() {
		return this.donGia * 0.1;
	}
	
	public void nhap() {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Nhap Ten san pham: ");
		this.setTenSp(scanner.nextLine());
		System.out.print("Nhap don gia: ");
		this.setDonGia(scanner.nextDouble());
		System.out.print("Nhap giam gia: ");
		this.setGiamGia(scanner.nextDouble());
	}
	
	public void xuat() {
		System.out.println("Ten san pham: " + this.getTenSp());	
		System.out.println("Don gia: " + this.getDonGia());
		System.out.println("Giam gia: " + this.getGiamGia());
		System.out.println("Thue nhap khau: " + this.getThueNhapKhau());
	
	}
}
