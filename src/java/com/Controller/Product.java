/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Controller;

import com.Bean.ProductFormBean;
import com.DAO.KategoriService;
import com.DAO.ProductService;
import com.Model.User;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/product")
public class Product {
    
    @Autowired
    ProductService prodService;
    @Autowired
    KategoriService kat;
    
    @RequestMapping("/allproduct")
    public String getAllProduct(Model model){        
        List<com.Model.Product> products = prodService.showAllProduct();
        model.addAttribute("products", products);
        model.addAttribute("kategoris", kat.showAllKategori());
        return "product";
    }
    
    @RequestMapping(value = "/kategoriproduct/{id_categori}")
    public String getProductByCategori(@PathVariable("id_categori") int id_categori, Model model){
        List<com.Model.Product> prodKategori = prodService.findProductByKategori(id_categori);
        model.addAttribute("prodKategori", prodKategori);
        return "product_kategori";
    }
    
    @RequestMapping("/saveproduct")
    public String saveProduct(HttpSession session,@ModelAttribute("productBean") ProductFormBean productBean, Model model,HttpServletRequest request) throws IOException{
        String folder = "/img_products/";
        String realPath = request.getServletContext().getRealPath(folder);
        System.out.println("rel path : "+realPath);
        
        if(!new File(realPath).exists())
        {
            System.out.println("Buat Baru");
            new File(realPath).mkdir();
        }
        if(!productBean.getImage().getOriginalFilename().isEmpty() || !productBean.getImage().getOriginalFilename().equals(""))
        {
            productBean.getImage().transferTo(new File(realPath + productBean.getImage().getOriginalFilename()));
        }
        String namaProduct = productBean.getNama_product();
        
            
            
        User user = (User) session.getAttribute("user");
        
        com.Model.Product prod = new com.Model.Product();
        
        prod.setDeskripsi(productBean.getDeskripsi());
        prod.setQty(productBean.getQty());
        prod.setHarga(productBean.getHarga());
        prod.setBerat(productBean.getBerat());
        prod.setIdKategori(kat.findById(productBean.getId_kategori()));
        prod.setNamaProduct(productBean.getNama_product());
        prod.setImage(productBean.getImage().getOriginalFilename());
        prod.setCreateddate(new Date());
        prod.setCreatedby(user.getIdUser());
        prod.setUpdateddate(new Date());
        prod.setUpdatedby(user.getIdUser());
        model.addAttribute("data", prod);
        prodService.saveProduct(prod);
        model.addAttribute("kategori",kat.showAllKategori());
        return "redirect:/admin/master/datamasterproduct";
    }
    
    @RequestMapping("/tambah")
    public String getProduct(Model model){
        ProductFormBean productBean = new ProductFormBean();
        model.addAttribute("productBean", productBean);
        model.addAttribute("kategori",kat.showAllKategori());        
        return "save_product";
    }
    @RequestMapping("/editProducts/{id}")
    public String editProduct(@PathVariable("id")Integer id,HttpSession session,@ModelAttribute("productBean") ProductFormBean productBean, Model model,HttpServletRequest request) throws IOException{
        String folder = "/img_products/";
        String realPath = request.getServletContext().getRealPath(folder);
        System.out.println("rel path : "+realPath);
        
        if(!new File(realPath).exists())
        {
            System.out.println("Buat Baru");
            new File(realPath).mkdir();
        }
        if(!productBean.getImage().getOriginalFilename().isEmpty() || !productBean.getImage().getOriginalFilename().equals(""))
        {
            productBean.getImage().transferTo(new File(realPath + productBean.getImage().getOriginalFilename()));
        }
        String namaProduct = productBean.getNama_product();
        
            
            
        User user = (User) session.getAttribute("user");
        
        com.Model.Product prod = prodService.findProductById(id);
        
        prod.setDeskripsi(productBean.getDeskripsi());
        prod.setQty(productBean.getQty());
        prod.setHarga(productBean.getHarga());
        prod.setBerat(productBean.getBerat());
        prod.setIdKategori(kat.findById(productBean.getId_kategori()));
        prod.setNamaProduct(productBean.getNama_product());
        prod.setImage(productBean.getImage().getOriginalFilename());
        prod.setCreateddate(new Date());
        prod.setCreatedby(user.getIdUser());
        prod.setUpdateddate(new Date());
        prod.setUpdatedby(user.getIdUser());
        model.addAttribute("data", prod);
        prodService.editProduct(prod,user);
        model.addAttribute("kategori",kat.showAllKategori());
        return "redirect:/admin/master/datamasterproduct";
    }
        @RequestMapping(value="deleteProduct/{id}")
        public String deleteProduct (@PathVariable("id")Integer id,HttpSession session,@ModelAttribute("productBean") ProductFormBean productBean, Model model,HttpServletRequest request) {
            prodService.deleteProduct(prodService.findProductById(id).getIdProduct());
            return "redirect:/admin/master/datamasterproduct";
        }
        
        @RequestMapping(value="activProduct/{id}")
        public String activedProduct (@PathVariable("id")Integer id,HttpSession session,@ModelAttribute("productBean") ProductFormBean productBean, Model model,HttpServletRequest request) {
            prodService.activedProduct(prodService.findProductById(id));
            return "redirect:/admin/master/datamasterproduct";
        }
}
