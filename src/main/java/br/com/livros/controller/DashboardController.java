/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.livros.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;

/**
 *
 * @author Rick Pariz
 */

@Controller
public class DashboardController {
    
    @Path("/dashboard/home")
    public void dashboard(){}
    
    @Path("/dashboard/categorias")
    public void categorias(){}
}
