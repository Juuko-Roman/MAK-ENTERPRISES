/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.Klint;

/**
 *
 * @author ROMAN
 */
public class AccountModel {
        public boolean login(String username, String password) {
            return username.equalsIgnoreCase("clinton@gmail.com") && password.equalsIgnoreCase("123");
        }
}
