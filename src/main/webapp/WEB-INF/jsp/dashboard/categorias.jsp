<%@ page contentType="text/html; charset=UTF-8" %>

<!doctype html>
<html lang="br">

<head>
  <title>Livraria - Categorias</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

  <!-- Material Kit CSS -->
  <link rel="stylesheet" href="../assets/css/material-kit.css">
  <link rel="stylesheet" href="../assets/css/bootstrap-table.min.css">
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
            Categorias
          </div>
          <div class="card-body">
            <div class="container">
              <div class="row justify-content-sm-center">
                <div class="col-sm-8">
                  <table class="table">
                    <thead>
                      <tr>
                        <th data-field="ID"> ID</th>
                        <th data-field="nome"> Nome </th>
                        <th data-formatter="actionsFormatter">Ações</th>
                      </tr>
                    </thead>
                  </table>
                </div>
              </div>
              <div class="text-center">
                <button  class="btn btn-info btn-round" data-toggle="modal" data-target="#modal-cadastrar-categoria">Adicionar</button>
              </div>
            </div>
          </div>
          <div class="card-footer text-muted">
            As categorias servem para agrupar livros na plataforma.
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="modal-cadastrar-categoria" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <form class="form">
          <div class="modal-header">
            <h5 class="modal-title">Categorias</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="container">
              <div class="form-group has-error">
                 <label class="bmd-label-floating">Digite o nome da categoria</label>
                 <input type="text" class="form-control" name="categoria.nome">
                 <span class="bmd-help"></span>
              </div>
            </div>
          </div>
          <div class="text-center">
            <button type="submit" class="btn btn-success">Cadastrar</button>
          </div>
          <br/>
        </form>
      </div>
    </div>
  </div>

  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/bootstrap-material-design.js"></script>
  <!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
  <script src="../assets/js/material-kit.js?v=2.0.0"></script>
  <script src="../assets/js/bootstrap-table.js"></script>
  <script src="../assets/js/bootstrap-table-pt-BR.min.js"></script>
  <script src="../assets/js/jquery.validate.js"></script>

  <script src="../assets/js/dashboard.js" charset="utf-8"></script>
  <script src="../assets/js/app/controller/CategoriaController.js" charset="utf-8"></script>
  <script src="../assets/js/app/structures/categoria-structure.js" charset="utf-8"></script>
</body>

</html>
