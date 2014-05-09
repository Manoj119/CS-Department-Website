<%@page contentType="text/html;charset=UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head><title><% out.print(" 500 Error "); %></title>

<link rel="icon" type="image/png" href="alert-48.png"/>

<style type="text/css">


body {
    overflow:hidden;
    margin:0;

}
#big-bg {
    position:relative;
    color: rgba(252, 47, 99,1);
    text-shadow:1px 1px 1px #c0c0c0;
    float: right;
    font-family:ubuntu;
    letter-spacing:-50px;
    font-size: 320px;
    right: 0;
    margin-top:-520px;
    text-align: center;
    width: 1000px;
}
#wrapper p {    
    position:relative;
    color: rgb(0, 55, 140);
    font-family:century;
    font-size:64px;
    font-weight: bold;
    position:absolute;
    top:320px;
    right:280px;
}

#strip {
    background:url('../pics/24x.gif') repeat 60px 22px,-moz-linear-gradient(left,rgb(56, 115, 255) 0%, rgb(56, 115, 255) 100%);
    height:24px;
    display:block;
    position:relative;
    margin-top:520px;
}

</style>
</head>
<body>
<div id="wrapper">
    <span id="big-bg">500</span>
    <p>Internal Server Error </p>
    <span id="strip"></span>
</div>
</body>
</html>