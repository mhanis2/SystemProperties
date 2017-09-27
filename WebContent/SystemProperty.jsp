<!DOCTYPE html>

<%@ page import="sk.maha.system_property.SystemPropertiesDemo,java.util.List, java.util.ArrayList" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>System Property</title>
</head>
<body>

	<h1>This is the list of System Properties for this system</h1>
	
	<%
	SystemPropertiesDemo sysProperties = new SystemPropertiesDemo();
	List<String> listOfSystemProperties = new ArrayList<>();
	listOfSystemProperties = sysProperties.createPropertiesList();
	%>
	
	<table border="1">
 
 	<%
 		for(int i = 0; i < listOfSystemProperties.size(); i++) {
 	%>
 			<tr>
 				<td><%= listOfSystemProperties.get(i) %></td>
 				<td><%= System.getProperty(listOfSystemProperties.get(i)) %></td>
 			</tr>
 	<% 
 		}
 	%>
	</table>
	
</body>
</html>