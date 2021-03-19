<%-- 
    Document   : WebClient
    Created on : 1 Feb, 2021, 5:32:55 PM
    Author     : shelc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page language="java"%>

<%@page import="account.AccountSessionBeanRemote"%>

<%@page import="javax.naming.Context" %>

<%@page import="javax.naming.InitialContext" %>



  <%!

 public AccountSessionBeanRemote account = null;

 float bal=0;



 public void jspInit() {

 try {

 Context ctx = new InitialContext();

 account = (AccountSessionBeanRemote) ctx.lookup(AccountSessionBeanRemote.class.getName());

 System.out.println("Loaded Account Bean");

} catch (Exception ex) {

 System.out.println("Error:"+ ex.getMessage());

 }

 }

 public void jspDestroy() {

 account = null;

 }

%>



<%

 try {

 String s1 = request.getParameter("amt");

 String s2 = request.getParameter("group1");



 if ( s1 != null) {

 Float amt = new Float(s1);

  

 if(s2.equals("dep"))

 bal=account.deposit(amt.floatValue());

 else if(s2.equals("with"))

 bal=account.withdraw(amt.floatValue());

 else  

 %>

 <p>Please select your choice</p>

  

 <%

 }

 else

 %>



 <br>Please enter the amount<br>

 <p>

 The Transaction is complete<br>

 <b>Your Current Balance is:</b> <%= bal%>

 <p>



 <%

 }// end of try

 catch (Exception e) {

 e.printStackTrace ();

 }

 %>
