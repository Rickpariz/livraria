/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.livros.dao;

import br.com.livros.model.Usuario;
import java.util.List;
import javax.inject.Inject;
import javax.persistence.EntityManager;

/**
 *
 * @author Ricardo Ferreira Pariz Silva
 */
public class UsuarioDAO {
    
    private final EntityManager em;
    
    @Inject
    public UsuarioDAO(EntityManager em) {
        this.em = em;
    }
    
    public UsuarioDAO(){
        this(null);
    }
    
    public List<Usuario> existe(Usuario usuario){
        return em.createQuery("select u from Usuario u where u.email = "
                + ":email and u.senha = :senha",
                Usuario.class).setParameter("email", usuario.getEmail())
                .setParameter("senha", usuario.getSenha())
                .getResultList();
    }
    
    
}
