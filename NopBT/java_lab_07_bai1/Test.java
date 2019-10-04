/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java_lab_07_bai1;

/**
 *
 * @author Nhu
 */
public class Test {
    public static void main(String[] args){
        ChuNhat cn = new ChuNhat(4,3);// Chữ nhật có chiều dài là 4 rộng là 3
        ChuNhat vuong = new Vuong(3);// Hình vuông có chiều rộng là 3
        cn.xuat();
        vuong.xuat();
    }
    
}
