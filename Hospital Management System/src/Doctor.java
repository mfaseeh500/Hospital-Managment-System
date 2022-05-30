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
 private String id,age,d_ID,fees,room,slot;
public String getId(){
    return id;
}
public String getName(){
    return name;
}

public String getAge(){
    return age;
}
public String getGender(){
    return gender;
}
public String getDepartmentID(){
    return d_ID;
}


public String getFees(){
    return fees;
}
public String getEmail(){
    return email;
}
public String getPhonenumber(){
   
    return p_num;
}
public String getRoom(){
   
    return room;
}
public String getSlot(){
   
    return slot;
}


public void setName(String name){
    
    this.name=name;
}
public void setId(String id){
    this.id=id;
}
public void setAge(String age){
    this.age=age;
}
public void setGender(String gender){
    this.gender=gender;
}
public void setDepartmentID(String d_ID){
    this.d_ID=d_ID;
}


public void setFees(String fees){
    this.fees=fees;
}
public void setEmail(String email){
    this.email=email;
}
public void setPhonenumber(String p_num){
    this.p_num=p_num;
}
public void setRoom(String room){
    this.room=room;
}
public void setSlot(String slot){
    this.slot=slot;
}


}
