/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.DonHangChiTiet;
import entity.SanPhamChiTiet;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author Admin
 */
public class SPCTInfo {

    private SanPhamChiTiet spct;
    private double giaBan;
    private int daBan;
    private int thuNhap;

    public SPCTInfo() {
    }

    public SPCTInfo(SanPhamChiTiet spct, int daBan, int thuNhap, double giaBan) {
        this.spct = spct;
        this.daBan = daBan;
        this.thuNhap = thuNhap;
        this.giaBan = giaBan;
    }

    public SanPhamChiTiet getSpct() {
        return spct;
    }

    public void setSpct(SanPhamChiTiet spct) {
        this.spct = spct;
    }

    public int getDaBan() {
        return daBan;
    }

    public void setDaBan(int daBan) {
        this.daBan = daBan;
    }

    public int getThuNhap() {
        return thuNhap;
    }

    public void setThuNhap(int thuNhap) {
        this.thuNhap = thuNhap;
    }

    public double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(double giaBan) {
        this.giaBan = giaBan;
    }

    public SPCTInfo getInfo(SanPhamChiTiet spct) {
        this.spct = spct;
        this.giaBan = this.spct.getGiaGoc() - this.spct.getGiaGoc() * this.spct.getGiaKM() / 100;
        this.daBan = 0;
        this.thuNhap = 0;
        for (DonHangChiTiet dhct : this.spct.getDonHangChiTietCollection()) {
            this.daBan += dhct.getSoLuong();
            this.thuNhap += dhct.getSoLuong() * dhct.getGiaBan();
        }
        return this;
    }

    public Collection<SPCTInfo> getInfo(Collection<SanPhamChiTiet> list) {
        Collection<SPCTInfo> result = new ArrayList();
        for (SanPhamChiTiet spct : list) {
                result.add(new SPCTInfo().getInfo(spct));
        }
        return result;
    }
}
