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
    public static ArrayList<Clientes> getClientes(){
        if(clientes == null){
            clientes = new ArrayList<>();
            Clientes cliente01 = new Clientes();
            cliente01.setAttributes("Fulano da Silva", "111.111.111-11","11.111.111-1","fulano@empresa.com", "(11) 1111.1111","Rua 1, nº 1");
            clientes.add(cliente01);
            
            Clientes cliente02 = new Clientes();
            cliente02.setAttributes("Ciclano dos Santos", "222.222.222-22","22.222.222-2","ciclarno@empresa.com", "(22) 2222.2222","Rua 2, nº 2");
            clientes.add(cliente02);
        }
        return clientes;
    }
}
