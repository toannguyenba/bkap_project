/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DanhMucDAO;
import entity.DanhMuc;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
public class DanhMucController {

    @InitBinder
    public void initBinder(WebDataBinder data) {
        SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
        s.setLenient(false);
        data.registerCustomEditor(Date.class, new CustomDateEditor(s, true));
    }

    @RequestMapping("/admin/them-danh-muc")
    public String insertDanhMuc(@ModelAttribute("dm") DanhMuc danhMuc, Model model) {
        model.addAttribute("dm", new DanhMuc());        
        if (danhMuc.getMaDM() != null) {
            danhMuc.setTrangThai(Boolean.TRUE);
            boolean checkInsert = new DanhMucDAO().insertDanhMuc(danhMuc);
            if (checkInsert) {
                model.addAttribute("succes", "Thêm thành công");
            } else {
                model.addAttribute("fail", "Thêm thất bại");
            }
        }
        List list = new DanhMucDAO().getAllDanhMuc();
        model.addAttribute("listDM", list);
        return "admin/them-danh-muc-admin";
    }
    
    @RequestMapping("/admin/init-cap-nhat-danh-muc")
    public String initUpdateDanhMuc(Model model, @RequestParam("id")String id) {
        model.addAttribute("dm", new DanhMucDAO().getDanhMucById(id));        
        return "admin/cap-nhat-danh-muc-admin";
    }
    
    @RequestMapping("/admin/cap-nhat-danh-muc")
    public String updateDanhMuc(@ModelAttribute("dm") DanhMuc danhMuc, Model model) {
        model.addAttribute("dm", new DanhMuc());
        danhMuc.setTrangThai(Boolean.TRUE);
        boolean checkUpdate = new DanhMucDAO().updateDanhMuc(danhMuc);
        if(checkUpdate) {
            model.addAttribute("succes", "Cập nhật thành công!");
        } else {
            model.addAttribute("fail", "Cập nhật thất bại!");
        }
        List list = new DanhMucDAO().getAllDanhMuc();
        model.addAttribute("listDM", list);
        return "admin/them-danh-muc-admin";
    }
    
    @RequestMapping("/admin/xoa-danh-muc")
    public String deleteDanhMuc(@RequestParam("id")String id, Model model) {
        int n = new DanhMucDAO().deleteDanhMuc(id);
        if(n != 0) {
            model.addAttribute("succes", "Xoá thành công!");
        } else {
            model.addAttribute("fail", "Xoá thất bại!");
        }
        model.addAttribute("dm", new DanhMuc());
        List list = new DanhMucDAO().getAllDanhMuc();
        model.addAttribute("listDM", list);
        return "admin/them-danh-muc-admin";
    }
        
}
