package com.volvo.expendables.dto;

/**
 * @author Balarkan Babith
 *
 * ${tags}
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class UserDTO implements Serializable{

	/**
	 * Generated serialization version id
	 */
	private static final long serialVersionUID = 6560837591575944580L;
	
	private String userName;
	private String supplierName;
	private String parma;
	private String contactPerson;
	private String firstName;
	private String lastName;
	private String role;
	private String password;
	private String confirmPassword;
	private InputStream profilePhoto;
	private String address;
	
	private String email;
	private String mobileNo;
	
	public UserDTO(){
		
	}

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getParma() {
        return parma;
    }

    public void setParma(String parma) {
        this.parma = parma;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public InputStream getProfilePhoto() {
        return profilePhoto;
    }

    public void setProfilePhoto(InputStream profilePhoto) {
        this.profilePhoto = profilePhoto;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }
	

	
	
}
