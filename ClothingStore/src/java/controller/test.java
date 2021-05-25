/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import dao.DanhMucDAO;
import dao.DonHangChiTietDAO;
import dao.DonHangDAO;
import dao.NSXDAO;
import dao.SanPhamChiTietDAO;
import dao.SanPhamDAO;
import entity.Account;
import entity.DanhMuc;
import entity.DonHang;
import entity.DonHangChiTiet;
import entity.DonHangChiTietPK;
import entity.Nsx;
import entity.SanPham;
import entity.SanPhamChiTiet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.CartLine;
import model.SPCTInfo;
import model.SanPhamInfo;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author bn
 */
@EnableWebMvc
@Controller
public class test {

    @InitBinder
    public void initBinder(WebDataBinder data) {
        SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
        s.setLenient(false);
        data.registerCustomEditor(Date.class, new CustomDateEditor(s, true));
    }

    @ModelAttribute("acc")
    public Account init() {
        return new Account();
    }

    @RequestMapping("/index")
    public String index(Model model, HttpServletRequest request, @ModelAttribute("msg") String message) {
        HttpSession session = request.getSession();
        List<DanhMuc> allDanhMuc = new DanhMucDAO().getAllDanhMuc();
        session.setAttribute("listDM", allDanhMuc);
        List<Nsx> allNsx = new NSXDAO().getAllNsx();
        session.setAttribute("listNSX", allNsx);
        List<SanPham> allSanPham = new SanPhamDAO().getAllSanPham();
        Collection<SanPhamInfo> listSP = new SanPhamInfo().getInfo(allSanPham);
        model.addAttribute("listSP", listSP);
        if (message != null && message.length() > 0) {
            model.addAttribute("msg", message);
        }
        return "index";
    }

    @RequestMapping("/{key}")
    public String shop(Model model, @PathVariable("key") String key, @RequestParam("id") String ma) {
        Collection<SanPhamInfo> listSP = new ArrayList();
        if (key.equals("danh-muc")) {
            if (ma != null && ma.length() > 0) {
                DanhMuc dm = new DanhMucDAO().getDanhMucById(ma);
                if (dm != null) {
                    listSP = new SanPhamInfo().getInfo(dm.getSanPhamCollection());
                    model.addAttribute("title", dm.getTenDM());
                }
            }
        } else if (key.equals("nsx")) {
            if (ma != null && ma.length() > 0) {
                Nsx nsx = new NSXDAO().getNsxById(ma);
                if (nsx != null) {
                    listSP = new SanPhamInfo().getInfo(nsx.getSanPhamCollection());
                    model.addAttribute("title", nsx.getTenNSX());
                }
            }
        }
        model.addAttribute("listSP", listSP);
        return "shop";
    }

    @RequestMapping("/tim-kiem-theo-ten")
    public String searchByName(HttpServletRequest request, Model model) {
        String name = request.getParameter("name");
        List<SanPham> list = new SanPhamDAO().getSanPhamByName(name);
        model.addAttribute("listSP", new SanPhamInfo().getInfo(list));
        return "shop";
    }

    @RequestMapping("/tim-kiem-theo-gia")
    public String searchByPrice(HttpServletRequest request, Model model) {
        String price = request.getParameter("price");
        String[] rate = price.split(",");
        double minPrice = new Double(rate[0]);
        double maxPrice = new Double(rate[1]);
        List<SanPhamChiTiet> list = new SanPhamChiTietDAO().getSPCTByPrice(minPrice, maxPrice);
        model.addAttribute("listSP", new SanPhamInfo().getSPCTInfo(list));
        return "shop";
    }

    @RequestMapping("/san-pham-chi-tiet")
    public String productdetails(@RequestParam("id") String id, Model model) {
        SanPham sp = new SanPhamDAO().getSanPhamByMaSanPham(id);
        model.addAttribute("sp", sp);
        Collection<SanPhamChiTiet> spct = sp.getSanPhamChiTietCollection();
        model.addAttribute("listSPCT", spct);
        model.addAttribute("cartLine", new CartLine());
        return "productdetail";
    }

    @RequestMapping("/admin/home-admin")
    public String homeadmin() {
        return "admin/home-admin";
    }

    @RequestMapping("/gio-hang")
    public String insertDHCT(@ModelAttribute("cartLine") CartLine cartLine, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("gioHang");
        if (cart == null) {
            cart = new Cart();
        }
        if (cartLine != null && cartLine.getMaSPCT() != null && cartLine.getMaSPCT().length() != 0) {
            cartLine.updateInfo();
            cart.addToCart(cartLine);
        }
        if (cart.getCartLines().isEmpty()) {
            model.addAttribute("cartEmpty", "Giỏ hàng trống!");
        }
        session.setAttribute("gioHang", cart);
        model.addAttribute("cartForm", new Cart());
        return "cart";
    }

    @RequestMapping("/xoa-sp")
    public String deleteSP(@RequestParam("id") String ma, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("gioHang");
        cart.removeCartLine(ma);
        session.setAttribute("gioHang", cart);
        return "redirect:/gio-hang.htm";
    }

