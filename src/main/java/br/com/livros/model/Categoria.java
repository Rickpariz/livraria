package br.com.livros.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 *
 * @author Ricardo Feerreira Pariz Silva
 */
@Entity
@Table(uniqueConstraints = {
        @UniqueConstraint(columnNames = {"nome"}, name = "duplicate_nome")})
public class Categoria implements Serializable {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ID;
    private String nome;
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

        
    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }
    
}
