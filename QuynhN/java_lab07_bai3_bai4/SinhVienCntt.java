/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java_lab07_bai3_bai4;

import java_lab7_bai2.SinhVienSp;

/**
 *
 * @author Nhu
 */
public class SinhVienCntt extends SinhVienSp {

    public double diemJava;
    public double diemHtml;
    public double diemCss;

    public SinhVienCntt(String hoTen, double diemJava, double diemCss, double diemHtml) {
        super(hoTen, "CNTT");
        this.diemJava = diemJava;
        this.diemCss = diemCss;
        this.diemHtml = diemHtml;
    }

    @Override
    public double getDiem() {
        return (2 * this.diemJava + this.diemCss + this.diemHtml) / 4;
    }
}
