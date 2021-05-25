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
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
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
@Table(name = "Account")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Account.findAll", query = "SELECT a FROM Account a")
    , @NamedQuery(name = "Account.findByTenDN", query = "SELECT a FROM Account a WHERE a.tenDN = :tenDN")
    , @NamedQuery(name = "Account.findByMatKhau", query = "SELECT a FROM Account a WHERE a.matKhau = :matKhau")
    , @NamedQuery(name = "Account.findByHoTen", query = "SELECT a FROM Account a WHERE a.hoTen = :hoTen")
    , @NamedQuery(name = "Account.findByGioiTinh", query = "SELECT a FROM Account a WHERE a.gioiTinh = :gioiTinh")
    , @NamedQuery(name = "Account.findByNgaySinh", query = "SELECT a FROM Account a WHERE a.ngaySinh = :ngaySinh")
    , @NamedQuery(name = "Account.findByQueQuan", query = "SELECT a FROM Account a WHERE a.queQuan = :queQuan")
    , @NamedQuery(name = "Account.findByEmail", query = "SELECT a FROM Account a WHERE a.email = :email")
    , @NamedQuery(name = "Account.findBySdt", query = "SELECT a FROM Account a WHERE a.sdt = :sdt")
    , @NamedQuery(name = "Account.findByUserCheck", query = "SELECT a FROM Account a WHERE a.userCheck = :userCheck")
    , @NamedQuery(name = "Account.findByTrangThai", query = "SELECT a FROM Account a WHERE a.trangThai = :trangThai")})
public class Account implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "TenDN")
    private String tenDN;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "MatKhau")
    private String matKhau;
    @Size(max = 50)
    @Column(name = "HoTen")
    private String hoTen;
    @Column(name = "GioiTinh")
    private Boolean gioiTinh;
    @Column(name = "NgaySinh")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngaySinh;
    @Size(max = 400)
    @Column(name = "QueQuan")
    private String queQuan;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Email")
    private String email;
    @Size(max = 20)
    @Column(name = "SDT")
    private String sdt;
    @Column(name = "UserCheck")
    private Boolean userCheck;
    @Column(name = "TrangThai")
    private Boolean trangThai;
    @OneToMany(mappedBy = "email")
    private Collection<DonHang> donHangCollection;

    public Account() {
    }

    public Account(String email) {
        this.email = email;
    }

    public Account(String email, String tenDN, String matKhau) {
        this.email = email;
        this.tenDN = tenDN;
        this.matKhau = matKhau;
    }

    public String getTenDN() {
        return tenDN;
    }

    public void setTenDN(String tenDN) {
        this.tenDN = tenDN;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
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

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getQueQuan() {
        return queQuan;
    }

    public void setQueQuan(String queQuan) {
        this.queQuan = queQuan;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public Boolean getUserCheck() {
        return userCheck;
    }

    public void setUserCheck(Boolean userCheck) {
        this.userCheck = userCheck;
    }

    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    @XmlTransient
    public Collection<DonHang> getDonHangCollection() {
        return donHangCollection;
    }

    public void setDonHangCollection(Collection<DonHang> donHangCollection) {
        this.donHangCollection = donHangCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (email != null ? email.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Account)) {
            return false;
        }
        Account other = (Account) object;
        if ((this.email == null && other.email != null) || (this.email != null && !this.email.equals(other.email))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Account[ email=" + email + " ]";
    }
    
}
