<#import "macro/myMacro.ftl" as holamacro>
<!doctype html>
<html lang="cat">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<div class="container">
    <h5> Si vols trobar una Comanda introdueix el codi</h5>
    <table class="table table-striped">
        <thead>
        <tr>
				<th scope="col">codi</th>
            <th scope="col">data_ticket</th>
            <th scope="col">descripcio</th>
            <th scope="col">Editeu</th>
            <th scope="col">Elimineu</th>
        </tr>
        </thead>
    <#list model["comandes"] as comandes>
  	<tr>
        <td>${comandes.codi}</td>
        <td>${comandes.data_ticket}</td>
        <td>${comandes.descripcio}</td>
        <td><a href="/opinionsCli/${comandes.codi}/update">Edita</a></td>
        <td><a href="/opinionsCli/delete/${comandes.codi}">Elimina</a></td>
    </tr>
    </#list>
    </table>

</div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>