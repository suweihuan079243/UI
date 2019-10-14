<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <style>
        .main{
            text-align: center;
            background-color: #fff;
            border-radius: 20px;
            width: 300px;
            height: 350px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%,-50%);
            padding-top: 50px;
            height:300px;
            width:500px;
            background-color: #000000;
            opacity:0.5;
        }
        html,body{height:90%;}



    </style>
    <script type="text/javascript">
        function method1() {
            window.location="result.html";
        }
    </script>

</head>
<body>

<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
<div id="Layer1" style="position:absolute; left:0px; top:0px; width:100%; height:100%">
    <img src="img2.jpg" width="100%" height="100%"/>
</div>

<div align="center" class="main" id="btn" style="position: relative" >
    <button type="button" class="btn btn-primary" id="id1" onclick="method2()">创建房间</button><br><br><br><br>
    <button type="button" class="btn btn-success" onclick="method3()">搜索房间</button><br><br><br><br>
    <button type="button" class="btn btn-info" onclick="method1()">往期结果</button>
    <button type="button" class="btn btn-info" onclick="method4()">排行榜</button>
</div>
</body>
</html>