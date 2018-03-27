package br.com.livros.interceptor;

import br.com.caelum.vraptor.Accepts;
import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.com.livros.annotation.Public;
import br.com.livros.controller.LoginController;
import br.com.livros.model.UsuarioLogado;
import javax.inject.Inject;

/**
 *
 * @author Ricardo Ferreira Pariz Silva
 */

@Intercepts
public class AutoriazadorInterceptor {
    
    private final UsuarioLogado usuarioLogado;
    private final Result result;
    private final ControllerMethod controllerMethod;
    
    @Inject
    public AutoriazadorInterceptor(UsuarioLogado usuarioLogado, Result result,
            ControllerMethod controllerMethod) {
        this.usuarioLogado = usuarioLogado;
        this.result = result;
        this.controllerMethod = controllerMethod;
    }
    
    public AutoriazadorInterceptor(){
        this(null, null, null);
    }
    
    @Accepts
    public boolean accepts(){
        return !controllerMethod.containsAnnotation(Public.class);
    }
    
    @AroundCall
    public void intercepta(SimpleInterceptorStack stack){
        if (usuarioLogado.getUsuario() == null) {
            result.redirectTo(LoginController.class).login();
            return;
        }
        stack.next();
    }    
}
