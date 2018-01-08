/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.Inteface.ProductInteface;
import com.Model.Product;
import com.Model.User;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductService implements ProductInteface {

    @PersistenceUnit
    private EntityManagerFactory emf;
    private EntityManager em;

    @Autowired
    KategoriService kat;
    
    public ProductService() {
    }

    /**
     * @return the emf
     */
    public EntityManagerFactory getEmf() {
        return emf;
    }

    /**
     * @param emf the emf to set
     */
    public void setEmf(EntityManagerFactory emf) {
        this.emf = emf;
    }

    /**
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }

    @Override
    public void deleteProduct(int idProduct) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        com.Model.Product product = em.find(Product.class, idProduct);
        product.setStatus("tidak aktif");
        em.merge(product);
        em.getTransaction().commit();
        em.close();
    }

    @Override
    public List<Product> showAllProduct() {
        em = emf.createEntityManager();
        Query query = em.createQuery("SELECT p from Product p where p.status ='aktif' ");
        List<Product> product = query.getResultList();
        return product;
    }
    
    public List<Product> showAllProducts() {
        em = emf.createEntityManager();
        Query query = em.createQuery("SELECT p from Product p");
        List<Product> product = query.getResultList();
        return product;
    }

    public List<Product> findProductByKategori(int kategori) {
        //Product productKategori = new Product();
        em = emf.createEntityManager();
        Query query = em.createQuery("SELECT p FROM Product p WHERE p.idKategori.idKetegori =:kategori and p.status ='aktif'");
        query.setParameter("kategori", kategori);
        List<Product> productKategori = query.getResultList();
        return productKategori;
    }

    @Override
    public List<Product> findProductByName(String name) {
        //Product productName = new Product();
        em = emf.createEntityManager();
        Query query = em.createQuery("SELECT P FROM Product P WHERE UPPER(P.namaProduct) LIKE '%'|| UPPER(:name)||'%'");
        query.setParameter("name", name);
        List<Product> productName = query.getResultList();
        return productName;
    }

    @Override
    public void saveProduct(Product product) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        product.setStatus("aktif");
        em.persist(product);
        em.getTransaction().commit();
        em.close();
    }

    @Override
    public List<Product> findProductByKategori(int kategori, String keyword) {
        em = emf.createEntityManager();
        Query q = em.createQuery("select p from Product p where p.idKategori.idKetegori = :kategori and UPPER(p.namaProduct) LIKE '%'|| UPPER(:keyword)||'%' ");
        q.setParameter("keyword", keyword);
        q.setParameter("kategori", kategori);
        
        List<Product> prod = q.getResultList();
        return prod;
    }
    
   public Product findProductById(int id)
   {
       em = emf.createEntityManager();
       Product pro = em.find(Product.class, id);
       return pro;
   }

    public void editProduct(Product prod,User user) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        com.Model.Product pr = em.find(Product.class, prod.getIdProduct());
        pr.setDeskripsi(prod.getDeskripsi());
        pr.setQty(prod.getQty());
        pr.setHarga(prod.getHarga());
        pr.setBerat(prod.getBerat());
//        pr.setIdKategori(kat.findById(prod.getIdKategori().getIdKetegori()));
        pr.setNamaProduct(prod.getNamaProduct());
        pr.setImage(prod.getImage());
        pr.setUpdateddate(new Date());
        pr.setUpdatedby(user.getIdUser());
        em.merge(pr);
        em.getTransaction().commit();
    }

    @Override
    public List<Product> findProductByKategori(String kategori) {
        em = emf.createEntityManager();
        Query q = em.createQuery("select p from Product p where p.idKategori.kategori = :kategori");
        q.setParameter("kategori", kategori);
        List<Product> prod = q.getResultList();
        return prod;
    }

    
    
    public List<Product> showAllFashion()
    {
        em = emf.createEntityManager();
        List<Product> data = em.createQuery("select p from Product p where p.idKategori.idKetegori = 3").getResultList();
        em.close();
        return data;
        
    }
    
    public List<Product> showAllElektronik()
    {
        em = emf.createEntityManager();
        List<Product> data = em.createQuery("select p from Product p where p.idKategori.idKetegori = 2").getResultList();
        em.close();
        return data;
        
    }
    
    public List<Product> showAllBayi()
    {
        em = emf.createEntityManager();
        List<Product> data = em.createQuery("select p from Product p where p.idKategori.idKetegori = 1").getResultList();
        em.close();
        return data;
        
    }
    
    public List<Product> showAllProdctoffset()
    {
        em = emf.createEntityManager();
        List<Product> data = em.createQuery("select p from Product p ORDER BY p.idProduct DESC").getResultList();
        List<Product> dt = new ArrayList<>();
        for (int i = 0; i < 9; i++) {
            dt.add(data.get(i));
        }
        em.close();
        return dt;
        
    }

    public void activedProduct(Product product) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        Product p = em.find(Product.class, product.getIdProduct());
        p.setStatus("aktif");
        em.merge(p);
        em.getTransaction().commit();
        
    }
    
    
}
