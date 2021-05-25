/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart implements Serializable{

    private List<CartLine> cartLines = new ArrayList<CartLine>();
    private double totalPrice;

    public Cart() {
    }

    public void setCartLines(List<CartLine> cartLines) {
        this.cartLines = cartLines;
    }

    public List<CartLine> getCartLines() {
        return cartLines;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    public CartLine findCartLine(CartLine cartLine) {
        for (CartLine cl : this.cartLines) {
            if (cartLine.getMaSPCT().equals(cl.getMaSPCT())) {
                return cl;
            }
        }
        return null;
    }
    
    public CartLine findCartLine(String maSPCT) {
        for (CartLine cl : this.cartLines) {
            if (maSPCT.equals(cl.getMaSPCT())) {
                return cl;
            }
        }
        return null;
    }

    public boolean addToCart(CartLine cartLine) {
        CartLine temp = this.findCartLine(cartLine);
        //neu da co trong gio thi cap nhat so luong
        if (temp != null) {
            int soLuong = temp.getSoLuong() + cartLine.getSoLuong();
            if (soLuong <= 0) {
                this.cartLines.remove(temp);
                return false;
            } else if (soLuong > temp.getSpct().getSoLuong()) {
                soLuong = temp.getSpct().getSoLuong();
            }
            temp.setSoLuong(soLuong);
            return false;
        }
        // chua co trong gio
        this.cartLines.add(cartLine);
        return true;
    }

    public void updateCart() {
        for (CartLine cartLine : this.cartLines) {
            cartLine.updateInfo();
            if (cartLine.getSoLuong() <= 0) {
                this.cartLines.remove(cartLine);
            }
        }
        this.calculateTotalPrice();
    }
    
    public void removeCartLine(String maSPCT) {
        CartLine cartLine = this.findCartLine(maSPCT);
        this.cartLines.remove(cartLine);
    }
    
    public double calculateTotalPrice() {
        this.totalPrice = 0;
        for (CartLine cartLine : this.cartLines) {
            this.totalPrice += cartLine.calculatePrice();
        }
        return this.totalPrice;
    }
}
