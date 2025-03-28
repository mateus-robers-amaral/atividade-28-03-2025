<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Editar Gênero</title>
</head>
<body>
<h1>Editar Gênero</h1>

<form action="/generos/atualizar/${genero.id}" method="post">
    <label>Nome:</label>
    <input type="text" name="nome" value="${genero.nome}" required/>
    <br><br>
    <button type="submit">Atualizar</button>
</form>

<a href="/generos">Voltar para lista</a>

</body>
</html>
