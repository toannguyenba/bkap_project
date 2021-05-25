/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Admin
 */
@Embeddable
public class DonHangChiTietPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "MaDH")
    private int maDH;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "MaSPCT")
    private String maSPCT;

    public DonHangChiTietPK() {
    }

    public DonHangChiTietPK(int maDH, String maSPCT) {
        this.maDH = maDH;
        this.maSPCT = maSPCT;
    }

    public int getMaDH() {
        return maDH;
    }

    public void setMaDH(int maDH) {
        this.maDH = maDH;
    }

    public String getMaSPCT() {
        return maSPCT;
    }

    public void setMaSPCT(String maSPCT) {
        this.maSPCT = maSPCT;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) maDH;
        hash += (maSPCT != null ? maSPCT.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DonHangChiTietPK)) {
            return false;
        }
        DonHangChiTietPK other = (DonHangChiTietPK) object;
        if (this.maDH != other.maDH) {
            return false;
        }
        if ((this.maSPCT == null && other.maSPCT != null) || (this.maSPCT != null && !this.maSPCT.equals(other.maSPCT))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.DonHangChiTietPK[ maDH=" + maDH + ", maSPCT=" + maSPCT + " ]";
    }
    
}