    @RequestMapping("/login")
    public String login(@ModelAttribute("acc") Account acc, HttpServletRequest request, Model model, RedirectAttributes ra) {
        HttpSession session = request.getSession();
        Account temp = new AccountDAO().getAccountByEmail(acc.getEmail());
        if (temp != null && temp.getMatKhau().equals(acc.getMatKhau())) {
            session.setAttribute("tk", temp);
            ra.addFlashAttribute("msg", "Đăng nhập thành công.");
        } else {
            model.addAttribute("msg", "Tài khoản hoặc mật khẩu không đúng. Xác nhận lại thông tin hoặc đăng ký tài khoản mới.");
            return "login";
        }
        return "redirect:/index.htm";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("tk");
        return "redirect:/index.htm";
    }

    @RequestMapping(value = "/register")
    public String register(@ModelAttribute("acc") Account acc, HttpServletRequest request, Model model) {
        acc.setTrangThai(Boolean.TRUE);
        acc.setUserCheck(Boolean.TRUE);
        boolean checkInsert = new AccountDAO().insertAccount(acc);
        if (checkInsert) {
            model.addAttribute("success", "Đăng ký thành công. Mời bạn đăng nhập vào hệ thống.");
        } else {
            model.addAttribute("fail", "Đăng ký thất bại. Vui lòng xác nhận lại thông tin.");
        }
        return "login";
    }

    @RequestMapping("/checkout")
    public String checkout(@ModelAttribute("cartForm") Cart cartForm, HttpServletRequest request, Model model) {
        cartForm.updateCart();
        HttpSession session = request.getSession();
        session.setAttribute("gioHang", cartForm);
        if (cartForm.getCartLines().isEmpty()) {
            return "redirect:/gio-hang.htm";
        }
        if (session.getAttribute("tk") == null) {
            model.addAttribute("msg", "Bạn phải đăng nhập trước khi mua hàng.");
            return "login";
        }
        return "checkout";
    }

    @RequestMapping("/confirmInfo")
    public String confirmOder(HttpServletRequest request, final RedirectAttributes ra) {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("gioHang");
        if (cart != null && !cart.getCartLines().isEmpty()) {
            DonHang dh = new DonHang();
            dh.setSoLoaiSP(cart.getCartLines().size());
            Date date = new Date(); // current time
            dh.setNgayDH(date);
            dh.setIsPaid(false);
            dh.setTongTien(cart.getTotalPrice());
            dh.setTrangThai(Boolean.TRUE);
            Account acc = (Account) session.getAttribute("tk");
            dh.setEmail(acc);
            dh.setHoTen(acc.getHoTen());
            dh.setGioiTinh(acc.getGioiTinh());
            dh.setSdt(acc.getSdt());
            boolean checkInsertDh = new DonHangDAO().insertDonHang(dh);
            if (checkInsertDh) {
                ra.addFlashAttribute("msg", "Bạn đã đặt hàng thành công, mời bạn tiếp tục mua hàng.");
                for (CartLine cartLine : cart.getCartLines()) {
                    DonHangChiTiet dhct = new DonHangChiTiet();
                    DonHangChiTietPK dhctpk = new DonHangChiTietPK();
                    dhctpk.setMaDH(dh.getMaDH());
                    dhctpk.setMaSPCT(cartLine.getMaSPCT());
                    dhct.setDonHangChiTietPK(dhctpk);
                    dhct.setDonHang(dh);
                    dhct.setSanPhamChiTiet(cartLine.getSpct());
                    dhct.setGiaBan(cartLine.getGiaBan());
                    dhct.setSoLuong(cartLine.getSoLuong());
                    boolean checkInsertDhct = new DonHangChiTietDAO().insertDHCT(dhct);
                    if (checkInsertDhct) {
                        ra.addFlashAttribute("msg", "Bạn đã đặt hàng thành công, mời bạn tiếp tục mua hàng.");
                        //update số lượng trong database
                        int checkUpdate = new SanPhamChiTietDAO().updateSoLuong(cartLine.getSpct().getSoLuong() - cartLine.getSoLuong(), cartLine.getMaSPCT());
                        //xoa trong gio hang
                        cart.getCartLines().remove(cartLine);
                        if (cart.getCartLines().isEmpty()) {
                            break;
                        }
                    } else {
                        ra.addFlashAttribute("msg", "Đặt hàng thất bạn, mời bạn tiếp tục mua hàng.");
                    }
                }
            } else {
                ra.addFlashAttribute("msg", "Đặt hàng thất bạn, mời bạn tiếp tục mua hàng.");
                return "redirect:/index.htm";
            }
        }
        return "redirect:/user-profile.htm";
    }

    @RequestMapping("/user-profile")
    public String userProfile(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("tk");
        if (acc == null) {
            model.addAttribute("msg", "Mời bạn đăng nhập.");
            return "login";
        }
        acc = new AccountDAO().getAccountByEmail(acc.getEmail());
        return "user-profile";
    }
}
