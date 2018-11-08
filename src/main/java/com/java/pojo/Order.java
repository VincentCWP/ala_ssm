package com.java.pojo;

import java.io.Serializable;

public class Order implements Serializable{
   
    private Long id;

   
    private String oname;

   
    private String omessage;

    
    private String odizhi;

   
    private String ochuxing;

   
    private String ostate;

   
    private String uname;

    
    private String uphone;

    
    private String ut;
    
    
    private String omoney;

   
    public String getOmoney() {
		return omoney;
	}


	public void setOmoney(String omoney) {
		this.omoney = omoney;
	}


	public Long getId() {
        return id;
    }

    
    public void setId(Long id) {
        this.id = id;
    }

    public String getOname() {
        return oname;
    }

   
    public void setOname(String oname) {
        this.oname = oname == null ? null : oname.trim();
    }

   
    public String getOmessage() {
        return omessage;
    }

   
    public void setOmessage(String omessage) {
        this.omessage = omessage == null ? null : omessage.trim();
    }

    public String getOdizhi() {
        return odizhi;
    }

    public void setOdizhi(String odizhi) {
        this.odizhi = odizhi == null ? null : odizhi.trim();
    }

  
    public String getOchuxing() {
        return ochuxing;
    }

   
    public void setOchuxing(String ochuxing) {
        this.ochuxing = ochuxing == null ? null : ochuxing.trim();
    }

   
    public String getOstate() {
        return ostate;
    }

  
    public void setOstate(String ostate) {
        this.ostate = ostate == null ? null : ostate.trim();
    }

   
    public String getUname() {
        return uname;
    }

   
    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getUphone() {
        return uphone;
    }

   
    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    
    public String getUt() {
        return ut;
    }

  
    public void setUt(String ut) {
        this.ut = ut == null ? null : ut.trim();
    }
}