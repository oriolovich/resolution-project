<#import "macro/myMacro.ftl" as holamacro>
<!doctype html>
<html lang="es">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<div class="container">
        <#if product??>
            <h5>Todos los eventos</h5>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Descripción</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Actualizar</th>
                    <th scope="col">Eliminar</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td><a href="/product/${product.id}/update">Editar</a></td>
                    <td><a href="/product/delete/${product.id}">Eliminar</a></td>
                </tr>
                </tbody>
            </table>
        <#else><h2>Evento no encontrado</h2></#if>
</div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>