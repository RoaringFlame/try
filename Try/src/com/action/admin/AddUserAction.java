package com.action.admin;

import java.sql.Timestamp;
import java.util.Date;

import com.dao.UserDao;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;

public class AddUserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String username;
	private String realname;
	private String password;
	private String rpassword;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRpassword() {
		return rpassword;
	}

	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}

	public String execute() {
		
		if(username.equals("")){
			addActionError("请输入用户名！");
			return INPUT;
		}
		if(realname.equals("")){
			addActionError("请输入真实姓名！");
			return INPUT;
		}
		if(password.equals("")){
			addActionError("请输入密码！");
			return INPUT;
		}
		
		// 查重
		UserDao userDao = new UserDao();
		if(userDao.findUserByName(username) != null){
			addActionError("用户已存在！");
			return INPUT;
		}
		
		if (rpassword.equals(password)) {
			// 实例化User
			User user = new User();
			user.setUserName(username);
			user.setUserPassword(rpassword);
			user.setRealName(realname);
			Date date = new Date();
			Timestamp timestamp = new Timestamp(date.getTime());
			user.setLoginDate(timestamp);
			user.setLoginCount(0);
			user.setPermissionSign(false);
			// 载入数据库
			if (userDao.addUser(user)) {
				return SUCCESS;
			}
		}
		addActionError("两次密码不一致！");
		return INPUT;
	}
}