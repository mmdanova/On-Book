<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World - JSP</title>
        <style type="text/css">
            #hlWorld{
                text-align: center;     
                color: green;
                border-style: solid;
            }
        </style>       
    </head>
    <body>
        <h1 id="hlWorld"><%out.println("JSP - Hello World!!");%></h1>
    </body>
</html>
