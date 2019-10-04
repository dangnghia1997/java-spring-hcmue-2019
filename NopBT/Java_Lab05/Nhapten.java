/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java_Lab05;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

/**
 *
 * @author Nhu
 */
public class Nhapten {

    public static void main(String[] args) {

        int opt = -1;
        ArrayList<String> arr = new ArrayList<>();
        do {
            System.out.println("------Menu------");
            System.out.println("1.Nhập danh sách họ tên.");
            System.out.println("2.Xuất danh sách họ tên.");
            System.out.println("3.Xuất danh sách ngẫu nhiên.");
            System.out.println("4.Sắp xếp giảm dần và xuất danh sách.");
            System.out.println("5.Tìm và xóa họ tên.");
            System.out.println("6.Kết thúc.");
            System.out.println("Moi ban chon: ");
            Scanner scanner = new Scanner(System.in);
            opt = scanner.nextInt();//Đây là biến lưu option mà user nhập.
            if (opt == 1) {//Tương ứng với mỗi option sẽ thực hiện những yêu cầu khác nhau.
                while (true) {
                    System.out.println("Nhap ho ten (Y/N)?");
                    scanner = new Scanner(System.in);
                    if (scanner.nextLine().equals("N")) {
                        break;//Thoát khi nhập N
                    }
                    scanner = new Scanner(System.in);
                    String hoTen = scanner.nextLine();
                    arr.add(hoTen);//Lưu họ tên với arrayList
                }
            } else if (opt == 2) {
                for (String i : arr) {
                    System.out.println(i);
                }
            } else if (opt == 3) {
                Collections.shuffle(arr);
                for (String i : arr) {
                    System.out.println(i);
                }
            } else if (opt == 4) {
                Collections.sort(arr);
                Collections.reverse(arr);
                for (String i : arr) {
                    System.out.println(i);
                }
            } else if (opt == 5) {
                String ten = "";
                System.out.println("Moi nhap ho ten can xoa: ");
                scanner = new Scanner(System.in);
                ten = scanner.nextLine();//Nhạp họ tên
                int dem = 0;
                for (String i : arr) {//Duyệt tên
                    if (i.equalsIgnoreCase(ten)) {//Tìm tên
                        arr.remove(i);//Xóa
                        dem++;
                        System.out.println("Xóa thành công!!");
                        break;
                    }
                }
                if (dem == 0) {
                    System.out.println("Không có họ tên cần tìm!!");
                }
            }

        } while (opt != 6);
    }
}
