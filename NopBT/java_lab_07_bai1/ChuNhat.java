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
public class ChuNhat {
    public double dai;
    public double rong;
    public ChuNhat(double dai,double rong){
        this.dai=dai;
        this.rong=rong;
    }
    public double getChuVi(){
        return (this.dai+this.rong)*2;
    }
    public double getDienTich(){
        return this.dai*this.rong;
    
    }
    public void xuat(){
        System.out.println(String.format("Chiều dài:%.1f ",this.dai));
        System.out.println(String.format("Chiều rộng:%.1f ",this.rong));
        System.out.println(String.format("Chu vi:%.1f ",this.getChuVi()));
        System.out.println(String.format("Diện tích:%.1f ",this.getDienTich()));
        
    }
    
    
}
