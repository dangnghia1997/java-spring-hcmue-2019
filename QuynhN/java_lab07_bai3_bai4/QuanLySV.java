/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java_lab07_bai3_bai4;

import java.util.Arrays;
import java.util.Scanner;
import java_lab7_bai2.SinhVienSp;

/**
 *
 * @author Nhu
 */
public class QuanLySV {

    public static void main(String[] args) {
        int n = -1;
        SinhVienCntt[] cntt = null;
        SinhVienQtkd[] qtkd = null;
        int dssv = -1;
        int slsv = -1;
        int mkt = -1;
        do {
            System.out.println("#############Menu#############");
            System.out.println("1.Nhập danh sách sinh viên");
            System.out.println("2.Xuất danh sách sinh viên.");
            System.out.println("3.Xuất danh sách sinh viên giỏi.");
            System.out.println("4.Sắp xếp danh sách sinh viên theo điểm.");
            System.out.println("Mời bạn chọn(nhấn 0 khi muốn kết thúc): ");
            Scanner scanner = new Scanner(System.in);
            n = scanner.nextInt();

            if (n == 1) {

                System.out.println("Danh sách sinh viên: ");
                System.out.println("1. Sinh viên công nghệ thông tin");
                System.out.println("2. Sinh viên marketing");
                System.out.println("3. Sinh viên marketing và công nghệ thông tin");
                System.out.println("Mời bạn nhập lựa chọn: ");
                Scanner sn = new Scanner(System.in);
                do {
                    dssv = sn.nextInt();
                } while (dssv == -1);

                if (dssv == 1) {

                    System.out.println("Mời bạn nhập số lượng sinh viên: ");
                    do {
                        slsv = sn.nextInt();
                    } while (slsv == -1);
                    String hoten = "";
                    double diemjava = 0;
                    double diemCss = 0;
                    double diemHtml = 0;
                    cntt = new SinhVienCntt[slsv];
                    for (int i = 0; i < slsv; i++) {
                        System.out.println("Nhập họ tên: ");
                        sn = new Scanner(System.in);
                        hoten = sn.nextLine();

                        System.out.println("Nhập điểm java: ");
                        diemjava = sn.nextDouble();
                        System.out.println("Nhập điểm Css: ");
                        diemCss = sn.nextDouble();
                        System.out.println("Nhập điểm Html: ");
                        diemHtml = sn.nextDouble();
                        cntt[i] = new SinhVienCntt(hoten, diemjava, diemCss, diemHtml);
                    }
                } else if (dssv == 2) {

                    System.out.println("Mời bạn nhập số lượng sinh viên: ");
                    do {
                        mkt = sn.nextInt();
                    } while (mkt == -1);
                    String hoten = "";
                    double diemmarketing = 0;
                    double diemsales = 0;

                    qtkd = new SinhVienQtkd[mkt];
                    for (int i = 0; i < mkt; i++) {
                        System.out.println("Nhập họ tên: ");
                        sn = new Scanner(System.in);
                        hoten = sn.nextLine();

                        System.out.println("Nhập điểm marketing: ");
                        diemmarketing = sn.nextDouble();
                        System.out.println("Nhập điểm sales: ");
                        diemsales = sn.nextDouble();

                        qtkd[i] = new SinhVienQtkd(hoten, diemmarketing, diemsales);
                    }
                } else if (dssv == 3) {
                    System.out.println("Mời bạn nhập số lượng sinh viên công nghệ thông tin: ");

                    System.out.println("Mời bạn nhập số lượng sinh viên: ");
                    do {
                        slsv = sn.nextInt();
                    } while (slsv == -1);
                    String hoten = "";
                    double diemjava = 0;
                    double diemCss = 0;
                    double diemHtml = 0;
                    cntt = new SinhVienCntt[slsv];
                    for (int i = 0; i < slsv; i++) {
                        System.out.println("Nhập họ tên: ");
                        sn = new Scanner(System.in);
                        hoten = sn.nextLine();

                        System.out.println("Nhập điểm java: ");
                        diemjava = sn.nextDouble();
                        System.out.println("Nhập điểm Css: ");
                        diemCss = sn.nextDouble();
                        System.out.println("Nhập điểm Html: ");
                        diemHtml = sn.nextDouble();
                        cntt[i] = new SinhVienCntt(hoten, diemjava, diemCss, diemHtml);
                    }
                    System.out.println("Mời bạn nhập số lượng sinh viên marketing: ");

                    do {
                        mkt = sn.nextInt();
                    } while (mkt == -1);
                    double diemmarketing = 0;
                    double diemsales = 0;

                    qtkd = new SinhVienQtkd[mkt];
                    for (int i = 0; i < mkt; i++) {
                        System.out.println("Nhập họ tên: ");
                        sn = new Scanner(System.in);
                        hoten = sn.nextLine();

                        System.out.println("Nhập điểm marketing: ");
                        diemmarketing = sn.nextDouble();
                        System.out.println("Nhập điểm sales: ");
                        diemsales = sn.nextDouble();

                        qtkd[i] = new SinhVienQtkd(hoten, diemmarketing, diemsales);
                    }

                }
            } else if (n == 2) {
                if (slsv != -1 && mkt == -1) {
                    String hocluc = "";
                    for (int i = 0; i < slsv; i++) {

                        System.out.println(String.format("Họ tên: %s", cntt[i].hoTen));
                        System.out.println(String.format(": Điểm java: %.1f", cntt[i].diemJava));
                        System.out.println(String.format(": Điểm css: %.1f", cntt[i].diemCss));
                        System.out.println(String.format(": Điểm html: %.1f", cntt[i].diemHtml));
                    }
                } else if (slsv == -1 && mkt != -1) {
                    String hocluc = "";
                    for (int i = 0; i < mkt; i++) {

                        System.out.println(String.format("Họ tên: %s", qtkd[i].hoTen));
                        System.out.println(String.format(": Điểm marketing: %.1f", qtkd[i].diemMarketing));
                        System.out.println(String.format(": Điểm marketing: %.1f", qtkd[i].diemSales));
                    }
                } else {
                    System.out.println("Danh sách sinh viên giỏi công nghệ thông tin");
                    for (int i = 0; i < slsv; i++) {
                        System.out.println(String.format("Họ tên: %s", cntt[i].hoTen));
                        System.out.println(String.format(": Điểm java: %.1f", cntt[i].diemJava));
                        System.out.println(String.format(": Điểm css: %.1f", cntt[i].diemCss));
                        System.out.println(String.format(": Điểm html: %.1f", cntt[i].diemHtml));
                    }
                    System.out.println("Danh sách sinh viên giỏi quản trị kinh doang");
                    for (int i = 0; i < mkt; i++) {
                        System.out.println(String.format("Họ tên: %s", qtkd[i].hoTen));
                        System.out.println(String.format(": Điểm marketing: %.1f", qtkd[i].diemMarketing));
                        System.out.println(String.format(": Điểm marketing: %.1f", qtkd[i].diemSales));
                    }
                }
            } else if (n == 3) {
                if (slsv > -1 && mkt == -1) {
                    String hocluc = "";
                    for (int i = 0; i < slsv; i++) {
                        if (cntt[i].getHocLuc().equalsIgnoreCase("Giỏi")) {
                            System.out.println(String.format(": Điểm: %.1f", cntt[i].getDiem()));
                        }
                    }
                } else if (slsv == -1 && mkt > -1) {
                    String hocluc = "";
                    for (int i = 0; i < mkt; i++) {
                        if (qtkd[i].getHocLuc().equals("Giỏi")) {
                            System.out.println(String.format("Họ tên: %s", qtkd[i].hoTen));
                            System.out.println(String.format(": Điểm: %.1f", qtkd[i].getDiem()));
                        }
                    }
                } else {
                    System.out.println("Danh sách sinh viên giỏi công nghệ thông tin");
                    for (int i = 0; i < slsv; i++) {
                        if (cntt[i].getHocLuc().equals("Giỏi")) {
                            System.out.println(String.format("Họ tên: %s", cntt[i].hoTen));
                            System.out.println(String.format(": Điểm: %.1f", cntt[i].getDiem()));
                        }
                    }

                    System.out.println("Danh sách sinh viên giỏi quản trị kinh doanh");
                    for (int i = 0; i < mkt; i++) {
                        if (qtkd[i].getHocLuc().equals("Giỏi")) {
                            System.out.println(String.format("Họ tên: %s", qtkd[i].hoTen));
                            System.out.println(String.format(": Điểm: %.1f", qtkd[i].getDiem()));
                        }
                    }
                }

            } else if (n == 4) {
                if (slsv != -1 && mkt == -1) {
                    int temp = 0;
                    for (int i = 0; i < slsv - 1; i++) {
                        for (int j = i + 1; j < slsv; j++) {
                            if (cntt[i].getDiem() < cntt[j].getDiem()) {
                                temp = j;
                                cntt[j] = cntt[i];
                                cntt[i] = cntt[temp];
                            }
                        }
                    }

                    for (int i = 0; i < slsv; i++) {
                        System.out.println(String.format("Họ tên: %s", cntt[i].hoTen));
                        System.out.println(String.format(": Điểm java: %.1f", cntt[i].diemJava));
                        System.out.println(String.format(": Điểm css: %.1f", cntt[i].diemCss));
                        System.out.println(String.format(": Điểm html: %.1f", cntt[i].diemHtml));
                    }
                } else if (slsv == -1 && mkt != -1) {
                    int temp = 0;
                    for (int i = 0; i < mkt - 1; i++) {
                        for (int j = i + 1; j < mkt; j++) {
                            if (qtkd[i].getDiem() < qtkd[j].getDiem()) {
                                temp = j;
                                qtkd[j] = qtkd[i];
                                qtkd[i] = qtkd[temp];
                            }
                        }
                    }
                    for (int i = 0; i < mkt; i++) {

                        System.out.println(String.format("Họ tên: %s", qtkd[i].hoTen));
                        System.out.println(String.format(": Điểm marketing: %.1f", qtkd[i].diemMarketing));
                        System.out.println(String.format(": Điểm marketing: %.1f", qtkd[i].diemSales));
                    }
                } else {
                    System.out.println("Danh sách sinh viên công nghệ thông tin");
                    int temp = 0;
                    for (int i = 0; i < slsv - 1; i++) {
                        for (int j = i + 1; j < slsv; j++) {
                            if (cntt[i].getDiem() < cntt[j].getDiem()) {
                                temp = j;
                                cntt[j] = cntt[i];
                                cntt[i] = cntt[temp];
                            }
                        }
                    }

                    for (int i = 0; i < slsv; i++) {
                        System.out.println(String.format("Họ tên: %s", cntt[i].hoTen));
                        System.out.println(String.format(": Điểm java: %.1f", cntt[i].diemJava));
                        System.out.println(String.format(": Điểm css: %.1f", cntt[i].diemCss));
                        System.out.println(String.format(": Điểm html: %.1f", cntt[i].diemHtml));
                    }
                    System.out.println("Danh sách sinh viên quản trị kinh doanh");
                    int tempp = 0;
                    for (int i = 0; i < mkt - 1; i++) {
                        for (int j = i + 1; j < mkt; j++) {
                            if (qtkd[i].getDiem() < qtkd[j].getDiem()) {
                                tempp = j;
                                qtkd[j] = qtkd[i];
                                qtkd[i] = qtkd[tempp];
                            }
                        }
                    }
                    for (int i = 0; i < mkt; i++) {
                        System.out.println(String.format("Họ tên: %s", qtkd[i].hoTen));
                        System.out.println(String.format(": Điểm marketing: %.1f", qtkd[i].diemMarketing));
                        System.out.println(String.format(": Điểm marketing: %.1f", qtkd[i].diemSales));
                    }
                }
            }
            if (n != 0) {
                n = -1;
            }

        } while (n == -1);

    }

}
