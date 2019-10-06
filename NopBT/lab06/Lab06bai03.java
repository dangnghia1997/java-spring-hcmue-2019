package lab06;
import java.util.*;
public class Lab06bai03 {

	public static void main(String[] args) {
		ArrayList<SinhVien> array = new ArrayList<SinhVien>();
		for(int i = 0; i < 5; i++) {
			SinhVien sv = new SinhVien();
			sv.Nhap();
			if(sv.hasError()) {
				sv.showError();
				break;
			}
			array.add(sv);
		}
		
		//Xuat
		if(!array.isEmpty()) {
			array.forEach((sv) -> {
				sv.Xuat();
			});
		}
		
		
//		SinhVien sv = new SinhVien();
//		sv.Nhap();
//		if(!sv.requirePhone()) {
//			System.out.print("Error");
//		}else{
//			System.out.print("No error");
//		}
	}

}
