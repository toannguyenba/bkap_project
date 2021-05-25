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
@Table(name = "KichThuoc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "KichThuoc.findAll", query = "SELECT k FROM KichThuoc k")
    , @NamedQuery(name = "KichThuoc.findByMaKichThuoc", query = "SELECT k FROM KichThuoc k WHERE k.maKichThuoc = :maKichThuoc")
    , @NamedQuery(name = "KichThuoc.findByTenKichThuoc", query = "SELECT k FROM KichThuoc k WHERE k.tenKichThuoc = :tenKichThuoc")
    , @NamedQuery(name = "KichThuoc.findByGhiChu", query = "SELECT k FROM KichThuoc k WHERE k.ghiChu = :ghiChu")
    , @NamedQuery(name = "KichThuoc.findByTrangThai", query = "SELECT k FROM KichThuoc k WHERE k.trangThai = :trangThai")})
public class KichThuoc implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "MaKichThuoc")
    private String maKichThuoc;
    @Size(max = 50)
    @Column(name = "TenKichThuoc")
    private String tenKichThuoc;
    @Size(max = 200)
    @Column(name = "GhiChu")
    private String ghiChu;
    @Column(name = "TrangThai")
    private Boolean trangThai;
    @OneToMany(mappedBy = "maKichThuoc")
    private Collection<SanPhamChiTiet> sanPhamChiTietCollection;

    public KichThuoc() {
    }

    public KichThuoc(String maKichThuoc) {
        this.maKichThuoc = maKichThuoc;
    }

    public String getMaKichThuoc() {
        return maKichThuoc;
    }

    public void setMaKichThuoc(String maKichThuoc) {
        this.maKichThuoc = maKichThuoc;
    }

    public String getTenKichThuoc() {
        return tenKichThuoc;
    }

    public void setTenKichThuoc(String tenKichThuoc) {
        this.tenKichThuoc = tenKichThuoc;
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
    public Collection<SanPhamChiTiet> getSanPhamChiTietCollection() {
        return sanPhamChiTietCollection;
    }

    public void setSanPhamChiTietCollection(Collection<SanPhamChiTiet> sanPhamChiTietCollection) {
        this.sanPhamChiTietCollection = sanPhamChiTietCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maKichThuoc != null ? maKichThuoc.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof KichThuoc)) {
            return false;
        }
        KichThuoc other = (KichThuoc) object;
        if ((this.maKichThuoc == null && other.maKichThuoc != null) || (this.maKichThuoc != null && !this.maKichThuoc.equals(other.maKichThuoc))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.KichThuoc[ maKichThuoc=" + maKichThuoc + " ]";
    }
    
}
