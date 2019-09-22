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
public class SinhVienQtkd extends SinhVienSp{
    public double diemMarketing;
    public double diemSales;
    public SinhVienQtkd(String hoTen,double diemMarketing,double diemSales){
        super(hoTen,"QTKD");
        this.diemMarketing = diemMarketing;
        this.diemSales = diemSales;
    }
    @Override
    public double getDiem(){
        return (2*this.diemMarketing+this.diemSales)/3;
    }
}
