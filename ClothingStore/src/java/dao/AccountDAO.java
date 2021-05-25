/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Account;
import org.hibernate.Session;

/**
 *
 * @author Admin
 */
public class AccountDAO {

    public boolean insertAccount(Account acc) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(acc);
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

    public Account getAccountByEmail(String email) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            Account acc = (Account) session.createQuery("from Account where email = :email and trangThai = true")
                    .setParameter("email", email)
                    .uniqueResult();
            session.getTransaction().commit();
//            session.close();
            return acc;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return null;
    }
}
