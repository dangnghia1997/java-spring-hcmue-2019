package lab06;
import java.util.*;

public class Lab06bai02 {
	public static boolean find = false;
	public static void main(String[] args) {
		ArrayList<SanPham> array = new ArrayList<SanPham>();
		for(int i = 0; i < 2; i++) {
			SanPham  sp = new SanPham();
			sp.Nhap();
			array.add(sp);
		}
		
		array.forEach((sp) -> {
			if(sp.getHang().matches("Nokia")) {
				find = true;
				sp.Xuat();
			}
			
		});
		
		if(!find) {
			System.out.println("No Result");
		}
		
	}

}
