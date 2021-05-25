/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.SanPham;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Admin
 */
public class SanPhamDAO {

    public List<SanPham> getAllSanPham() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from SanPham where trangThai = true").list();
            session.getTransaction().commit();
            //session.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return null;
    }

    public SanPham getSanPhamByMaSanPham(String maSP) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            SanPham sp = (SanPham) session.createQuery("from SanPham where maSP = :maSP and trangThai = true")
                    .setParameter("maSP", maSP)
                    .uniqueResult();
            session.getTransaction().commit();
//            session.close();
            return sp;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return null;
    }

    public boolean insertSanPham(SanPham sp) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(sp);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return false;
    }

    public boolean updateSanPham(SanPham sp) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.merge(sp);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return false;
    }
    
    public List<SanPham> getSanPhamByName(String name) {
        if (name == null || name.length() == 0) {
            name = "%";
        } else {
            name = "%" + name + "%";
        }
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from SanPham where tenSP like :tenSP and trangThai = true")
                    .setParameter("tenSP", name)
                    .list();
            session.getTransaction().commit();
//            session.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return null;
    }
    
    public int deleteSanPhamById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            int n = session.createQuery("update SanPham set trangThai = false where maSP = :maSP")
                    .setParameter("maSP", id)
                    .executeUpdate();
            session.createQuery("update SanPhamChiTiet set trangThai = false where maSP = :maSP")
                    .setParameter("maSP", id)
                    .executeUpdate();
            session.getTransaction().commit();
            session.close();
            return n;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return 0;
    }
}
