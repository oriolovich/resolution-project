<#macro head>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
              crossorigin="anonymous">
        <!-- Google icons-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="/css/main.css">
        <title>CRUD</title>
    </head>
</#macro>
<#macro navbar>
    <!-- Barra navegacion -->
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <h5 class="my-0 mr-md-auto font-weight-normal"><a href="/" style="text-decoration: none">INSTRUSSIONS!!</a></h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text dark" href="/allProducts">Veure totes les intrussions</a>
        <a class="p-2 text-dark" href="/addProduct">Afegeix ip</a>
    </nav>
</div>
</#macro>
<#macro finder>
  <header class="margenTop text-center">
      <div class="overlay"></div>
      <div class="container">
          <div class="row">
              <div class="col-xl-9 mx-auto">
                  <h4 class="mb-3">CERCADOR D'INTRUSOS</h4>
              </div>
              <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                  <form action="/product/search" method="POST">
                      <div class="form-row">
                          <div class="col-12 col-md-9 mb-2 mb-md-0">
                              <input class="form-control form-control-lg" id="id" name="id" type="text" placeholder="Buscar evento por ID">
                          </div>
                          <div class="col-12 col-md-3">
                              <button type="submit" class="btn btn-block btn-lg btn-primary">Busca</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
      </div>
  </header>
</#macro>
<#macro printProducts collectionData>
<div class="container">
 <div class="card-deck mb-3 text-center">
            <#if collectionData??>
              <#list collectionData as item>
                  <@printProduct elem=item/>
              </#list>
            </#if>
 </div>
</#macro>
<#macro printProduct elem="">
<div class="card mb-4 shadow-sm">
    <div class="card-header">
        <div class="card-header">
            <h4 class="my-0 font-weight-normal">${elem.name!""}</h4>
        </div>
        <div class="card-body">
    <#if elem??>
        <h1 class="card-title pricing-card-title">${elem.price!""} &euro;</h1>
        <ul class="list-unstyled mt-3 mb-4">
            <li>${elem.description!""}</li>
            <li>origen</li>
            <li>entrada-ip</li>
            <li>referència</li>
        </ul>
        <button type="button" class="btn btn-lg btn-block btn-outline-primary">Ir anar a un log</button>
    </#if>
        </div>
    </div>
</div>
</#macro>
<#macro footer>
     <!-- footer -->
    <footer class="pt-4 my-md-5 pt-md-5 border-top">
        <div class="row">
            <div class="col-12 col-md">
                <img class="mb-2" src="/img/foy.png" alt="foy" width="24" height="24">
                <small class="d-block mb-3 text-muted">&copy; 2019</small>
            </div>
            <div class="col-6 col-md">
                <h5>IDS</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Snort</a></li>
                    <li><a class="text-muted" href="#">Nagios</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>Firewalls</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Iptables</a></li>
                    <li><a class="text-muted" href="#">Comodo Firewall</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>Pentesting</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Fins on aguanta la teva web?</a></li>
                    <li><a class="text-muted" href="#">Atacs freqüents</a></li>
                    <li><a class="text-muted" href="#">Altres opcions</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>¿Qui som?</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Equip</a></li>
                    <li><a class="text-muted" href="#">Ubicacions</a></li>
                    <li><a class="text-muted" href="#">Privacitat</a></li>
                    <li><a class="text-muted" href="#">Condicions</a></li>
                </ul>
            </div>
        </div>
    </footer>
</div>
</#macro>
<#macro optional>
    <!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</#macro>