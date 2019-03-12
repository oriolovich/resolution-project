<#import "macro/myMacro.ftl" as holamacro>
<!doctype html>
<html lang="es">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<@holamacro.finder></@holamacro.finder>
<@holamacro.printProducts collectionData=product></@holamacro.printProducts>
<@holamacro.footer></@holamacro.footer>
<@holamacro.optional></@holamacro.optional>
</body>
</html>