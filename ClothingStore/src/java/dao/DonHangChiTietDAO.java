/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.DonHangChiTiet;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Admin
 */
public class DonHangChiTietDAO {
    
    public List<DonHangChiTiet> getDonHangChiTietByMaSPCT(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from DonHangChiTiet where donHangChiTietPK.maSPCT = :maSPCT")
                    .setParameter("maSPCT", id)
                    .list();
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
    
    public List<DonHangChiTiet> getDHCTByEmail(String email) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from DonHangChiTiet where email = :email")
                    .setParameter("email", email)
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
    
    public boolean insertDHCT(DonHangChiTiet dhct) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(dhct);
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
