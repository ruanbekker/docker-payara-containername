<%-- 
    Document   : index
    Created on : Aug 20, 2017, 6:44:07 PM
    Author     : ruan
    Credit     : https://stackoverflow.com/a/23953058
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <center>
        <br>
        <h1>Hello World!</h1>
        <br>
        <h3>Test Page with Docker + Payara Micro</h3>
        <p></p>
        <%
            String hostname, serverAddress;
            hostname = "error";
            try {
                InetAddress inetAddress;
                inetAddress = InetAddress.getLocalHost();
                hostname = inetAddress.getHostName();
            } 
              catch (UnknownHostException e) {
                e.printStackTrace();
            }
         %>
            Serving From ContainerId: <%=hostname %>
    </center>
    </body>
</html>

