package br.com.livros.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.livros.dao.CategoriaDAO;
import br.com.livros.model.Categoria;
import javax.inject.Inject;
import net.vidageek.mirror.exception.ReflectionProviderException;
import org.hibernate.exception.ConstraintViolationException;

/**
 *
 * @author Ricardo Ferreira Pariz Silva
 */
@Controller
public class CategoriaController {

    private final Result result;
    private final CategoriaDAO dao;

    @Inject
    public CategoriaController(Result result, CategoriaDAO dao) {
        this.result = result;
        this.dao = dao;
    }

    public CategoriaController() {
        this(null, null);
    }

    @Post
    public void adiciona(Categoria categoria) {
        dao.adiciona(categoria);
        result.use(Results.json()).from(categoria).serialize();
    }
}
