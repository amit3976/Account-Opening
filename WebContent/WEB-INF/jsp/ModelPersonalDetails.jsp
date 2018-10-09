<%@page import="com.scb.bean.PersonalBean"%>
<%!
	PersonalBean p = null;
	
	public String selectedTitle(String full_name, String title) {
		String result = "";
		String arr[] = full_name.split("\\s+");
		if(title.equalsIgnoreCase(arr[0].replace("_", ""))) {
			result = "selected";
		}
		return result;
	}
	
	public String savedName(String full_name, int num, String name_part) {
		String result = "";
		String arr[] = full_name.split("\\s+");
		if(!arr[num].equals("_")) {
			result = "value = '"+arr[num].replace("_", "")+"'";
		}
		else {
			result = "placeholder = '"+name_part+"'";
		}
		return result;
	}
					
	public String savedTextData(String db_data, String placeholder) {
		String result = "";
		if(db_data.length() !=0 || !"".equalsIgnoreCase(db_data)) 
			result= "value = '"+db_data+"'";
		else
			result= "placeholder ='"+placeholder+"'";
		return result;
	}
					
	public String savedDropDownData(String db_data, String selected) {
		String result = "";
		if(db_data != null || db_data.trim().length() != 0) {
			if(db_data.trim().equalsIgnoreCase(selected)) 
				result = "selected";
		}
		return result;
	}

	public String savedAddress(String address, int num, String address_part) {
		String result = "";
		String arr[] = address.split("\\s+");
		if(!arr[num].equals("%")) {
			result = "value = '"+arr[num].replace("%","")+"'";
		}
		else {
			result = "placeholder = '"+address_part+"'";
		}
		return result;
	}
	
	public String savedCheckedBox(String db_data, String checked){
		String result = "";
		if(db_data != null || db_data.trim().length() != 0) {
			if(db_data.trim().equalsIgnoreCase(checked)) 
				result = "checked";
		}
		return result;
	}
%>

<%
   	PersonalBean p = (PersonalBean)request.getAttribute("pb");
%>
