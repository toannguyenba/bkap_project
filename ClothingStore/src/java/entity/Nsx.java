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
@Table(name = "NSX")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Nsx.findAll", query = "SELECT n FROM Nsx n")
    , @NamedQuery(name = "Nsx.findByMaNSX", query = "SELECT n FROM Nsx n WHERE n.maNSX = :maNSX")
    , @NamedQuery(name = "Nsx.findByTenNSX", query = "SELECT n FROM Nsx n WHERE n.tenNSX = :tenNSX")
    , @NamedQuery(name = "Nsx.findByDiaChi", query = "SELECT n FROM Nsx n WHERE n.diaChi = :diaChi")
    , @NamedQuery(name = "Nsx.findByGhiChu", query = "SELECT n FROM Nsx n WHERE n.ghiChu = :ghiChu")
    , @NamedQuery(name = "Nsx.findByTrangThai", query = "SELECT n FROM Nsx n WHERE n.trangThai = :trangThai")})
public class Nsx implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "MaNSX")
    private String maNSX;
    @Size(max = 200)
    @Column(name = "TenNSX")
    private String tenNSX;
    @Size(max = 400)
    @Column(name = "DiaChi")
    private String diaChi;
    @Size(max = 1073741823)
    @Column(name = "GhiChu")
    private String ghiChu;
    @Column(name = "TrangThai")
    private Boolean trangThai;
    @OneToMany(mappedBy = "maNSX")
    private Collection<SanPham> sanPhamCollection;

    public Nsx() {
    }

    public Nsx(String maNSX) {
        this.maNSX = maNSX;
    }

    public String getMaNSX() {
        return maNSX;
    }

    public void setMaNSX(String maNSX) {
        this.maNSX = maNSX;
    }

    public String getTenNSX() {
        return tenNSX;
    }

    public void setTenNSX(String tenNSX) {
        this.tenNSX = tenNSX;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
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
        hash += (maNSX != null ? maNSX.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Nsx)) {
            return false;
        }
        Nsx other = (Nsx) object;
        if ((this.maNSX == null && other.maNSX != null) || (this.maNSX != null && !this.maNSX.equals(other.maNSX))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Nsx[ maNSX=" + maNSX + " ]";
    }
    
}
