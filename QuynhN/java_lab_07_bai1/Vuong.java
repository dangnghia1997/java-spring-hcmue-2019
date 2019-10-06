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
public class Vuong extends ChuNhat {

    public Vuong(double canh) {
        super(canh, canh);// goi lại phương thức khởi tạo của lớp cha dùng super(canh,canh)=>this.dai=this.rong=canh;
    }

    @Override
    public void xuat() {
        System.out.println(String.format("Cạnh hình vuông: %.1f", this.dai));
        System.out.println(String.format("Chu vi: %.1f", this.getChuVi()));
        System.out.println(String.format("Diện tích: %.1f", this.getDienTich()));
    }
}
