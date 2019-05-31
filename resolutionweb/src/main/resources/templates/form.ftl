<#import "macro/myMacro.ftl" as holamacro>
<#import "/spring.ftl" as spring />
<!doctype html>
<html lang="es" xmlns:form="http://www.w3.org/1999/html">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<!-- estilos de la pagina -->
<style>
    .font {
        font-family: 'Raleway', sans-serif;
        margin-bottom: 5px;
    }
    .btn {
        margin-left: 10px;
    }

</style>

</div>
<div class="container-fluid">
<div class="row justify-content-center align-items-center centered-form">
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
<div class="panel panel-default" style="padding: 10px">
<div class="panel-heading">
    <h2 style="font-family: 'Raleway', sans-serif;">Formulari</h2>
</div>
							<@spring.bind "product"/>
						<#if product?? && noErrors??>
							<p class="font">Dades Enviades</p>
							<p class="font">id: ${product.id}</p>
							<p class="font">name: ${product.name}</p>
							<p class="font">description: ${product.description}</p>
							<p class="font">price: ${product.price}</p>
                        <#else>

			 			<div class="panel-body">
                            <form action="/form" method="post">
                                <@spring.formInput path="product.id" fieldType="hidden"/>
                                <div class="font">
                                    Name:<br>
                                    <span style="margin-left: 15px"><@spring.formInput path="product.name" fieldType="" attributes="required"/><@spring.showErrors "<br>"/></span>
                                </div>
                                <div class="font">
                                    Description:<br>
									<span style="margin-left: 15px"><@spring.formInput "product.description"/><@spring.showErrors "<br>"/></span>
                                </div>
                                <div class="font">
                                    Price:<br>
                                    <span style="margin-left: 15px" ><@spring.formInput "product.price"/><@spring.showErrors "<br>"/></span>
                                </div>
                                <input class="btn btn-secondary" type="submit" value="Enviar">
                            </form>
                        </#if>
                        </div>
	    		</div>
    		</div>
    	</div>
    </div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>