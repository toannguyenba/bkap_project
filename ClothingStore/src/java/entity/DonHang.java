/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "DonHang")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DonHang.findAll", query = "SELECT d FROM DonHang d")
    , @NamedQuery(name = "DonHang.findByMaDH", query = "SELECT d FROM DonHang d WHERE d.maDH = :maDH")
    , @NamedQuery(name = "DonHang.findByHoTen", query = "SELECT d FROM DonHang d WHERE d.hoTen = :hoTen")
    , @NamedQuery(name = "DonHang.findByGioiTinh", query = "SELECT d FROM DonHang d WHERE d.gioiTinh = :gioiTinh")
    , @NamedQuery(name = "DonHang.findBySdt", query = "SELECT d FROM DonHang d WHERE d.sdt = :sdt")
    , @NamedQuery(name = "DonHang.findByNgayDH", query = "SELECT d FROM DonHang d WHERE d.ngayDH = :ngayDH")
    , @NamedQuery(name = "DonHang.findBySoLoaiSP", query = "SELECT d FROM DonHang d WHERE d.soLoaiSP = :soLoaiSP")
    , @NamedQuery(name = "DonHang.findByTongTien", query = "SELECT d FROM DonHang d WHERE d.tongTien = :tongTien")
    , @NamedQuery(name = "DonHang.findByIsPaid", query = "SELECT d FROM DonHang d WHERE d.isPaid = :isPaid")
    , @NamedQuery(name = "DonHang.findByTrangThai", query = "SELECT d FROM DonHang d WHERE d.trangThai = :trangThai")})
public class DonHang implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaDH")
    private Integer maDH;
    @Size(max = 50)
    @Column(name = "HoTen")
    private String hoTen;
    @Column(name = "GioiTinh")
    private Boolean gioiTinh;
    @Size(max = 20)
    @Column(name = "SDT")
    private String sdt;
    @Column(name = "NgayDH")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayDH;
    @Column(name = "SoLoaiSP")
    private Integer soLoaiSP;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "TongTien")
    private Double tongTien;
    @Column(name = "IsPaid")
    private Boolean isPaid;
    @Column(name = "TrangThai")
    private Boolean trangThai;
    @JoinColumn(name = "Email", referencedColumnName = "Email")
    @ManyToOne
    private Account email;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "donHang")
    private Collection<DonHangChiTiet> donHangChiTietCollection;

    public DonHang() {
    }

    public DonHang(Integer maDH) {
        this.maDH = maDH;
    }

    public Integer getMaDH() {
        return maDH;
    }

    public void setMaDH(Integer maDH) {
        this.maDH = maDH;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public Boolean getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(Boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public Date getNgayDH() {
        return ngayDH;
    }

    public void setNgayDH(Date ngayDH) {
        this.ngayDH = ngayDH;
    }

    public Integer getSoLoaiSP() {
        return soLoaiSP;
    }

    public void setSoLoaiSP(Integer soLoaiSP) {
        this.soLoaiSP = soLoaiSP;
    }

    public Double getTongTien() {
        return tongTien;
    }

    public void setTongTien(Double tongTien) {
        this.tongTien = tongTien;
    }

    public Boolean getIsPaid() {
        return isPaid;
    }

    public void setIsPaid(Boolean isPaid) {
        this.isPaid = isPaid;
    }

    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    public Account getEmail() {
        return email;
    }

    public void setEmail(Account email) {
        this.email = email;
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
        hash += (maDH != null ? maDH.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DonHang)) {
            return false;
        }
        DonHang other = (DonHang) object;
        if ((this.maDH == null && other.maDH != null) || (this.maDH != null && !this.maDH.equals(other.maDH))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.DonHang[ maDH=" + maDH + " ]";
    }
    
}
