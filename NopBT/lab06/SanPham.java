package lab06;
import java.util.*;
public class SanPham {
	private String tenSp;
	private double donGia;
	private String hang;
	
	public String getTenSp() {
		return this.tenSp;
	}
	
	public void setTensp(String tenSp) {
		this.tenSp = tenSp;
	}
		
	public double getDonGia() {
		return this.donGia;
	}
	
	public void setDonGia(double donGia) {
		this.donGia = donGia;
	}
	
	public String getHang() {
		return this.hang;
	}
	
	public void setHang(String hang) {
		this.hang = hang;
	}
	
	public void Nhap() {
		Scanner scanner  = new Scanner(System.in);
		System.out.print("Nhap Ten san pham : ");
		this.setTensp(scanner.nextLine());
		System.out.print("Nhap Don gia : ");
		this.setDonGia(scanner.nextDouble());
		scanner.nextLine(); // clear charater \n
		System.out.print("Nhap Hang: ");
		this.setHang(scanner.nextLine());
		
	}
	
	public void Xuat() {
		System.out.println("Ten san pham: " + this.getTenSp());
		System.out.println("Don gia: " + this.getDonGia() );
		System.out.println("Hang: " + this.getHang() );
		
	}
}
