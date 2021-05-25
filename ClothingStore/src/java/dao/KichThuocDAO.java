/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.KichThuoc;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Admin
 */
public class KichThuocDAO {

    public List<KichThuoc> getAllKichThuoc() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from KichThuoc where trangThai = true").list();
            session.getTransaction().commit();
            session.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return null;
    }

    public KichThuoc getKichThuocById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            KichThuoc kt = (KichThuoc) session.createQuery("from KichThuoc where maKichThuoc = :id and trangThai = true")
                    .setParameter("id", id)
                    .uniqueResult();
            session.getTransaction().commit();
            session.close();
            return kt;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return null;
    }

    public List<KichThuoc> getKichThuocByName(String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        if (name == null || name.length() == 0) {
            name = "%";
        } else {
            name = "%" + name + "%";
        }
        try {
            session.beginTransaction();
            List list = session.createQuery("from KichThuoc where tenKichThuoc like name").list();
            session.getTransaction().commit();
            session.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return null;
    }

    public boolean insertKichThuoc(KichThuoc kt) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(kt);
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
    
    public boolean updateKichThuoc(KichThuoc kt) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.merge(kt);
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
    
    public int deleteKichThuoc(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            int n = session.createQuery("update KichThuoc set trangThai = false where maKichThuoc = :maKichThuoc")
                    .setParameter("maKichThuoc", id)
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
