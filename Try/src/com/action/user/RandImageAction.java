package com.action.user;

import java.io.ByteArrayInputStream;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import core.tool.CodeImageCreater;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
public class RandImageAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private ByteArrayInputStream inputStream;

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}

	public String execute() throws Exception {
		CodeImageCreater rdnu = CodeImageCreater.Instance();
		this.setInputStream(rdnu.getImage());// 取得带有随机字符串的图片
		ActionContext.getContext().getSession().put("rand", rdnu.getString());// 取得随机字符串放入HttpSession
		return SUCCESS;
	}
}