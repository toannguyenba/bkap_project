/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.SanPhamChiTietDAO;
import entity.SanPhamChiTiet;

/**
 *
 * @author Admin
 */
public class CartLine {
    private SanPhamChiTiet spct;
    private String maSPCT;
    private int soLuong;

    public CartLine() {
    }

    public CartLine(SanPhamChiTiet spct, String maSPCT, int soLuong) {
        this.spct = spct;
        this.maSPCT = maSPCT;
        this.soLuong = soLuong;
    }     

    public SanPhamChiTiet getSpct() {
        return spct;
    }

    public void setSpct(SanPhamChiTiet spct) {
        this.spct = spct;
    }

    public String getMaSPCT() {
        return maSPCT;
    }

    public void setMaSPCT(String maSPCT) {
        this.maSPCT = maSPCT;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }
    
    public void updateInfo() {
        //lay thong tin cho spct
        this.spct = new SanPhamChiTietDAO().getSPCTByID(this.maSPCT);
        //kiem tra xem co nhieu hon so luong hien co khong
        if(this.soLuong > this.spct.getSoLuong()) {
            this.soLuong = this.spct.getSoLuong();
        }
    }
    
    public double calculatePrice() {
        return this.soLuong *this.getGiaBan();
    }
    
    public double getGiaBan() {
        return this.spct.getGiaGoc() - this.spct.getGiaGoc() * this.spct.getGiaKM()/100;
    }
}
