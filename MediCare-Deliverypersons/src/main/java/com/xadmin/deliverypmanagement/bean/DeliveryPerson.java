package com.xadmin.deliverypmanagement.bean;

public class DeliveryPerson {
	
	private int id;
	private String nic;
	private String name;
	private String email;
	private String address;
	private String contact;
	private String availability;
	
	
	
	public DeliveryPerson(String nic, String name, String email, String address, String contact, String availability) {
		super();
		this.nic = nic;
		this.name = name;
		this.email = email;
		this.address = address;
		this.contact = contact;
		this.availability = availability;
	}

	public DeliveryPerson(int id, String nic, String name, String email, String address, String contact, String availability) {
		super();
		this.id = id;
		this.nic = nic;
		this.name = name;
		this.email = email;
		this.address = address;
		this.contact = contact;
		this.availability = availability;
	}
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}
	
	
	

}
