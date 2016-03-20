<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>

<%@ page import="javax.servlet.http.HttpSession"%>

<%@ page
	import="org.apache.struts2.dispatcher.multipart.MultiPartRequestWrapper"%>
<%@ page import="org.json.simple.*"%>

<%
	//文件保存目录路径
	String savePath = pageContext.getServletContext().getRealPath("/")
			+ "editor/attached/";
	//文件保存目录URL

	String saveUrl = request.getContextPath() + "/editor/attached/";

	//定义允许上传的文件扩展名
	String[] fileTypes = new String[] { "gif", "jpg", "jpeg", "png",
			"bmp", "doc", "docx", "xls", "xlsx", "ppt", "pptx" };
	//最大文件大小
	long maxSize = 2 * 1024 * 1024;

	//Struts2请求包装过滤器
	MultiPartRequestWrapper wrapper = (MultiPartRequestWrapper) request;

	//获得上传的文件名
	String fileName = wrapper.getFileNames("imgFile")[0];

	//获得文件过滤器
	File file = wrapper.getFiles("imgFile")[0];

	//得到上传文件的扩展名
	String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1)
			.toLowerCase();

	//检查扩展名
	if (!Arrays.<String> asList(fileTypes).contains(fileExt)) {
		out.println(getError("上传文件扩展名是不允许的扩展名。"));
		return;
	}

	//检查文件大小
	if (file.length() > maxSize) {
		out.println(getError("上传文件大小超过2M限制。"));
		return;
	}
	if (!ServletFileUpload.isMultipartContent(request)) {
		out.println(getError("请选择文件。"));
		return;
	}

	//检查目录
	File uploadDir = new File(savePath);
	if (!uploadDir.isDirectory()) {
		out.println(getError("上传目录不存在。"));
		return;
	}
	//检查目录写权限
	if (!uploadDir.canWrite()) {
		out.println(getError("上传目录没有写权限。"));
		return;
	}

	//重构上传文件的名称
	SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
	String newImgName = df.format(new Date()) + "_"
			+ new Random().nextInt(1000) + "." + fileExt;
			
	//将文件名传至session
	session.setAttribute("filename", newImgName);

	//设置 KE 中的文件地址
	String newFileName = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ saveUrl + newImgName;

	byte[] buffer = new byte[1024];
	//获取文件输出流
	FileOutputStream fos = new FileOutputStream(savePath + newImgName);

	//获取内存中当前文件输入流
	InputStream in = new FileInputStream(file);

	try {
		int num = 0;
		while ((num = in.read(buffer)) > 0) {
			fos.write(buffer, 0, num);
		}
	} catch (Exception e) {
		e.printStackTrace(System.err);
	} finally {
		in.close();
		fos.close();
	}

	//发送给 KE 
	JSONObject obj = new JSONObject();
	obj.put("error", 0);
	obj.put("url", newFileName);
	out.println(obj.toJSONString());
%>

<%!private String getError(String message) {
		JSONObject obj = new JSONObject();
		obj.put("error", 1);
		obj.put("message", message);
		return obj.toJSONString();
	}%>