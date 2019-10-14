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

    String sql="select * from user where username=?";//定义一个查询语句
    boolean login = db.login(user);//执行查询语句
    if(!login)
    {
        out.print("<script language='javaScript'> alert('用户名已存在！请重新选择注册名！');</script>");
        response.setHeader("refresh", "0;url=login.jsp");
    } else
    {
        String sql2="insert into user values(?,?)";

        boolean i = db.regist(user);
        out.print("<script language='javaScript'> alert('注册成功!');</script>");
        response.setHeader("refresh", "0;url=login.jsp");
    }

%>
</body>
</html>