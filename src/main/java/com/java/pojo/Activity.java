package com.java.pojo;

import java.io.Serializable;

public class Activity implements Serializable {
    
    private Long hdid;

    
    private String hdaddress;

    
    private String hdtype;

    
    private String hdtime;

    
    private String hdname;

    
    private Integer hdprice;

    
    private String hddetails;

    
    private String hdpicture;

    
    private String hdstate;

    
    public Long getHdid() {
        return hdid;
    }

    
    public void setHdid(Long hdid) {
        this.hdid = hdid;
    }

    
    public String getHdaddress() {
        return hdaddress;
    }

    
    public void setHdaddress(String hdaddress) {
        this.hdaddress = hdaddress == null ? null : hdaddress.trim();
    }

    
    public String getHdtype() {
        return hdtype;
    }

    
    public void setHdtype(String hdtype) {
        this.hdtype = hdtype == null ? null : hdtype.trim();
    }

    
    public String getHdtime() {
        return hdtime;
    }

    
    public void setHdtime(String hdtime) {
        this.hdtime = hdtime == null ? null : hdtime.trim();
    }

    
    public String getHdname() {
        return hdname;
    }

    
    public void setHdname(String hdname) {
        this.hdname = hdname == null ? null : hdname.trim();
    }

   
    public Integer getHdprice() {
        return hdprice;
    }

    
    public void setHdprice(Integer hdprice) {
        this.hdprice = hdprice;
    }

    
    public String getHddetails() {
        return hddetails;
    }

    
    public void setHddetails(String hddetails) {
        this.hddetails = hddetails == null ? null : hddetails.trim();
    }

    
    public String getHdpicture() {
        return hdpicture;
    }

    
    public void setHdpicture(String hdpicture) {
        this.hdpicture = hdpicture == null ? null : hdpicture.trim();
    }

    
    public String getHdstate() {
        return hdstate;
    }

    
    public Activity(Long hdid, String hdaddress, String hdtype, String hdtime,
			String hdname, Integer hdprice, String hddetails, String hdpicture,
			String hdstate) {
		super();
		this.hdid = hdid;
		this.hdaddress = hdaddress;
		this.hdtype = hdtype;
		this.hdtime = hdtime;
		this.hdname = hdname;
		this.hdprice = hdprice;
		this.hddetails = hddetails;
		this.hdpicture = hdpicture;
		this.hdstate = hdstate;
	}


	public Activity() {
		super();
		// TODO Auto-generated constructor stub
	}


	public void setHdstate(String hdstate) {
        this.hdstate = hdstate == null ? null : hdstate.trim();
    }
}