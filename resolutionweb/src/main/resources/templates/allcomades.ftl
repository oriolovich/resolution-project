<#import "macro/myMacro.ftl" as holamacro>
<!doctype html>
<html lang="cat">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<div class="container">
    <h5> Opinions per a tots els gustos</h5>
    <table class="table table-striped">
        <thead>
        <tr>
				<th scope="col">codi</th>
            <th scope="col">observacio</th>
            <th scope="col">oprevisada</th>
            <th scope="col">Edita</th>
            <th scope="col">Elimina</th>
        </tr>
        </thead>
    <#list model["opinionscli"] as opinionsCli>
  	<tr>
        <td>${opinionsCli.codi}</td>
        <td>${opinionsCli.observacio}</td>
        <td>${opinionsCli.oprevisada}</td>
        <td><a href="/opinionsCli/${opinionsCli.id}/update">Edita</a></td>
        <td><a href="/opinionsCli/delete/${opinionsCli.id}">Elimina</a></td>
    </tr>
    </#list>
    </table>

</div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>