package com.java.pojo;

import java.io.Serializable;

public class Pcly implements Serializable {

    private Long lyid;

    private String lytype;

    private String lyname;

    private String lyaddress;

    private Integer lypriceA;

    private Integer lypriceB;

    private Integer lyage;

    private String lypicture;

    public Long getLyid() {
        return lyid;
    }

    public void setLyid(Long lyid) {
        this.lyid = lyid;
    }

    public String getLytype() {
        return lytype;
    }

    public void setLytype(String lytype) {
        this.lytype = lytype == null ? null : lytype.trim();
    }

    public String getLyname() {
        return lyname;
    }

    public void setLyname(String lyname) {
        this.lyname = lyname == null ? null : lyname.trim();
    }

    public String getLyaddress() {
        return lyaddress;
    }

    public void setLyaddress(String lyaddress) {
        this.lyaddress = lyaddress == null ? null : lyaddress.trim();
    }

    public Integer getlypriceA() {
        return lypriceA;
    }

    public void setlypriceA(Integer lypriceA) {
        this.lypriceA = lypriceA;
    }

    public Integer getlypriceB() {
        return lypriceB;
    }

    public void setlypriceB(Integer lypriceB) {
        this.lypriceB = lypriceB;
    }

    public Integer getLyage() {
        return lyage;
    }

    public void setLyage(Integer lyage) {
        this.lyage = lyage;
    }

    public String getLypicture() {
        return lypicture;
    }

    public void setLypicture(String lypicture) {
        this.lypicture = lypicture == null ? null : lypicture.trim();
    }

    public Pcly() {

        super();
        // Auto-generated constructor stub

    }

    public Pcly(Long lyid, String lytype, String lyname, String lyaddress, Integer lypriceA, Integer lypriceB,
            Integer lyage, String lypicture) {
        super();
        this.lyid = lyid;
        this.lytype = lytype;
        this.lyname = lyname;
        this.lyaddress = lyaddress;
        this.lypriceA = lypriceA;
        this.lypriceB = lypriceB;
        this.lyage = lyage;
        this.lypicture = lypicture;
    }

}