package com.collaborativeportal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Forum {
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int usid;
	private int name;
	public int getUsid() {
		return usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public int getName() {
		return name;
	}
	public void setName(int name) {
		this.name = name;
	}
	

}
