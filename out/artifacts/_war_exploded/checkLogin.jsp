<%@ page import="java.sql.*" import="java.util.*" language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="Bean.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" class="Bean.UserDao" scope="page"/>
<%
    request.setCharacterEncoding("UTF-8");
    String username=(String)request.getParameter("username");//获取login页面输入的用户名和密码
    String password=(String)request.getParameter("password");
    User user=new User();
    user.setUsername(username);
    user.setPassword(password);

    boolean rs=db.login(user);//执行查询语句
    if(rs)
    {
            out.print("<script language='javaScript'> alert('登录成功');</script>");
            response.setHeader("refresh", "0;url=success.jsp");
    }
    else
    {
        out.print("<script language='javaScript'> alert('用户名错误，请重新输入');</script>");
        response.setHeader("refresh", "0;url=login.jsp");
    }

%>
</body>
</html>