/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.fatec.clientes;

/**
 *
 * @author Antoní Mario
 */
public class Fornecedores {
    private String razaoSocial;
    private String cnpj;    
    private String email;
    private String telefone;
    private String cep;
    private String uf;
    private String cidade;
    private String bairro;
    private String endereco;
    private String numero; 
    
    public void setAttributes(String razaoSocial, String cnpj, String email, String telefone, 
            String cep, String uf, String cidade, String bairro, String endereco, String numero){
        this.setRazaoSocial(razaoSocial);        
        this.setCnpj(cnpj);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setCep(cep);
        this.setUf(uf);
        this.setCidade(cidade);
        this.setBairro(bairro);
        this.setEndereco(endereco);
        this.setNumero(numero);
    }
    
    public String getRazaoSocial(){
        return razaoSocial;
    }
    
    public void setRazaoSocial(String razaoSocial){
        this.razaoSocial = razaoSocial;
    }
    
    public String getCnpj(){
        return cnpj;
    }
    
    public void setCnpj(String cnpj){
        this.cnpj = cnpj;
    }

    public String getEmail(){
        return email;
    }   
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public String getTelefone(){
        return telefone;
    }
    
    public void setTelefone(String telefone){
        this.telefone = telefone;
    }
    
    public String getCep(){
        return cep;
    }
    
    public void setCep(String cep){
        this.cep = cep;
    }
    
    public String getUf(){
        return uf;
    }
    
    public void setUf(String uf){
        this.uf = uf;
    }
    
    public String getCidade(){
        return cidade;
    }
    
    public void setCidade(String cidade){
        this.cidade = cidade;
    }
    
    public String getBairro(){
        return bairro;
    }
    
    public void setBairro(String bairro){
        this.bairro = bairro;
    }
    
    public String getEndereco(){
        return endereco;
    }
    
    public void setEndereco(String endereco){
        this.endereco = endereco;
    }
    
    public String getNumero(){
        return numero;
    }
    
    public void setNumero(String numero){
        this.numero = numero;
    }
   
}



