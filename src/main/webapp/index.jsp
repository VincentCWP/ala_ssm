<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>阿拉亲子</title>

    <link rel="stylesheet" href="resources/css/style.css" type="text/css"/>
    <script type="text/javascript" src="resources/js/common.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="resources/js/public.js"></script>
</head>

<body>

<script type="text/javascript">
    window.location.href = "<%=path %>/selectindex.action";
</script>
</body>
</html>