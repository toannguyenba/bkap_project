/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.DanhMuc;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Admin
 */
public class DanhMucDAO {
    
    public List<DanhMuc> getAllDanhMuc() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from DanhMuc where trangThai = true").list();
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
    
    public DanhMuc getDanhMucById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            DanhMuc dm = (DanhMuc)session.createQuery("from DanhMuc where maDM = :id and trangThai = true")
                    .setParameter("id", id)
                    .uniqueResult();
            session.getTransaction().commit();
//            session.close();
            return dm;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return null;
    }
    
    public List<DanhMuc> getDanhMucByName(String tenDanhMuc) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        if (tenDanhMuc == null || tenDanhMuc.length()==0) {
            tenDanhMuc = "%";
        } else {
            tenDanhMuc = "%" + tenDanhMuc + "%";
        }
        try {
            session.beginTransaction();
            List list = session.createQuery("from DanhMuc where tenDM like tenDanhMuc")
                    .setParameter("tenDanhMuc", tenDanhMuc)
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
    
    public boolean insertDanhMuc(DanhMuc dm) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(dm);
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
    
    public boolean updateDanhMuc(DanhMuc dm) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.merge(dm);
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
    
    public int deleteDanhMuc(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            int n = session.createQuery("update DanhMuc set trangThai = false where maDM = :maDM")
                    .setParameter("maDM", id)
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
