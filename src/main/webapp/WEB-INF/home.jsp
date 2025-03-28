<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="pt-br">

    <head>
        <meta charset="UTF-8" />
        <title>Home</title>
    </head>

    <body>
        <c:if test="${param.notfound == 'true'}">
            <p style="color: red;">id de gênero não encontrado!</p>
        </c:if>
    </body>

    </html>