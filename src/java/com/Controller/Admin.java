/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Controller;

import com.Bean.ProductFormBean;
import com.DAO.KategoriService;
import com.DAO.OrderService;
import com.DAO.ProductService;
import com.DAO.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Team
 */
@Controller
@RequestMapping("/admin")
public class Admin {

    @Autowired
    ProductService ps;
    @Autowired
    OrderService os;
    @Autowired
    UserService us;
    @Autowired
    KategoriService ks;

    @RequestMapping()
    public String gotoAdminPage() {
        return "admin";
    }

    @RequestMapping(value = "/master/datamasterproduct")
    public String dataMasterProduct(ModelMap katalog, Model kategori) {
        katalog.put("product", ps.showAllProducts());
        kategori.addAttribute("kategori", ks.showAllKategori());
        return "Master_Product";
    }

    @RequestMapping(value = "/master/datamasteruser")
    public String dataMasterUser(ModelMap katalog) {
        katalog.put("users", us.showAllUser());
        return "Master_User";
    }

    @RequestMapping(value = "/master/datapenjualan")
    public String dataPenjualan(ModelMap katalog) {
        katalog.put("penjualan", os.showAllOrders());
        return "Master_Penjualan";
    }

    @RequestMapping(value = "/master/dataKategori")
    public String dataKategori(ModelMap katalog) {
        katalog.put("kategori", ks.showAllKategori());
        return "Master_kategori";
    }

    @RequestMapping(value = "/master/showByKategori/{kategori}")
    public String showByKategori(ModelMap katalog, @PathVariable("kategori") Integer kategori) {
        katalog.put("products", ps.findProductByKategori(kategori));
        return "product";
    }

    @RequestMapping(value = "/master/search", method = RequestMethod.POST)
    public String search(@RequestParam("keyword") String keyword, @RequestParam("kategori") Integer kategori, ModelMap katalog) {
        System.out.println("keyword : " + keyword);
        System.out.println("kategori : " + kategori);
        katalog.put("products", ps.findProductByKategori(kategori, keyword));
        return "product";
    }

    @RequestMapping(value = "/master/addKategori")
    public String addkategori(ModelMap katalog, @PathVariable("kategori") Integer kategori) {
        katalog.put("products", ps.findProductByKategori(kategori));
        return "product";
    }

    @RequestMapping("/master/editProduct/{id}")
    public String editProduct(@PathVariable("id") Integer id,Model mode, @ModelAttribute("productBean") ProductFormBean productBean) {
        com.Model.Product prod = ps.findProductById(id);
        mode.addAttribute("id",prod.getIdProduct());
        productBean.setBerat(prod.getBerat());
        productBean.setCreatedby(prod.getCreatedby());
        productBean.setCreateddate(prod.getCreateddate());
        productBean.setDeskripsi(prod.getDeskripsi());
        productBean.setHarga(prod.getHarga());
        productBean.setId_kategori(ks.findById(prod.getIdKategori().getIdKetegori()).getIdKetegori());
        productBean.setNama_product(prod.getNamaProduct());
        productBean.setQty(prod.getQty());
        productBean.setUpdatedby(prod.getUpdatedby());
        productBean.setUpdateddate(productBean.getUpdateddate());
        return "editProduct";
    }
    
    @RequestMapping(value = "/master/searchs", method = RequestMethod.POST)
    public String searchs(@RequestParam("keyword") String keyword, ModelMap katalog) {
        System.out.println("keyword : " + keyword);
        katalog.put("products", ps.findProductByName(keyword));
        return "product";
    }
    
    @RequestMapping(value = "/master/historyuser/{id}", method = RequestMethod.GET)
    public String showHistoryOrder(@PathVariable("id") Integer id_user, ModelMap katalog){
        katalog.put("orders", us.historyUser(id_user));
        return "history_user";
    }
    @RequestMapping(value ="/master/detailorder/{id}", method = RequestMethod.GET)
    public String showDetailOrder (@PathVariable("id") Integer id_order, ModelMap katalog ) {
        katalog.put("orderdetail",os.detailOrder(id_order));
        return "detail_order";
    }
    
    
}
