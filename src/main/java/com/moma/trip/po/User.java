package com.moma.trip.po;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class User implements Serializable {

	public final static String Y = "Y";
	public final static String N = "N";
	public final static String LOGIN_USER = "loginUser";

	private static final long serialVersionUID = 7292071721436679679L;
	private String userId;
	private String loginId;
	private String enable;
	private String password;
	private String repassword;
	private String name;
	private String lastLoginTime;
	private String icon;
	private String introduce;
	private String tags;
	private String roleId;
	private String salt;
	private Date createTime;
	private Date updateTime;
	private String acode;
	//附加信息
	private String email;
	private String sex;
	private String brithYear;
	private String brithMonth;
	private String brithDay;
	
	private String ctripUniqueId;
	private List<String> favoriteActivityIds = new ArrayList<String>();

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getEnable() {
		return enable;
	}

	public void setEnable(String enable) {
		this.enable = enable;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(String lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getAcode() {
		return acode;
	}

	public void setAcode(String acode) {
		this.acode = acode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBrithYear() {
		return brithYear;
	}

	public void setBrithYear(String brithYear) {
		this.brithYear = brithYear;
	}

	public String getBrithMonth() {
		return brithMonth;
	}

	public void setBrithMonth(String brithMonth) {
		this.brithMonth = brithMonth;
	}

	public String getBrithDay() {
		return brithDay;
	}

	public void setBrithDay(String brithDay) {
		this.brithDay = brithDay;
	}

	public String getCtripUniqueId() {
		return ctripUniqueId;
	}

	public void setCtripUniqueId(String ctripUniqueId) {
		this.ctripUniqueId = ctripUniqueId;
	}

	public List<String> getFavoriteActivityIds() {
		return favoriteActivityIds;
	}

	public void setFavoriteActivityIds(List<String> favoriteActivityIds) {
		this.favoriteActivityIds = favoriteActivityIds;
	}

}
