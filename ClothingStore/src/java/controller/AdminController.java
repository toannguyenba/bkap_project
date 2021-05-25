/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.HibernateUtil;
import entity.Account;
import entity.SanPham;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Admin
 */
@Controller
public class AdminController {
    
    @RequestMapping("/admin/trangchu")
    public String preLoginAdminPage(Model model){
        model.addAttribute("acc", new Account());
        return "admin/home-admin";
    }
    
//    @RequestMapping("/dangNhap")
//    public String loginAdminPage(@ModelAttribute("acc")Account acc, Model model) {
////        if(acc.getTenDN().equals("toannguyenba@gmail.com") && acc.getMatKhau().equals("01647575860z")) {
////            return "admin/home-admin";
////        } else {
////            
////        }
//        model.addAttribute("acc", new Account());
//        return "admin/home-admin";
//    }
    
    public void test(String maDM) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        int i = session.createQuery("delete from DanhMuc where maDM = ?")
                .setParameter(0, maDM)
                .executeUpdate();
    }
}
