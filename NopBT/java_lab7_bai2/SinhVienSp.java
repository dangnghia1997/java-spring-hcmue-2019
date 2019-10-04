/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java_lab7_bai2;

/**
 *
 * @author Nhu
 */
public abstract class SinhVienSp {

    public String hoTen;
    public String nganh;

    public SinhVienSp(String hoTen, String nganh) {
        this.hoTen = hoTen;
        this.nganh = nganh;
    }

    public abstract double getDiem();//Là phương thứ trừu tượng nên không cần thân hàm

    public String getHocLuc() {
        double diem = this.getDiem();
        String hocluc = "";
        if (diem < 5) {
            hocluc = "Yếu";
        } else if (5 <= diem && diem < 6.5) {
            hocluc = "Trung bình";
        } else if (6.5 <= diem && diem < 7.5) {
            hocluc = "Khá";
        } else if (7.5 <= diem && diem < 9) {
            hocluc = "Giỏi";
        } else if (diem >= 9.5) {
            hocluc = "Xuất sắc";
        }
        return hocluc;
    }
    

}
