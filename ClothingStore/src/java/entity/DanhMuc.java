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
@Table(name = "DanhMuc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DanhMuc.findAll", query = "SELECT d FROM DanhMuc d")
    , @NamedQuery(name = "DanhMuc.findByMaDM", query = "SELECT d FROM DanhMuc d WHERE d.maDM = :maDM")
    , @NamedQuery(name = "DanhMuc.findByTenDM", query = "SELECT d FROM DanhMuc d WHERE d.tenDM = :tenDM")
    , @NamedQuery(name = "DanhMuc.findByGhiChu", query = "SELECT d FROM DanhMuc d WHERE d.ghiChu = :ghiChu")
    , @NamedQuery(name = "DanhMuc.findByTrangThai", query = "SELECT d FROM DanhMuc d WHERE d.trangThai = :trangThai")})
public class DanhMuc implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "MaDM")
    private String maDM;
    @Size(max = 100)
    @Column(name = "TenDM")
    private String tenDM;
    @Size(max = 400)
    @Column(name = "GhiChu")
    private String ghiChu;
    @Column(name = "TrangThai")
    private Boolean trangThai;
    @OneToMany(mappedBy = "maDM")
    private Collection<SanPham> sanPhamCollection;

    public DanhMuc() {
    }

    public DanhMuc(String maDM) {
        this.maDM = maDM;
    }

    public String getMaDM() {
        return maDM;
    }

    public void setMaDM(String maDM) {
        this.maDM = maDM;
    }

    public String getTenDM() {
        return tenDM;
    }

    public void setTenDM(String tenDM) {
        this.tenDM = tenDM;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    @XmlTransient
    public Collection<SanPham> getSanPhamCollection() {
        return sanPhamCollection;
    }

    public void setSanPhamCollection(Collection<SanPham> sanPhamCollection) {
        this.sanPhamCollection = sanPhamCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maDM != null ? maDM.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DanhMuc)) {
            return false;
        }
        DanhMuc other = (DanhMuc) object;
        if ((this.maDM == null && other.maDM != null) || (this.maDM != null && !this.maDM.equals(other.maDM))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.DanhMuc[ maDM=" + maDM + " ]";
    }
    
}
