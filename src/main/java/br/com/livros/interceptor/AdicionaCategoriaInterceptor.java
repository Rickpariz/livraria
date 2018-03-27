/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.livros.interceptor;

import br.com.caelum.vraptor.Accepts;
import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.com.caelum.vraptor.jpa.JPATransactionInterceptor;
import javax.inject.Inject;
import javax.persistence.PersistenceException;
import org.hibernate.HibernateException;
import org.hibernate.exception.ConstraintViolationException;

/**
 *
 * @author Ricardo Ferreira Pariz Silva
 */
@Intercepts(before = JPATransactionInterceptor.class)

public class AdicionaCategoriaInterceptor {

    private final ControllerMethod controllerMethod;

    @Inject
    public AdicionaCategoriaInterceptor(ControllerMethod controllerMethod) {
        this.controllerMethod = controllerMethod;
    }

    public AdicionaCategoriaInterceptor() {
        this(null);
    }

    @Accepts
    public boolean accepts() {
        return "adiciona".equals(controllerMethod.getMethod().getName());
    }

    @AroundCall
    public void intercepta(SimpleInterceptorStack stack) {
        try {
            stack.next();
        } catch (PersistenceException ex) {
            System.out.println("Exception");
        }
    }
}
