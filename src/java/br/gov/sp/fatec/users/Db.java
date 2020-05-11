/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.fatec.users;

import java.util.ArrayList;

/**
 *
 * @author notebook-user
 */
public class Db {
    private static ArrayList<User> users;
    public static ArrayList<User> getUsers(){
        if(users == null){
            users = new ArrayList<>();
            User admin = new User();
            admin.setAttributes("Administrador", "admin@empresa.com", "1234");
            users.add(admin);
            
            User user = new User();
            user.setAttributes("Fulano da Silva", "fulano@empresa.com", "1234");
            users.add(user);
        }
        return users;
    }
}
