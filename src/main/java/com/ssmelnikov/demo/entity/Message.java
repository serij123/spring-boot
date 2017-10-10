package com.ssmelnikov.demo.entity;

import org.springframework.data.annotation.Id;

import java.util.Date;

/**
 * Created by Melnikov_S on 22.09.2017.
 */
public class Message {
    @Id
    private String id;

    private Date dt;
    private String user;
    private String text;
    private String chtld;

    public void setChtld(String chtld) {
        this.chtld = chtld;
    }

    public String getChtld() { return chtld; }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getDt() {
        return dt;
    }

    public void setDt(Date dt) {
        this.dt = dt;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
}
