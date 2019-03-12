<#import "macro/myMacro.ftl" as holamacro>
<!doctype html>
<html lang="cat">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<div class="container">
    <h5>Totes les ip's</h5>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">dns</th>
            <th scope="col">Descripció</th>
            <th scope="col">adreça ip</th>
            <th scope="col">Actualiza</th>
            <th scope="col">Elimina</th>
        </tr>
        </thead>
    <#list model["product"] as product>
  	<tr>
        <td>${product.id}</td>
        <td>${product.name}</td>
        <td>${product.description}</td>
        <td>${product.price}</td>
        <td><a href="/product/${product.id}/update">Edita</a></td>
        <td><a href="/product/delete/${product.id}">Elimina</a></td>
    </tr>
    </#list>
    </table>

</div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>