<%@ page import="com.scb.bean.KycBean" %>
<%!
	KycBean k = null;

	public String imagePreview(String url) {
		String result = "";
		if(url.length() !=0 || !"".equalsIgnoreCase(url)) 
			result= "<img src='"+url+"' class='thumbnail' alt='Image Uploaded' onerror='Image Received'>"; 
		return result;
	}
%>

<%
	k = (KycBean)request.getAttribute("kb"); 
%>