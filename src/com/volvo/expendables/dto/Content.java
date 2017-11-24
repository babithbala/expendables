package com.volvo.expendables.dto;

public class Content {

    private int content_id;
    private String content_name;

    public Content(String content_name) {
        this.content_name = content_name;
    }

    public int getContent_id() {
        return content_id;
    }

    public void setContent_id(int content_id) {
        this.content_id = content_id;
    }

    public String getContent_name() {
        return content_name;
    }

    public void setContent_name(String content_name) {
        this.content_name = content_name;
    }

    @Override
    public String toString() {
        return "Content{" +
                "content_id=" + content_id +
                ", content_name='" + content_name + '\'' +
                '}';
    }
}
