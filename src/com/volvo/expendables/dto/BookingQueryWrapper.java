package com.volvo.expendables.dto;

import java.util.List;

public class BookingQueryWrapper {
    private List<BookingContentWrapper> content;

    public BookingQueryWrapper() {
    }



    public List<BookingContentWrapper> getContent() {
        return content;
    }

    public void setContent(List<BookingContentWrapper> content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "BookingQueryWrapper{" +
                "content=" + content +
                '}';
    }
}
