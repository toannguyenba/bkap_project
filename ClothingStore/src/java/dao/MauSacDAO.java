/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.MauSac;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Admin
 */
public class MauSacDAO {
    
    public List<MauSac> getAllMauSac() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from MauSac where trangThai = true").list();
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
    
    public MauSac getMauSacById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            MauSac ms = (MauSac)session.createQuery("from MauSac where maMauSac = :id and trangThai = true")
                    .setParameter("id", id)
                    .uniqueResult();
            session.getTransaction().commit();
            session.close();
            return ms;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().commit();
            session.close();
        }
        return null;
    }
    
    public List<MauSac> getMauSacByName(String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        if (name == null || name.length() == 0) {
            name = "%";
        } else {
            name = "%" + name + "%";
        }
        try {
            session.beginTransaction();
            List list = session.createQuery("from MauSac where tenMauSac like name")
                    .setParameter("name", name)
                    .list();
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
    
    public boolean insertMauSac(MauSac mauSac) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(mauSac);
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
    
    public boolean updateMauSac(MauSac mauSac) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.merge(mauSac);
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
    
    public int deleteMauSac(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            int n = session.createQuery("update MauSac set trangThai = false where maMauSac = :id")
                    .setParameter("id", id)
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
