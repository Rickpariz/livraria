/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.livros.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.livros.dao.UsuarioDAO;
import br.com.livros.model.Usuario;
import javax.inject.Inject;
import br.com.caelum.vraptor.validator.Validator;
import br.com.livros.annotation.Public;
import br.com.livros.model.UsuarioLogado;
import java.util.List;


/**
 *
 * @author Ricardo Ferreira Pariz Silva
 */
@Controller
public class LoginController {
    
    private final UsuarioDAO dao;
    private final Result result;
    private final Validator validator;
    private final UsuarioLogado usuarioLogado;
    
    
    @Inject
    public LoginController(UsuarioDAO dao, Result result,
            Validator validator, UsuarioLogado usuarioLogado) {
        this.dao = dao;
        this.result = result;
        this.validator = validator;
        this.usuarioLogado = usuarioLogado;
    }

    public LoginController() {
        this(null, null, null, null);
    }
    
    @Public
    @Path("/login")
    public void login(){}
    
    @Post
    @Public
    public void autentica(Usuario usuario){
        List<Usuario> user = dao.existe(usuario);
        if (user.isEmpty()) {
            validator.add(new SimpleMessage("login", "Usuário ou senha inválido !"));
            validator.onErrorRedirectTo(this).login();
        }
        usuarioLogado.setUsuario(user.get(0));
        result.redirectTo(DashboardController.class).dashboard();
    }
   
    @Get
   public void logout(){
       usuarioLogado.logout();
       result.redirectTo(this).login();
   }
}