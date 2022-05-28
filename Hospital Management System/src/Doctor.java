/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MUHAMMAD FASEEH
 */
public class Doctor {
    private String name,gender,email,p_num;
 private int id,age,d_ID,fees,room,slot;
public int getId(){
    return id;
}
public String getName(){
    return name;
}

public int getAge(){
    return age;
}
public String getGender(){
    return gender;
}
public int getDepartmentID(){
    return d_ID;
}


public int getFees(){
    return fees;
}
public String getEmail(){
    return email;
}
public String getPhonenumber(){
   
    return p_num;
}
public int getRoom(){
   
    return room;
}
public int getSlot(){
   
    return slot;
}


public void setName(String name){
    
    this.name=name;
}
public void setId(int id){
    this.id=id;
}
public void setAge(int age){
    this.age=age;
}
public void setGender(String gender){
    this.gender=gender;
}
public void setDepartmentID(int d_ID){
    this.d_ID=d_ID;
}


public void setFees(int fees){
    this.fees=fees;
}
public void setEmail(String email){
    this.email=email;
}
public void setPhonenumber(String p_num){
    this.p_num=p_num;
}
public void setRoom(int room){
    this.room=room;
}
public void setSlot(int slot){
    this.slot=slot;
}


}
