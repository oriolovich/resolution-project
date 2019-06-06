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


<div class="container-fluid">
<div class="row justify-content-center align-items-center centered-form">
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
<div class="panel panel-default" style="padding: 10px">
<div class="panel-heading">
    <h2 style="font-family: 'Raleway', sans-serif;">Formulari</h2>
</div>
							<@spring.bind "opinionsCli"/>
						<#if opinionsCli?? && noErrors??>
							<p class="font">Dades Enviades</p>
							<p class="font">id: ${opinionsCli.id}</p>
							<p class="font">observació: ${opinionsCli.observacio}</p>
							<p class="font">opinió revisada: ${opinionsCli.oprevisada}</p>
							<p class="font">codi del restaurant: ${opinionsCli.restcodi}</p>
							<p class="font">codi del client: ${opinionsCli.clicodi}</p>
                        <#else>

                            <form action="/form" method="post">
                                <@spring.formInput path="opinionsCli.id" fieldType="hidden"/>
                                <div class="font">
                                    Codi:<br>
                                    <span style="margin-left: 15px"><@spring.formInput path="opinionsCli.id" fieldType="" attributes="required"/><@spring.showErrors "<br>"/></span>
                                </div>
                                <div class="font">
                                    Observació:<br>
									<span style="margin-left: 15px"><@spring.formInput "opinionsCli.observacio"/><@spring.showErrors "<br>"/></span>
                                </div>
                                <div class="font">
                                    Opinió Revisada:<br>
                                    <span style="margin-left: 15px" ><@spring.formInput "opinionsCli.opirevisada"/><@spring.showErrors "<br>"/></span>
                                </div>
	                            <div class="font">
		                            Codi del Restaurant:<br>
		                            <span style="margin-left: 15px"><@spring.formInput "opinionsCli.restcodi"/><@spring.showErrors "<br>"/></span>
	                            </div>
                                <input class="btn btn-secondary" type="submit" value="Envia'l">
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