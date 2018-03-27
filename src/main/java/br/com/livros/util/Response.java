/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.livros.util;

/**
 *
 * @author Ricardo Ferreira Pariz Silva
 */
public class Response {
    private final boolean status;
    private final String message;

    public Response(boolean status, String message) {
        this.status = status;
        this.message = message;
    }
    
    
}
