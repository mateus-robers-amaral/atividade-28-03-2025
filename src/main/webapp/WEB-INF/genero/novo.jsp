<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Novo Gênero</title>
</head>
<body>
<h1>Cadastrar Novo Gênero</h1>

<form action="/generos" method="post">
    <label>Nome:</label>
    <input type="text" name="nome" required/>
    <br><br>
    <button type="submit">Salvar</button>
</form>

<a href="/generos">Voltar para lista</a>

</body>
</html>
