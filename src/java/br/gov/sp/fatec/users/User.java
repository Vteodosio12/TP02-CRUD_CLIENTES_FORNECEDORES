/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.fatec.users;

/**
 *
 * @author notebook-user
 */
public class User {
    private String name;
    private String email;
    private String password;

    public void setAttributes(String name, String email, String password){
        this.setName(name);
        this.setEmail(email);
        this.setPassword(password);
    }
    
    public String getName() {
        return name;
    }

    public void setName(String nome) {
        this.name = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
