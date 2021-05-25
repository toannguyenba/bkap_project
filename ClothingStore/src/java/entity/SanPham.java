/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
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
@Table(name = "SanPham")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SanPham.findAll", query = "SELECT s FROM SanPham s")
    , @NamedQuery(name = "SanPham.findByMaSP", query = "SELECT s FROM SanPham s WHERE s.maSP = :maSP")
    , @NamedQuery(name = "SanPham.findByTenSP", query = "SELECT s FROM SanPham s WHERE s.tenSP = :tenSP")
    , @NamedQuery(name = "SanPham.findByAnh1", query = "SELECT s FROM SanPham s WHERE s.anh1 = :anh1")
    , @NamedQuery(name = "SanPham.findByAnh2", query = "SELECT s FROM SanPham s WHERE s.anh2 = :anh2")
    , @NamedQuery(name = "SanPham.findByAnh3", query = "SELECT s FROM SanPham s WHERE s.anh3 = :anh3")
    , @NamedQuery(name = "SanPham.findByTrangThai", query = "SELECT s FROM SanPham s WHERE s.trangThai = :trangThai")})
public class SanPham implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "MaSP")
    private String maSP;
    @Size(max = 200)
    @Column(name = "TenSP")
    private String tenSP;
    @Size(max = 200)
    @Column(name = "Anh1")
    private String anh1;
    @Size(max = 200)
    @Column(name = "Anh2")
    private String anh2;
    @Size(max = 200)
    @Column(name = "Anh3")
    private String anh3;
    @Column(name = "TrangThai")
    private Boolean trangThai;
    @OneToMany(mappedBy = "maSP")
    private Collection<SanPhamChiTiet> sanPhamChiTietCollection;
    @JoinColumn(name = "MaDM", referencedColumnName = "MaDM")
    @ManyToOne
    private DanhMuc maDM;
    @JoinColumn(name = "MaNSX", referencedColumnName = "MaNSX")
    @ManyToOne
    private Nsx maNSX;

    public SanPham() {
    }

    public SanPham(String maSP) {
        this.maSP = maSP;
    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getAnh1() {
        return anh1;
    }

    public void setAnh1(String anh1) {
        this.anh1 = anh1;
    }

    public String getAnh2() {
        return anh2;
    }

    public void setAnh2(String anh2) {
        this.anh2 = anh2;
    }

    public String getAnh3() {
        return anh3;
    }

    public void setAnh3(String anh3) {
        this.anh3 = anh3;
    }

    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    @XmlTransient
    public Collection<SanPhamChiTiet> getSanPhamChiTietCollection() {
        return sanPhamChiTietCollection;
    }

    public void setSanPhamChiTietCollection(Collection<SanPhamChiTiet> sanPhamChiTietCollection) {
        this.sanPhamChiTietCollection = sanPhamChiTietCollection;
    }

    public DanhMuc getMaDM() {
        return maDM;
    }

    public void setMaDM(DanhMuc maDM) {
        this.maDM = maDM;
    }

    public Nsx getMaNSX() {
        return maNSX;
    }

    public void setMaNSX(Nsx maNSX) {
        this.maNSX = maNSX;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maSP != null ? maSP.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SanPham)) {
            return false;
        }
        SanPham other = (SanPham) object;
        if ((this.maSP == null && other.maSP != null) || (this.maSP != null && !this.maSP.equals(other.maSP))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.SanPham[ maSP=" + maSP + " ]";
    }
    
}
