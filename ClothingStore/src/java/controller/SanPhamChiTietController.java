/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.KichThuocDAO;
import dao.MauSacDAO;
import dao.SanPhamChiTietDAO;
import dao.SanPhamDAO;
import entity.Account;
import entity.SanPham;
import entity.SanPhamChiTiet;
import java.util.Collection;
import java.util.List;
import model.CartLine;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
public class SanPhamChiTietController {
    
    @ModelAttribute("acc")
    public Account init() {
        return new Account();
    }
    
    @RequestMapping("/admin/them-san-pham-chi-tiet")
    public String insertSanPhamChiTiet(@ModelAttribute("spct") SanPhamChiTiet spct, Model model) {
        model.addAttribute("spct", new SanPhamChiTiet());
        List listMauSac = new MauSacDAO().getAllMauSac();
        model.addAttribute("listMauSac", listMauSac);
        List listKichThuoc = new KichThuocDAO().getAllKichThuoc();
        model.addAttribute("listKichThuoc", listKichThuoc);
        if(spct.getMaSPCT() != null) {
            spct.setTrangThai(Boolean.TRUE);
            boolean checkInsert = new SanPhamChiTietDAO().insertSanPhamChiTiet(spct);
            if(checkInsert) {
                model.addAttribute("success", "Thêm thành công");
            } else {
                model.addAttribute("fail", "Thêm thất bại");
            }
        }
        return "admin/them-san-pham-chi-tiet-admin";
    }
    
    
}
