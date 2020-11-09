/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Candey;

/**
 *
 * @author Jaime Coronado
 */
public class cliente {
    int id;
    String email;
    String Password;

    public cliente() {
    }

    public cliente(int id, String email, String Password) {
        this.id = id;
        this.email = email;
        this.Password = Password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
    
    
    
    
    
}

