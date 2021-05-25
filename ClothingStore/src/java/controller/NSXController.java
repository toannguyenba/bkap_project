/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.NSXDAO;
import entity.Nsx;
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
public class NSXController {

    @RequestMapping("/admin/them-NSX")
    public String insertNSX(@ModelAttribute("nsx") Nsx nhaSanXuat, Model model) {        
        model.addAttribute("nsx", new Nsx());
        if (nhaSanXuat.getMaNSX() != null) {
            nhaSanXuat.setTrangThai(Boolean.TRUE);
            boolean checkInsert = new NSXDAO().insertNsx(nhaSanXuat);
            if (checkInsert) {
                model.addAttribute("success", "Thêm thành công");
            } else {
                model.addAttribute("fail", "Thêm thất bại");
            }
        }
        model.addAttribute("listNSX", new NSXDAO().getAllNsx());
        return "admin/them-NSX-admin";
    }

    @RequestMapping("/admin/init-cap-nhat-nsx")
    public String initUpdateNSX(@RequestParam("id") String id, Model model) {
        model.addAttribute("nsx", new NSXDAO().getNsxById(id));
        return "admin/cap-nhat-nsx-admin";
    }

    @RequestMapping("/admin/cap-nhat-nsx")
    public String updateNSX(@ModelAttribute("nsx") Nsx nsx, Model model) {        
        model.addAttribute("nsx", new Nsx());
        nsx.setTrangThai(Boolean.TRUE);
        boolean checkUpdate = new NSXDAO().updateNsx(nsx);
        if(checkUpdate) {
            model.addAttribute("succes", "Cập nhật thành công");
        } else {
            model.addAttribute("fail", "Cập nhật thất bại");
        }
        model.addAttribute("listNSX", new NSXDAO().getAllNsx());
        return "admin/them-NSX-admin";
    }
    
    @RequestMapping("/admin/xoa-nsx")
    public String deleteNSX(@RequestParam("id")String id, Model model) {
        model.addAttribute("nsx", new Nsx());
        int n = new NSXDAO().deleteNsx(id);
        if(n != 0) {
            model.addAttribute("success", "Xoá thành công");
        } else {
            model.addAttribute("fail", "Xoá thất bại");
        }
        model.addAttribute(("listNSX"), new NSXDAO().getAllNsx());
        return "admin/them-NSX-admin";
    }
}
