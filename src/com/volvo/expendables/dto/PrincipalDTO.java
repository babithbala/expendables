/**
 * 
 */
package com.volvo.expendables.dto;

import java.io.InputStream;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author Balarkan Babith
 *
 */
@XmlRootElement(name = "Principal")
public class PrincipalDTO {

	private String firstName;
	private String lastName;
	private String userName;
	private String role;
	private InputStream profilePhoto;
	private boolean requestWithImage;
	private String points;
	private String position;
	
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
	public InputStream getProfilePhoto() {
		return profilePhoto;
	}
	public void setProfilePhoto(InputStream profilePhoto) {
		this.profilePhoto = profilePhoto;
	}
	
	public boolean isRequestWithImage() {
		return requestWithImage;
	}
	public void setRequestWithImage(boolean requestWithImage) {
		this.requestWithImage = requestWithImage;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPoints() {
		return points;
	}
	public void setPoints(String points) {
		this.points = points;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
}
