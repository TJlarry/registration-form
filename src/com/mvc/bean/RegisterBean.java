package com.mvc.bean;
 
public class RegisterBean {
 
 private String  firstName;
 private String lastName;
 private String email;
 private String userName;
 private String password;
 
 public String getUserName() {
 return userName;
 }
 public void setUserName(String username) {
 this.userName = username;
 }
 public String getPassword() {
 return password;
 }
 public void setPassword(String password) {
 this.password = password;
 }
 public void setFirstName(String firstname) {
	 this.firstName = firstname ;
 }
 
 public String getFirstName() {
 return firstName;
 }
 
 public void setLastName(String lastname) {
 this.lastName = lastname ;
 }
 public String getLastName() {
 return lastName;
 }
 
 public void setEmail(String email) {
 this.email = email;
 }
 public String getEmail() {
 return email;
 }
}