/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Inteface;


import com.Model.Product;
import java.util.List;

/**
 *
 * @author user
 */


//Inteface DAO
public interface ProductInteface {
    public void saveProduct(Product product);
    public void deleteProduct(int idProduct);
    public List<Product> showAllProduct();
    public List<Product> findProductByKategori(int kategori, String keyword);
    public List<Product> findProductByName(String name);
    public List<Product> findProductByKategori(String kategori);
}
