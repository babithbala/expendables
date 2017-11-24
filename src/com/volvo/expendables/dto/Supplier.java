package com.volvo.expendables.dto;

public class Supplier {
    private int sup_id;
    private String supplier_name;
    private String parma;
    private String address;
    private String supplier_email;
    private String supplier_phone;
    private String contact_person;

    public Supplier() {
    }

    public Supplier(String supplier_name, String parma, String address, String supplier_email, String supplier_phone, String contact_person) {
        this.supplier_name = supplier_name;
        this.parma = parma;
        this.address = address;
        this.supplier_email = supplier_email;
        this.supplier_phone = supplier_phone;
        this.contact_person = contact_person;
    }

    public int getSup_id() {
        return sup_id;
    }

    public void setSup_id(int sup_id) {
        this.sup_id = sup_id;
    }

    public String getSupplier_name() {
        return supplier_name;
    }

    public void setSupplier_name(String supplier_name) {
        this.supplier_name = supplier_name;
    }

    public String getParma() {
        return parma;
    }

    public void setParma(String parma) {
        this.parma = parma;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSupplier_email() {
        return supplier_email;
    }

    public void setSupplier_email(String supplier_email) {
        this.supplier_email = supplier_email;
    }

    public String getSupplier_phone() {
        return supplier_phone;
    }

    public void setSupplier_phone(String supplier_phone) {
        this.supplier_phone = supplier_phone;
    }

    public String getContact_person() {
        return contact_person;
    }

    public void setContact_person(String contact_person) {
        this.contact_person = contact_person;
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "sup_id=" + sup_id +
                ", supplier_name='" + supplier_name + '\'' +
                ", parma='" + parma + '\'' +
                ", address='" + address + '\'' +
                ", supplier_email='" + supplier_email + '\'' +
                ", supplier_phone='" + supplier_phone + '\'' +
                ", contact_person='" + contact_person + '\'' +
                '}';
    }
}
