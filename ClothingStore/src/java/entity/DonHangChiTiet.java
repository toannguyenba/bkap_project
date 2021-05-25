/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "DonHangChiTiet")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DonHangChiTiet.findAll", query = "SELECT d FROM DonHangChiTiet d")
    , @NamedQuery(name = "DonHangChiTiet.findByMaDH", query = "SELECT d FROM DonHangChiTiet d WHERE d.donHangChiTietPK.maDH = :maDH")
    , @NamedQuery(name = "DonHangChiTiet.findByMaSPCT", query = "SELECT d FROM DonHangChiTiet d WHERE d.donHangChiTietPK.maSPCT = :maSPCT")
    , @NamedQuery(name = "DonHangChiTiet.findBySoLuong", query = "SELECT d FROM DonHangChiTiet d WHERE d.soLuong = :soLuong")
    , @NamedQuery(name = "DonHangChiTiet.findByGiaBan", query = "SELECT d FROM DonHangChiTiet d WHERE d.giaBan = :giaBan")})
public class DonHangChiTiet implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected DonHangChiTietPK donHangChiTietPK;
    @Column(name = "SoLuong")
    private Integer soLuong;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "GiaBan")
    private Double giaBan;
    @JoinColumn(name = "MaDH", referencedColumnName = "MaDH", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private DonHang donHang;
    @JoinColumn(name = "MaSPCT", referencedColumnName = "MaSPCT", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private SanPhamChiTiet sanPhamChiTiet;

    public DonHangChiTiet() {
    }

    public DonHangChiTiet(DonHangChiTietPK donHangChiTietPK) {
        this.donHangChiTietPK = donHangChiTietPK;
    }

    public DonHangChiTiet(int maDH, String maSPCT) {
        this.donHangChiTietPK = new DonHangChiTietPK(maDH, maSPCT);
    }

    public DonHangChiTietPK getDonHangChiTietPK() {
        return donHangChiTietPK;
    }

    public void setDonHangChiTietPK(DonHangChiTietPK donHangChiTietPK) {
        this.donHangChiTietPK = donHangChiTietPK;
    }

    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    public Double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(Double giaBan) {
        this.giaBan = giaBan;
    }

    public DonHang getDonHang() {
        return donHang;
    }

    public void setDonHang(DonHang donHang) {
        this.donHang = donHang;
    }

    public SanPhamChiTiet getSanPhamChiTiet() {
        return sanPhamChiTiet;
    }

    public void setSanPhamChiTiet(SanPhamChiTiet sanPhamChiTiet) {
        this.sanPhamChiTiet = sanPhamChiTiet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (donHangChiTietPK != null ? donHangChiTietPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DonHangChiTiet)) {
            return false;
        }
        DonHangChiTiet other = (DonHangChiTiet) object;
        if ((this.donHangChiTietPK == null && other.donHangChiTietPK != null) || (this.donHangChiTietPK != null && !this.donHangChiTietPK.equals(other.donHangChiTietPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.DonHangChiTiet[ donHangChiTietPK=" + donHangChiTietPK + " ]";
    }
    
}
