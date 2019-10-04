/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java_Lab05;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Nhu
 */
public class NhapSo {

    public static void main(String[] args) {
        ArrayList<Double> arr = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("Nhập phần tử Y/N?");
            scanner = new Scanner(System.in);
            if (scanner.nextLine().equals("N")) {
                break;
            }

            Double x = scanner.nextDouble();
            arr.add(x);
        }
        System.out.println("Danh sách các phần tử: ");
        Double tong = 0.0;
        for (Double i : arr) {
            tong += i;
            System.out.println(i);
        }
        System.out.println("Tổng các phần tử: ");
        System.out.println(tong);
    }

}
