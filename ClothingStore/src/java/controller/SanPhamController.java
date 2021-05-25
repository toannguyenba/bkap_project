/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DanhMucDAO;
import dao.KichThuocDAO;
import dao.MauSacDAO;
import dao.NSXDAO;
import dao.SanPhamChiTietDAO;
import dao.SanPhamDAO;
import entity.DanhMuc;
import entity.Nsx;
import entity.SanPham;
import entity.SanPhamChiTiet;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import model.SPCTInfo;
import model.SanPhamInfo;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
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
public class SanPhamController {

    @RequestMapping("/admin/them-san-pham")
    public String insertSanPham(@ModelAttribute("sp") SanPham sanPham, Model model, HttpServletRequest request) {
        model.addAttribute("sp", new SanPham());
        List listDM = new DanhMucDAO().getAllDanhMuc();
        model.addAttribute("listDM", listDM);
        List listNSX = new NSXDAO().getAllNsx();
        model.addAttribute("listNSX", listNSX);
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(SanPhamController.class.getName()).log(Level.SEVERE, null, ex);
        }

        String path = request.getRealPath("resources/images/san-pham");
        path = path.substring(0, path.indexOf("build"));
        path += "web\\resources\\images\\san-pham";

        DiskFileItemFactory item = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(item);
        try {
            List<FileItem> list = upload.parseRequest(request);
            for (FileItem fileItem : list) {
                String fieldName = fileItem.getFieldName();
                if (fileItem.isFormField()) {
                    String value = fileItem.getString();
                    if (fieldName.equals("maSP")) {
                        sanPham.setMaSP(value);
                    } else if (fieldName.equals("tenSP")) {
                        sanPham.setTenSP(new String(value.getBytes("iso-8859-1"), "UTF-8"));
                    } else if (fieldName.equals("maDM")) {
                        sanPham.setMaDM(new DanhMuc(value));
                    } else if (fieldName.equals("maNSX")) {
                        sanPham.setMaNSX(new Nsx(value));
                    }
                } else {
                    String value = fileItem.getName();
                    if (value.length() == 0 || value == null) {
                        continue;
                    }
                    if (fieldName.equals("anh1")) {
                        value = sanPham.getMaSP() + "-1-" + value;
                        fileItem.write(new File(path + "/" + value));
                        sanPham.setAnh1(value);
                    } else if (fieldName.equals("anh2")) {
                        value = sanPham.getMaSP() + "-2-" + value;
                        fileItem.write(new File(path + "/" + value));
                        sanPham.setAnh2(value);
                    } else if (fieldName.equals("anh3")) {
                        value = sanPham.getMaSP() + "-3-" + value;
                        fileItem.write(new File(path + "/" + value));
                        sanPham.setAnh3(value);
                    }
                }
            }
            sanPham.setTrangThai(Boolean.TRUE);
            boolean checkInsert = new SanPhamDAO().insertSanPham(sanPham);
            if (checkInsert) {
                model.addAttribute("succes", "Thêm thành công");
            } else {
                model.addAttribute("fail", "Thêm thất bại");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "admin/them-san-pham-admin";
    }

    @RequestMapping("/admin/init-cap-nhat-san-pham")
    public String initUpdateSanPham(@RequestParam("id") String id, Model model, HttpServletRequest request) {
        SanPham sp = new SanPhamDAO().getSanPhamByMaSanPham(id);
        String path = request.getRealPath("resources/images/san-pham");
        path = path.substring(0, path.indexOf("build"));
        path += "web\\resources\\images\\san-pham";
        File file1 = new File(path + "/" + sp.getAnh1());
        File file2 = new File(path + "/" + sp.getAnh2());
        File file3 = new File(path + "/" + sp.getAnh3());
        if (file1.exists()) {
            file1.delete();
        }
        if (file2.exists()) {
            file2.delete();
        }
        if (file3.exists()) {
            file3.delete();
        }
        List listDM = new DanhMucDAO().getAllDanhMuc();
        model.addAttribute("listDM", listDM);
        List listNSX = new NSXDAO().getAllNsx();
        model.addAttribute("listNSX", listNSX);
        model.addAttribute("sp", sp);
        return "admin/cap-nhat-san-pham-admin";
    }

    @RequestMapping("/admin/cap-nhat-san-pham")
    public String updateSanPham(@ModelAttribute("sp") SanPham sanPham, Model model, HttpServletRequest request) {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(SanPhamController.class.getName()).log(Level.SEVERE, null, ex);
        }

        String path = request.getRealPath("resources/images/san-pham");
        path = path.substring(0, path.indexOf("build"));
        path += "web\\resources\\images\\san-pham";

        DiskFileItemFactory item = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(item);
        try {
            List<FileItem> list = upload.parseRequest(request);
            for (FileItem fileItem : list) {
                String fieldName = fileItem.getFieldName();
                if (fileItem.isFormField()) {
                    String value = fileItem.getString();
                    if (fieldName.equals("maSP")) {
                        sanPham.setMaSP(value);
                    } else if (fieldName.equals("tenSP")) {
                        sanPham.setTenSP(new String(value.getBytes("iso-8859-1"), "UTF-8"));
                    } else if (fieldName.equals("maDM")) {
                        sanPham.setMaDM(new DanhMuc(value));
                    } else if (fieldName.equals("maNSX")) {
                        sanPham.setMaNSX(new Nsx(value));
                    }
                } else {
                    String value = fileItem.getName();
                    if (value.length() == 0 || value == null) {
                        continue;
                    }
                    if (fieldName.equals("anh1")) {
                        value = sanPham.getMaSP() + "-1-" + value;
                        fileItem.write(new File(path + "/" + value));
                        sanPham.setAnh1(value);
                    } else if (fieldName.equals("anh2")) {
                        value = sanPham.getMaSP() + "-2-" + value;
                        fileItem.write(new File(path + "/" + value));
                        sanPham.setAnh2(value);
                    } else if (fieldName.equals("anh3")) {
                        value = sanPham.getMaSP() + "-3-" + value;
                        fileItem.write(new File(path + "/" + value));
                        sanPham.setAnh3(value);
                    }
                }
            }
            sanPham.setTrangThai(Boolean.TRUE);
            boolean checkUpdate = new SanPhamDAO().updateSanPham(sanPham);
            if (checkUpdate) {
                model.addAttribute("success", "Cập nhật thành công");
            } else {
                model.addAttribute("fail", "Cập nhật thất bại");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("fail", "Cập nhật thất bại");
        }

        List<SanPham> list = new SanPhamDAO().getAllSanPham();
        model.addAttribute("listSp", new SanPhamInfo().getInfo(list));
        return "admin/danh-sach-san-pham-admin";
    }

    @RequestMapping(value = {"/admin/danh-sach-san-pham"})
    public String getAllSanPham(Model model) {
        List<SanPham> list = new SanPhamDAO().getAllSanPham();
        model.addAttribute("listSp", new SanPhamInfo().getInfo(list));
        return "admin/danh-sach-san-pham-admin";
    }
    
    @RequestMapping("/admin/san-pham-chi-tiet")
    public String getSPCTByMaSP(@RequestParam("id")String id, Model model) {
        SanPham sanPham = new SanPhamDAO().getSanPhamByMaSanPham(id);
        model.addAttribute("listSP", new SPCTInfo().getInfo(sanPham.getSanPhamChiTietCollection()));
        return "admin/danh-sach-spct-admin";
    }
    
    @RequestMapping("/admin/xoa-san-pham")
    public String deleteSPById(@RequestParam("id")String id, Model model) {
        int n = new SanPhamDAO().deleteSanPhamById(id);
        if(n != 0) {
            model.addAttribute("success", "Xoá thành công");
        } else {
            model.addAttribute("fail", "Xoá thất bại");
        }
        List<SanPham> list = new SanPhamDAO().getAllSanPham();
        model.addAttribute("listSp", new SanPhamInfo().getInfo(list));
        return "admin/danh-sach-san-pham-admin";
    }

    @RequestMapping("/admin/detail")
    public String getSanPhamChiTietByMaSP(@RequestParam("id")String id, Model model) {
        SanPhamChiTiet spct = new SanPhamChiTietDAO().getSPCTByID(id);
        model.addAttribute("sp", spct);
        return "admin/product-detail-admin";
    }
    
    @RequestMapping("/admin/cap-nhat-spct")
    public String detailSPCT(@RequestParam("id")String id, Model model) {
        SanPhamChiTiet spct = new SanPhamChiTietDAO().getSPCTByID(id);
        model.addAttribute("sp", spct);
        model.addAttribute("newSPCT", new SanPhamChiTiet());
        model.addAttribute("listMauSac", new MauSacDAO().getAllMauSac());
        model.addAttribute("listKichThuoc", new KichThuocDAO().getAllKichThuoc());
        return "admin/cap-nhat-spct-admin";
    }
    
    @RequestMapping("/admin/excute-update-spct")
    public String excuteUpdateSPCT(@ModelAttribute("newSPCT")SanPhamChiTiet spct) {
        spct.setTrangThai(Boolean.TRUE);
        boolean checkUpdate = new SanPhamChiTietDAO().update(spct);
        return "redirect:/admin/san-pham-chi-tiet.htm?id="+spct.getMaSP().getMaSP();
    }
}
