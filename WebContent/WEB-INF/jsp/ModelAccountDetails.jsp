<%@ page import="com.scb.bean.AccountBean" %>
<%! 
	AccountBean a = null;
	
	public String savedDropDown(String db_data, String selected) {
		String result = "";
		if(db_data.equalsIgnoreCase(selected)) {
			result = "selected";
		}
		return result;
	}
	
	public String savedTextData(String db_data, String placeholder) {
		if(db_data.length() !=0 || !"".equalsIgnoreCase(db_data)) 
			return "value = '"+db_data+"'";
		else
			return "placeholder = '"+placeholder+"'";
	}
%>

<%
	AccountBean a = (AccountBean)request.getAttribute("ab");
%>