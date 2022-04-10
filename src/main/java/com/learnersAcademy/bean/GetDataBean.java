package com.learnersAcademy.bean;

import java.io.Serializable;

public class GetDataBean {
	
	private static final long serialVersionUID = 1L;
	private int class_id;
	private String class_name;
	private int roll_no;
	private String student_name;
	private String teacher_name;
	private String subject;
	/**
	 * @return the class_id
	 */
	public int getClass_id() {
		return class_id;
	}
	/**
	 * @param class_id the class_id to set
	 */
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	/**
	 * @return the class_name
	 */
	public String getClass_name() {
		return class_name;
	}
	/**
	 * @param class_name the class_name to set
	 */
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	/**
	 * @return the roll_no
	 */
	public int getRoll_no() {
		return roll_no;
	}
	/**
	 * @param roll_no the roll_no to set
	 */
	public void setRoll_no(int roll_no) {
		this.roll_no = roll_no;
	}
	/**
	 * @return the student_name
	 */
	public String getStudent_name() {
		return student_name;
	}
	/**
	 * @param student_name the student_name to set
	 */
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	/**
	 * @return the teacher_name
	 */
	public String getTeacher_name() {
		return teacher_name;
	}
	/**
	 * @param teacher_name the teacher_name to set
	 */
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	/**
	 * @return the subject
	 */
	public String getSubject() {
		return subject;
	}
	/**
	 * @param subject the subject to set
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}
	/**
	 * @param class_id
	 * @param class_name
	 * @param roll_no
	 * @param student_name
	 * @param teacher_name
	 * @param subject
	 */
	public GetDataBean(int class_id, String class_name, int roll_no, String student_name, String teacher_name,
			String subject) {
		//super();
		this.class_id = class_id;
		this.class_name = class_name;
		this.roll_no = roll_no;
		this.student_name = student_name;
		this.teacher_name = teacher_name;
		this.subject = subject;
	}
	
	
	
	

}
