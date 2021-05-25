/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "SanPhamChiTiet")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SanPhamChiTiet.findAll", query = "SELECT s FROM SanPhamChiTiet s")
    , @NamedQuery(name = "SanPhamChiTiet.findByMaSPCT", query = "SELECT s FROM SanPhamChiTiet s WHERE s.maSPCT = :maSPCT")
    , @NamedQuery(name = "SanPhamChiTiet.findBySoLuong", query = "SELECT s FROM SanPhamChiTiet s WHERE s.soLuong = :soLuong")
    , @NamedQuery(name = "SanPhamChiTiet.findByGiaGoc", query = "SELECT s FROM SanPhamChiTiet s WHERE s.giaGoc = :giaGoc")
    , @NamedQuery(name = "SanPhamChiTiet.findByGiaKM", query = "SELECT s FROM SanPhamChiTiet s WHERE s.giaKM = :giaKM")
    , @NamedQuery(name = "SanPhamChiTiet.findByTrangThai", query = "SELECT s FROM SanPhamChiTiet s WHERE s.trangThai = :trangThai")})
public class SanPhamChiTiet implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "MaSPCT")
    private String maSPCT;
    @Column(name = "SoLuong")
    private Integer soLuong;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "GiaGoc")
    private Double giaGoc;
    @Column(name = "GiaKM")
    private Double giaKM;
    @Column(name = "TrangThai")
    private Boolean trangThai;
    @JoinColumn(name = "MaKichThuoc", referencedColumnName = "MaKichThuoc")
    @ManyToOne
    private KichThuoc maKichThuoc;
    @JoinColumn(name = "MaMauSac", referencedColumnName = "MaMauSac")
    @ManyToOne
    private MauSac maMauSac;
    @JoinColumn(name = "MaSP", referencedColumnName = "MaSP")
    @ManyToOne
    private SanPham maSP;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "sanPhamChiTiet")
    private Collection<DonHangChiTiet> donHangChiTietCollection;

    public SanPhamChiTiet() {
    }

    public SanPhamChiTiet(String maSPCT) {
        this.maSPCT = maSPCT;
    }

    public String getMaSPCT() {
        return maSPCT;
    }

    public void setMaSPCT(String maSPCT) {
        this.maSPCT = maSPCT;
    }

    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    public Double getGiaGoc() {
        return giaGoc;
    }

    public void setGiaGoc(Double giaGoc) {
        this.giaGoc = giaGoc;
    }

    public Double getGiaKM() {
        return giaKM;
    }

    public void setGiaKM(Double giaKM) {
        this.giaKM = giaKM;
    }

    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    public KichThuoc getMaKichThuoc() {
        return maKichThuoc;
    }

    public void setMaKichThuoc(KichThuoc maKichThuoc) {
        this.maKichThuoc = maKichThuoc;
    }

    public MauSac getMaMauSac() {
        return maMauSac;
    }

    public void setMaMauSac(MauSac maMauSac) {
        this.maMauSac = maMauSac;
    }

    public SanPham getMaSP() {
        return maSP;
    }

    public void setMaSP(SanPham maSP) {
        this.maSP = maSP;
    }

    @XmlTransient
    public Collection<DonHangChiTiet> getDonHangChiTietCollection() {
        return donHangChiTietCollection;
    }

    public void setDonHangChiTietCollection(Collection<DonHangChiTiet> donHangChiTietCollection) {
        this.donHangChiTietCollection = donHangChiTietCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maSPCT != null ? maSPCT.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SanPhamChiTiet)) {
            return false;
        }
        SanPhamChiTiet other = (SanPhamChiTiet) object;
        if ((this.maSPCT == null && other.maSPCT != null) || (this.maSPCT != null && !this.maSPCT.equals(other.maSPCT))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.SanPhamChiTiet[ maSPCT=" + maSPCT + " ]";
    }
    
}
