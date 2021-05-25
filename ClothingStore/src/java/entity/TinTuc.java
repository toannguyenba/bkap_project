/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "TinTuc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TinTuc.findAll", query = "SELECT t FROM TinTuc t")
    , @NamedQuery(name = "TinTuc.findByMaTin", query = "SELECT t FROM TinTuc t WHERE t.maTin = :maTin")
    , @NamedQuery(name = "TinTuc.findByTieuDe", query = "SELECT t FROM TinTuc t WHERE t.tieuDe = :tieuDe")
    , @NamedQuery(name = "TinTuc.findByNoiDung", query = "SELECT t FROM TinTuc t WHERE t.noiDung = :noiDung")
    , @NamedQuery(name = "TinTuc.findByTrangThai", query = "SELECT t FROM TinTuc t WHERE t.trangThai = :trangThai")})
public class TinTuc implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "MaTin")
    private String maTin;
    @Size(max = 100)
    @Column(name = "TieuDe")
    private String tieuDe;
    @Size(max = 500)
    @Column(name = "NoiDung")
    private String noiDung;
    @Column(name = "TrangThai")
    private Boolean trangThai;

    public TinTuc() {
    }

    public TinTuc(String maTin) {
        this.maTin = maTin;
    }

    public String getMaTin() {
        return maTin;
    }

    public void setMaTin(String maTin) {
        this.maTin = maTin;
    }

    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maTin != null ? maTin.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TinTuc)) {
            return false;
        }
        TinTuc other = (TinTuc) object;
        if ((this.maTin == null && other.maTin != null) || (this.maTin != null && !this.maTin.equals(other.maTin))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TinTuc[ maTin=" + maTin + " ]";
    }
    
}
