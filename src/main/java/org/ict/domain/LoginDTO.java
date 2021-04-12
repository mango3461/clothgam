package org.ict.domain;

import lombok.Data;

@Data
public class LoginDTO {
	private String mid;
	private String mpw;
	private boolean useCookie;
}
