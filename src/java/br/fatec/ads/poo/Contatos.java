/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.fatec.ads.poo;

/**
 *
 * @author Daniel
 */
public class Contatos {
    public String nome, numero, email;
    
    public Contatos(String nome, String numero, String email){
        this.nome = nome;
        this.numero = numero;
        this.email = email;
    }    
      
    public String getNome(){
        return nome;
    }
    public String getNumero(){
        return numero;
    }
    public String getEmail(){
        return email;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
  }

    public void setNumero(String numero) {
        this.numero = numero;
  }
    public void setEmail(String email) {
        this.email = email;
  }

    
}
