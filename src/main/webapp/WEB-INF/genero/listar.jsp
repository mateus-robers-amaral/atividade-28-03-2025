<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de Gêneros</title>
</head>
<body>
<h1>Lista de Gêneros</h1>

<a href="/generos/novo">Novo Gênero</a>

<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Ações</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${generos}" var="genero">
        <tr>
            <td>${genero.id}</td>
            <td>${genero.nome}</td>
            <td>
                <a href="/generos/editar/${genero.id}">Editar</a> |
                <a href="/generos/excluir/${genero.id}">Excluir</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
