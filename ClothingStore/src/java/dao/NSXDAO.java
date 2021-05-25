/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Nsx;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Admin
 */
public class NSXDAO {
    
    public List<Nsx> getAllNsx() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from Nsx where trangThai = true").list();
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
    
    public Nsx getNsxById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            Nsx nsx = (Nsx)session.createQuery("from Nsx where maNSX = :maNSX and trangThai = true")
                    .setParameter("maNSX", id)
                    .uniqueResult();
            session.getTransaction().commit();
//            session.close();
            return nsx;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return null;
    }
    
    public List<Nsx> getNsxByName(String tenNSX) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        if (tenNSX == null || tenNSX.length()==0) {
            tenNSX = "%";
        } else {
            tenNSX = "%" + tenNSX + "%";
        }
        try {
            session.beginTransaction();
            List list = session.createQuery("from Nsx where tenNSX like tenNSX")
                    .setParameter("tenNSX", tenNSX)
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
    
    public boolean insertNsx(Nsx nsx) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(nsx);
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
    
    public boolean updateNsx(Nsx nsx) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.merge(nsx);
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
    
    public int deleteNsx(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            int n = session.createQuery("update Nsx set trangThai = false where maNSX = :id")
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
