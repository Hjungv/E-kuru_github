package com.scit.ekuru.vo;

import lombok.Data;

@Data
public class ChatVO {
	private int chatNum;
	private String userId;
	private int chNum;
	private String chName;
	private String content;
	private int roomNum;
	private String userType;
}
