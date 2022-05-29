/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MUHAMMAD FASEEH
 */
public class Patient {

    private String name, gender, email, p_num, password;
    private int id, age;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getGender() {
        return gender;
    }

    public String getEmail() {
        return email;
    }

    public String getPhonenumber() {

        return p_num;
    }

    public String getPassword() {
        return password;
    }

    public void setName(String name) {

        this.name = name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAge(int age) {
        this.age = age;
    }
public void setEmail(String email){
    this.email=email;
}
public void setPhonenumber(String p_num){
    this.p_num=p_num;
}
    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
