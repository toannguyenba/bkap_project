/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.MauSacDAO;
import entity.MauSac;
import java.util.List;
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
public class MauSacController {

    @RequestMapping("/admin/them-mau-sac")
    public String insertMauSac(@ModelAttribute("ms") MauSac mauSac, Model model) {
        model.addAttribute("ms", new MauSac());        
        if (mauSac.getMaMauSac() != null) {
            mauSac.setTrangThai(Boolean.TRUE);
            boolean checkInsert = new MauSacDAO().insertMauSac(mauSac);
            if (checkInsert) {
                model.addAttribute("succes", "Thêm thành công");
            } else {
                model.addAttribute("fail", "Thêm thất bại");
            }
        }
        List list = new MauSacDAO().getAllMauSac();
        model.addAttribute("listMS", list);
        return "admin/them-mau-sac-admin";
    }

    @RequestMapping("/admin/init-cap-nhat-mau-sac")
    public String initUpdateMauSac(@RequestParam("id") String id, Model model) {
        model.addAttribute("ms", new MauSacDAO().getMauSacById(id));
        return "admin/cap-nhat-mau-sac-admin";
    }

    @RequestMapping("/admin/cap-nhat-mau-sac")
    public String updateNSX(@ModelAttribute("ms") MauSac ms, Model model) {
        model.addAttribute("ms", new MauSac());
        ms.setTrangThai(Boolean.TRUE);
        boolean checkUpdate = new MauSacDAO().updateMauSac(ms);
        if (checkUpdate) {
            model.addAttribute("succes", "Cập nhật thành công");
        } else {
            model.addAttribute("fail", "Cập nhật thất bại");
        }
        model.addAttribute("listMS", new MauSacDAO().getAllMauSac());
        return "admin/them-mau-sac-admin";
    }

    @RequestMapping("/admin/xoa-mau-sac")
    public String deleteMauSac(@RequestParam("id") String id, Model model) {
        int n = new MauSacDAO().deleteMauSac(id);
        model.addAttribute("ms", new MauSac());
        if(n != 0) {
            model.addAttribute("succes", "Xoá thành công");
        } else {
            model.addAttribute("fail", "Xoá thất bại");
        }
        model.addAttribute("listMS", new MauSacDAO().getAllMauSac());
        return "admin/them-mau-sac-admin";
    }
}
