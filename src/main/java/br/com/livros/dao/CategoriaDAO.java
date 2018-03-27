/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.livros.dao;

import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.livros.model.Categoria;
import br.com.livros.util.Response;
import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceException;
import org.hibernate.exception.ConstraintViolationException;

/**
 *
 * @author Ricardo Ferreira Pariz Silva
 */
public class CategoriaDAO {

    private final EntityManager em;
    private final Result result;

    @Inject
    public CategoriaDAO(EntityManager em, Result result) {
        this.em = em;
        this.result = result;
    }

    public CategoriaDAO() {
        this(null, null);
    }

    public void adiciona(Categoria categoria) {
        em.persist(categoria);
    }

}
