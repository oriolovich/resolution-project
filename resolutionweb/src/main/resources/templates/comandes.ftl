<#import "macro/myMacro.ftl" as holamacro>
<!doctype html>
<html lang="es">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<div class="container">
        <#if comandes??>
            <h5>Totes les opinions dels clients</h5>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">codi</th>
                    <th scope="col">data_ticket</th>
                    <th scope="col">descripcio</th>
                    <th scope="col">Actualizar</th>
                    <th scope="col">Eliminar</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${comandes.codi}</td>
                    <td>${comandes.data_ticket}</td>
                    <td>${comandes.descripcio}</td>
                    <td><a href="/comandes/${comandes.codi}/update">Editeu</a></td>
                    <td><a href="/comandes/delete/${product.id}">Elimineu</a></td>
                </tr>
                </tbody>
            </table>
        <#else><h2>Comanda no trobada</h2></#if>
</div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>