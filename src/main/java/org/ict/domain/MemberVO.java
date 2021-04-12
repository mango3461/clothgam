package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {

	private int mno;
	private String mid;
	private String mpw;
	private int mgen;
	private int mage;
	private String sessionId;
	private Date sessionLimit;
}
