/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java_Lab05;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

/**
 *
 * @author Nhu
 */
public class SanPham {

    public String name;
    public Double price;

    public SanPham(String name, Double price) {
        this.name = name;
        this.price = price;
    }

    public void xuat() {//Tạo thêm phương thức xuất để xuất sản phẩm
        System.out.println(String.format("%s: %.1f ", this.name, this.price));
    }

    public static void main(String[] args) {
        int opt = -1;
        ArrayList<SanPham> sp = new ArrayList<>();
        do {
            System.out.println("------Menu------");
            System.out.println("1.Nhập danh sách sản phẩm.");
            System.out.println("2.Sắp xếp sản phẩm theo giá và xuất ra màn hình.");
            System.out.println("3.Tìm và xóa sản phẩm.");
            System.out.println("4.Xuất giá trung bình của các sản phẩm");
            System.out.println("5.Kết thúc.");
            System.out.println("Moi ban chon: ");
            Scanner scanner = new Scanner(System.in);
            opt = scanner.nextInt();//Đây là biến lưu option mà user nhập.
            if (opt == 1) {//Tương ứng với mỗi option sẽ thực hiện những yêu cầu khác nhau.
                while (true) {
                    System.out.println("Nhap ten san pham (Y/N)?");
                    scanner = new Scanner(System.in);
                    if (scanner.nextLine().equals("N")) {
                        break;//Thoát khi nhập N
                    }
                    scanner = new Scanner(System.in);
                    String tenSp = scanner.nextLine();//Biến lưu tên
                    System.out.println("Nhap gia san pham");
                    scanner = new Scanner(System.in);
                    Double gia = scanner.nextDouble();//Biến lưu giá
                    SanPham sanpham = new SanPham(tenSp, gia);//Sản phẩm khi user nhập tên và giá
                    sp.add(sanpham);//Lưu vào arraylist
                }
            } else if (opt == 2) {
                /*SanPham min;
                for (SanPham i : sp) {
                    for (SanPham j : sp) {
                        if (i.price > j.price) {
                            min = j;
                            j = i;
                            i = min;
                        }
                    }
                }*/
                Comparator<SanPham> comp = new Comparator<SanPham>(){
                @Override
                public int compare(SanPham o1,SanPham o2){
                   return o1.price.compareTo(o2.price);
                }
                };
                
                
                Collections.sort(sp,comp);//Sắp xếp giảm dần
                Collections.reverse(sp);
                for(SanPham i: sp) i.xuat();

            } else if (opt == 3) {
                System.out.println("Nhap ten san pham can tim: ");
                scanner = new Scanner(System.in);
                String ten = scanner.nextLine();//Nhạp sản phẩm
                int dem = 0;
                for (SanPham i : sp) {//Duyệt sản phẩm
                    if (i.name.equalsIgnoreCase(ten)) {//Tìm tên sản phẩm
                        sp.remove(i);//Xóa
                        dem++;
                        System.out.println("Xóa thành công!!");
                        break;
                    }
                }
                if (dem == 0) {
                    System.out.println("Không có sản phẩm cần tìm!!");
                }

            } else if (opt == 4) {
                Double tong = 0.0;
                for (SanPham i : sp) {
                    tong += i.price;
                }
                System.out.println(tong / sp.size());
            }

        } while (opt != 5);

    }

}
