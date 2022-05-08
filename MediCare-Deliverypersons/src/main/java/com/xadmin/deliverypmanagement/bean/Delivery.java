package com.xadmin.deliverypmanagement.bean;

public class Delivery {

	private int dlid;
	private int oid;
	private String dlperson;
	private int dlpersonid;
	private String odetails;
	private String destination;
	private String dldate;
	
	public Delivery(int oid, String dlperson, int dlpersonid, String odetails, String destination, String dldate) {
		super();
		this.oid = oid;
		this.dlperson = dlperson;
		this.dlpersonid = dlpersonid;
		this.odetails = odetails;
		this.destination = destination;
		this.dldate = dldate;
	}

	public Delivery(int dlid, int oid, String dlperson, int dlpersonid, String odetails, String destination,
			String dldate) {
		super();
		this.dlid = dlid;
		this.oid = oid;
		this.dlperson = dlperson;
		this.dlpersonid = dlpersonid;
		this.odetails = odetails;
		this.destination = destination;
		this.dldate = dldate;
	}
	
	public int getDlid() {
		return dlid;
	}
	public void setDlid(int dlid) {
		this.dlid = dlid;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getDlperson() {
		return dlperson;
	}
	public void setDlperson(String dlperson) {
		this.dlperson = dlperson;
	}
	public int getDlpersonid() {
		return dlpersonid;
	}
	public void setDlpersonid(int dlpersonid) {
		this.dlpersonid = dlpersonid;
	}
	public String getOdetails() {
		return odetails;
	}
	public void setOdetails(String odetails) {
		this.odetails = odetails;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDldate() {
		return dldate;
	}
	public void setDldetails(String dldate) {
		this.dldate = dldate;
	}
	
	
}
