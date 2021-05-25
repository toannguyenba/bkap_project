/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.DonHangChiTiet;
import entity.SanPham;
import entity.SanPhamChiTiet;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author Admin
 */
public class SanPhamInfo {

    private SanPham sp;
    private double giaMin;
    private double giaMax;
    private int soLuong;
    private int daBan;
    private double thuNhap;

    public SanPhamInfo() {
    }

    public SanPhamInfo(SanPham sp, double giaMin, double giaMax, int soLuong, int daBan, double thuNhap) {
        this.sp = sp;
        this.giaMin = giaMin;
        this.giaMax = giaMax;
        this.soLuong = soLuong;
        this.daBan = daBan;
        this.thuNhap = thuNhap;
    }

    public SanPham getSp() {
        return sp;
    }

    public double getGiaMin() {
        return giaMin;
    }

    public void setGiaMin(double giaMin) {
        this.giaMin = giaMin;
    }

    public double getGiaMax() {
        return giaMax;
    }

    public void setGiaMax(double giaMax) {
        this.giaMax = giaMax;
    }

    public void setSp(SanPham sp) {
        this.sp = sp;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public int getDaBan() {
        return daBan;
    }

    public void setDaBan(int daBan) {
        this.daBan = daBan;
    }

    public double getThuNhap() {
        return thuNhap;
    }

    public void setThuNhap(double thuNhap) {
        this.thuNhap = thuNhap;
    }

    public SanPhamInfo getInfo(SanPham sanPham) {
        this.sp = sanPham;
        double minPrice = Double.MAX_VALUE;
        double maxPrice = Double.MIN_VALUE;
        //tong so luong san pham chi tiet
        int soLuong = 0;
        //set min max Price
        for (SanPhamChiTiet spct : sanPham.getSanPhamChiTietCollection()) {
            double giaBan = spct.getGiaGoc() - spct.getGiaGoc() * spct.getGiaKM() / 100;
            if (giaBan < minPrice) {
                minPrice = giaBan;
            }
            if (giaBan > maxPrice) {
                maxPrice = giaBan;
            }
            this.giaMax = maxPrice;
            this.giaMin = minPrice;
            soLuong += spct.getSoLuong();
            for (DonHangChiTiet dhct : spct.getDonHangChiTietCollection()) {
                this.daBan += dhct.getSoLuong();
                this.thuNhap += dhct.getGiaBan()*dhct.getSoLuong();
            }
        }
        this.soLuong = soLuong;
        return this;
    }
    
    public Collection<SanPhamInfo> getInfo(Collection<SanPham> sanPham) {
        Collection result = new ArrayList();
        for (SanPham sp : sanPham) {
            result.add(new SanPhamInfo().getInfo(sp));
        }
        return result;
    }
    
    public Collection<SanPhamInfo> getSPCTInfo(Collection<SanPhamChiTiet> list) {
        Collection<SanPhamInfo> result = new ArrayList();
        for (SanPhamChiTiet spct : list) {
            if (!duplicateCheck(spct, result)) {
                result.add(new SanPhamInfo().getInfo(spct.getMaSP()));
            }
        }
        return result;
    }
    
    private static boolean duplicateCheck(SanPhamChiTiet spct, Collection<SanPhamInfo> list) {
        if (!list.isEmpty()) {
            for (SanPhamInfo sp : list) {
                if (sp.getSp().getMaSP().equals(spct.getMaSP().getMaSP())) {
                    return true;
                }
            }
        }
        return false;
    }
}
