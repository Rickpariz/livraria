<%@ page contentType="text/html; charset=UTF-8" %>

<!doctype html>
<html lang="br">

<head>
  <title>Livraria - Dahsboard</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

  <!-- Material Kit CSS -->
  <link rel="stylesheet" href="../assets/css/material-kit.css">
  <link rel="stylesheet" href="../assets/css/dashboard.css">


</head>

<body>
  <div class="struct">
    <%@include file="../menu-lateral.jsp"%>
    <nav class="navbar fixed-top bg-info">
      <div class="container">
        <div class="nav-content">
          <a class="navbar-brand" href="">Livraria </a>
          <button class="navbar-toggler sidenav-bar-open" type="button">
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
      </div>
    </nav>
    <!-- Conteudo -->
    <div class="content">
      <div class="container">
        <div class="card card-nav-tabs text-center">
          <div class="card-header card-header-info">
            Dashboard
          </div>
          <div class="card-body">
            <h4 class="card-title">Info</h4>
            <p class="card-text">Graficos e informações importantes para a plataforma</p>
            <a href="#" class="btn btn-info">Começar</a>
          </div>
          <div class="card-footer text-muted">
            Gerenciamento e analises da plataforma
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/bootstrap-material-design.js"></script>
  <!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
  <script src="../assets/js/material-kit.js?v=2.0.0"></script>

  <script src="../assets/js/dashboard.js" charset="utf-8"></script>

</body>

</html>
