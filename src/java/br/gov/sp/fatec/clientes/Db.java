/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.fatec.clientes;

import java.util.ArrayList;

/**
 *
 * @author notebook-user
 */
public class Db {
    private static ArrayList<Clientes> clientes;
    private static ArrayList<Fornecedores> fornecedores;
    
    public static ArrayList<Clientes> getClientes(){
        if(clientes == null){
            clientes = new ArrayList<>();
            Clientes cliente01 = new Clientes();
            cliente01.setAttributes("Fulano da Silva", "111.111.111-11","11.111.111-1","fulano@empresa.com", "(11) 1111.1111","11.111-111","SP", "Praia Grande", "Boqueirão", "Rua 1", "1");
            clientes.add(cliente01);
            
            Clientes cliente02 = new Clientes();
            cliente02.setAttributes("Ciclano dos Santos", "222.222.222-22","22.222.222-2","ciclarno@empresa.com", "(22) 2222.2222","22.222-222","SP", "Praia Grande", "Boqueirão", "Rua 2", "2");
            clientes.add(cliente02);
        }
        return clientes;
    }
    
    public static ArrayList<Fornecedores> getFornecedores(){
        if(fornecedores == null){
            fornecedores = new ArrayList<>();
            
            Fornecedores fornecedor01 = new Fornecedores();
            fornecedor01.setAttributes("Fornecedor01", "11.111.111/1111-11", "fornecedor01@empresa.com", "(11) 1111.1111", "11.111-111", "SP", "Santos", "Macudo", "Rua 10", "1010");
            fornecedores.add(fornecedor01);
            
            Fornecedores fornecedor02 = new Fornecedores();
            fornecedor02.setAttributes("Fornecedor02", "22.222.222/2222-22", "fornecedor02@empresa.com", "(22) 2222.2222", "22.222-222", "SP", "Sao Vicente", "Centro", "Rua 20", "2020");
            fornecedores.add(fornecedor02);
        }
        return fornecedores;
    }    
}
