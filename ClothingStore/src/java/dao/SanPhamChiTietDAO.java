/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.SanPhamChiTiet;
import java.util.Collections;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Admin
 */
public class SanPhamChiTietDAO {

    public List<SanPhamChiTiet> getAllSanPhamChiTiet() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from SanPhamChiTiet where trangThai = true").list();
            session.getTransaction().commit();
            session.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().commit();
            session.close();
        }
        return null;
    }
    
    public boolean insertSanPhamChiTiet(SanPhamChiTiet spct) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(spct);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().commit();
            session.close();
        }
        return false;
    }
    
    public List<SanPhamChiTiet> getSPCTByPrice(double minPrice, double maxPrice) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from SanPhamChiTiet where giaGoc between :minPrice and :maxPrice and trangThai = true")
                    .setParameter("minPrice", minPrice)
                    .setParameter("maxPrice", maxPrice)
                    .list();
            session.getTransaction().commit();
//            session.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return Collections.EMPTY_LIST;
    }
    
    public SanPhamChiTiet getSPCTByID(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            SanPhamChiTiet spct = (SanPhamChiTiet)session.createQuery("from SanPhamChiTiet where maSPCT = :maSPCT and trangThai = true")
                    .setParameter("maSPCT", id)
                    .uniqueResult();
            session.getTransaction().commit();
            session.close();
            return spct;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().commit();
            session.close();
        }
        return null;
    }
    
    public int deleteSPCTById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();            
            int n = session.createQuery("update SanPhamChiTiet set trangThai = false where maSPCT = :maSPCT")
                    .setParameter("maSPCT", id)
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
    
    public int updateSoLuong(int newAmount, String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            int n = session.createQuery("update SanPhamChiTiet set soLuong = :soLuong where maSPCT = :maSPCT")
                    .setParameter("soLuong", newAmount)
                    .setParameter("maSPCT", id)
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
    
    public boolean update(SanPhamChiTiet spct) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.merge(spct);
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
    
}
