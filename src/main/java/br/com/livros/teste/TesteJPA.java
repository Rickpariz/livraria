/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.livros.teste;

import br.com.livros.model.Usuario;
import br.com.livros.util.JPAUtil;
import javax.persistence.EntityManager;

/**
 *
 * @author bahia
 */
public class TesteJPA {

    public static void main(String[] args) {
        EntityManager em = JPAUtil.criaEntityManager();
        Usuario u = new Usuario();
        u.setEmail("admin@gmail.com");
        u.setSenha("admin");
        u.setNome("admin");
        em.getTransaction().begin();
        em.persist(u);
        em.getTransaction().commit();

//        Categoria c = new Categoria();
//        c.setNome("Terror");
//
//        Categoria c2 = new Categoria();
//        c2.setNome("Romance");
//        
//        Set<Categoria> categorias = new HashSet<>();
//        categorias.add(c);
//        categorias.add(c2)
//                ;
//        Livro livro = new Livro();
//        livro.setNome("teste 2");
//        livro.setDescricao("testando novamente");
//        livro.setPaginas(100);
//        livro.setCategoria(categorias);
//        
//
//        em.getTransaction().begin();
//        em.persist(c);
//        em.persist(c2);
//        em.persist(livro);        
//        em.getTransaction().commit();

    }
}
