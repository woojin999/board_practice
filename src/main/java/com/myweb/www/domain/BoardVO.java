package com.myweb.www.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class BoardVO {
	private long bno;
	private String bname;
	private String writer;
	private String description;
	private String regAt;
	private String modAt;
	private int readCount;
	private int fileCount;
	private String fileName;
	
	// register
	public BoardVO(String bname, String writer, String description) {
		this.bname = bname;
		this.writer = writer;
		this.description = description;
	}
	// list
	public BoardVO(long bno, String bname, String writer, String modAt, int readCount) {
		this.bno = bno;
		this.bname = bname;
		this.writer = writer;
		this.modAt = modAt;
		this.readCount = readCount;
	}
	// detail
	public BoardVO(String bname, String writer, String description, String modAt, int readCount, String fileName) {
		this.bname = bname;
		this.writer = writer;
		this.description = description;
		this.modAt = modAt;
		this.readCount = readCount;
		this.fileName = fileName;
	}
	// modify
	public BoardVO(long bno, String bname, String writer, String description) {
		this.bno = bno;
		this.bname = bname;
		this.writer = writer;
		this.description = description;
	}
	
	
}
