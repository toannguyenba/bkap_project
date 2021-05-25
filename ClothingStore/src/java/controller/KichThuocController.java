/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.KichThuocDAO;
import entity.KichThuoc;
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
public class KichThuocController {
    
    @RequestMapping("/admin/them-kich-thuoc")
    public String insertKichThuoc(@ModelAttribute("kt") KichThuoc kichThuoc, Model model) {        
        if(kichThuoc.getMaKichThuoc() != null) {
            kichThuoc.setTrangThai(Boolean.TRUE);
            boolean checkInsert = new KichThuocDAO().insertKichThuoc(kichThuoc);
            if(checkInsert) {
                model.addAttribute("succes", "Thêm thành công");
            } else {
                model.addAttribute("fail", "Thêm thất bại");
            }
        }
        model.addAttribute("listKt", new KichThuocDAO().getAllKichThuoc());
        model.addAttribute("kt", new KichThuoc());
        return "admin/them-kich-thuoc-admin";
    }
    
    @RequestMapping("/admin/init-cap-nhat-kich-thuoc")
    public String initUpdateKichThuoc(@RequestParam("id") String id, Model model) {
        model.addAttribute("kt", new KichThuocDAO().getKichThuocById(id));
        return "admin/cap-nhat-kich-thuoc-admin";
    }

    @RequestMapping("/admin/cap-nhat-kich-thuoc")
    public String updateNSX(@ModelAttribute("nsx") KichThuoc kichThuoc, Model model) {        
        model.addAttribute("kt", new KichThuoc());
        kichThuoc.setTrangThai(Boolean.TRUE);
        boolean checkUpdate = new KichThuocDAO().updateKichThuoc(kichThuoc);
        if(checkUpdate) {
            model.addAttribute("succes", "Cập nhật thành công");
        } else {
            model.addAttribute("fail", "Cập nhật thất bại");
        }
        model.addAttribute("listKt", new KichThuocDAO().getAllKichThuoc());
        return "admin/them-kich-thuoc-admin";
    }
    
    @RequestMapping("/admin/xoa-kich-thuoc")
    public String deleteKichThuoc(@RequestParam("id")String id, Model model) {
        int n = new KichThuocDAO().deleteKichThuoc(id);
        model.addAttribute("kt", new KichThuoc());
        if(n != 0) {
            model.addAttribute("succes", "Xoá thành công");
        } else {
            model.addAttribute("fail", "Xoá thất bại");
        }
        model.addAttribute("listKt", new KichThuocDAO().getAllKichThuoc());
        return "admin/them-kich-thuoc-admin";
    }
}
