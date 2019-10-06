package lab06;
import java.util.*; 
public class Lab06bai01 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		System.out.print("Nhap ho ten: ");
		String hoTen = scan.nextLine();
		int indexFirstSpace = hoTen.indexOf(" ");
		int indexLastSpace = hoTen.lastIndexOf(" ");
		String ho = hoTen.substring(0, indexFirstSpace).toUpperCase();
		String tenDem = hoTen.substring(indexFirstSpace+1, indexLastSpace);
		String ten = hoTen.substring(indexLastSpace+1).toUpperCase();

		System.out.println("Họ: " + ho);
		System.out.println("Tên đệm: " + tenDem);
		System.out.println("Tên: " + ten);

	}

}
