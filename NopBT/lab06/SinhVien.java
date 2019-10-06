package lab06;
import java.util.*;
public class SinhVien {
	private String hoTen;
	private String email;
	private String soDienThoai;
	private String cmnd;
	private ArrayList<String> error = new ArrayList<String>();
	static final String EMAIL_PATTERN = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\\\.[A-Z]{2,6}$";
	//pattern cho dau so moi vietnam.
	static final String PHONE_PATTERN = "(03[2|4|6|8|3|5|7|9]|07[0|6|7|8|9]|08[1|2|3|4|5]|05[6|8|9])+([0-9]{7})";
	//pattern cmnd cho 8 so va 12 so
	static final String CMND_PATTERN = "^[0-9]{12}$|^[0-9]{8}";
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getCmnd() {
		return cmnd;
	}
	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}
	
	private boolean requireEmail() {
		
		return this.email.matches(EMAIL_PATTERN);
	}
	
	public boolean requirePhone() {
		
		return this.soDienThoai.matches(PHONE_PATTERN);
	}
	private boolean requireCMND() {
		return this.cmnd.matches(CMND_PATTERN);
	}
	
	public boolean hasError() {
		if(!this.requireCMND()) this.error.add("CMND is Invalid");
		if(!this.requireEmail()) this.error.add("Email is Invalid");
		if(!this.requirePhone()) this.error.add("PhoneNumer is Invalid");
		
		return this.error.size() > 0;
	}
	
	public void showError() {
		this.error.forEach((e) -> System.out.println(e));
	}
	public void Nhap() {
		Scanner scanner  = new Scanner(System.in);
		System.out.print("Nhap Ho Ten : ");
		this.setHoTen(scanner.nextLine());
		System.out.print("Nhap Email: ");
		this.setEmail(scanner.nextLine());
		System.out.print("Nhap So Dien Thoai: ");
		this.setSoDienThoai(scanner.nextLine());
		System.out.print("Nhap CMND: ");
		this.setCmnd(scanner.nextLine());
		
	}
	
	public void Xuat() {
		System.out.println("Ten san pham: " + this.getHoTen());
		System.out.println("Don gia: " + this.getEmail());
		System.out.println("Hang: " + this.getSoDienThoai());
		System.out.println("Hang: " + this.getCmnd());		
	}
	
	
}
