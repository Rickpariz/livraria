<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!doctype html>
<html lang="br">

<head>
  <title>Livraria</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

  <!-- Material Kit CSS -->
  <link rel="stylesheet" href="assets/css/material-kit.css">
  <link rel="stylesheet" href="assets/css/config.css">

</head>

<body class="signup-page">
  <div class="page-header header-filter" filter-color="grey" style="background-image: url(&apos;assets/img/bg7.jpg&apos;); background-size: cover; background-position: top center;">
    <div class="container">
      <div class="row">
        <div class="col-md-10 ml-auto mr-auto">
          <div class="card card-signup">
            <h2 class="card-title text-center">Livraria</h2>
            <div class="card-body">
              <div class="row">
                <div class="col-md-5 ml-auto">
                  <div class="info info-horizontal">
                    <div class="icon icon-grey">
                      <i class="material-icons">timeline</i>
                    </div>
                    <div class="description">
                      <h4 class="info-title">Marketing</h4>
                      <p class="description">
                        We've created the marketing campaign of the website. It was a very interesting collaboration.
                      </p>
                    </div>
                  </div>
                  <div class="info info-horizontal">
                    <div class="icon icon-danger">
                      <i class="material-icons">code</i>
                    </div>
                    <div class="description">
                      <h4 class="info-title">Fully Coded in HTML5</h4>
                      <p class="description">
                        We've developed the website with HTML5 and CSS3. The client has access to the code using GitHub.
                      </p>
                    </div>
                  </div>
                  <div class="info info-horizontal">
                    <div class="icon icon-info">
                      <i class="material-icons">group</i>
                    </div>
                    <div class="description">
                      <h4 class="info-title">Built Audience</h4>
                      <p class="description">
                        There is also a Fully Customizable CMS Admin Dashboard for this product.
                      </p>
                    </div>
                  </div>
                </div>
                <div class="col-md-5 mr-auto">
                  <div class="social text-center">
                    <button class="btn btn-just-icon btn-round btn-twitter">
											<i class="fa fa-twitter"></i>
										</button>
                    <button class="btn btn-just-icon btn-round btn-dribbble">
											<i class="fa fa-dribbble"></i>
										</button>
                    <button class="btn btn-just-icon btn-round btn-facebook">
											<i class="fa fa-facebook"> </i>
										</button>
                    <h4> ou do modo classico </h4>
                  </div>
                  <form class="form" method="post" action="/livraria/login/autentica">
                    <div class="form-group">
                      <div class="input-group">
                        <span class="input-group-addon">
													<i class="material-icons">email</i>
												</span>
                        <input type="email" name="usuario.email" class="form-control" placeholder="Digite seu email" required />
                      </div>
                    </div>

                    <div class="form-group">
                      <div class="input-group">
                        <span class="input-group-addon">
													<i class="material-icons">lock_outline</i>
												</span>
                        <input type="password" name="usuario.senha" placeholder="Digite sua senha." class="form-control" required />
                      </div>
                    </div>
                    <div class="text-center">
                      <button type="submit" class="btn btn-info btn-round">Login</button>
                    </div>
                    <br/>
                    <c:if test="${not empty errors}">
                      <div class="alert alert-danger">
                         <div class="container">
                             <div class="alert-icon">
                                <i class="material-icons">error_outline</i>
                            </div>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true"><i class="material-icons">clear</i></span>
                            </button>
                            <c:forEach var="error" items="${errors}">
                                <b>Erro !</b> ${error.message}<br />
                            </c:forEach>
                        </div>
                      </div>
                    </c:if>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="footer ">
      <div class="container">
        <nav class="pull-left">
          <ul>
            <li>
              <a href="https://www.creative-tim.com">
                        Creative Tim
                    </a>
            </li>
            <li>
              <a href="http://presentation.creative-tim.com">
                       About Us
                    </a>
            </li>
            <li>
              <a href="http://blog.creative-tim.com">
                       Blog
                    </a>
            </li>
            <li>
              <a href="https://www.creative-tim.com/license">
                        Licenses
                    </a>
            </li>
          </ul>
        </nav>
        <div class="copyright pull-right">
          &copy;
          <script>
            document.write(new Date().getFullYear())
          </script>, made with <i class="material-icons">favorite</i> by <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
        </div>
      </div>
    </footer>
  </div>

  <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/bootstrap-material-design.js"></script>

  <!-- Plugin for Date Time Picker and Full Calendar Plugin-->
  <script src="assets/js/plugins/moment.min.js"></script>

  <!-- Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="assets/js/plugins/bootstrap-selectpicker.js"></script>

  <!-- Plugin for Tags, full documentation here: http://xoxco.com/projects/code/tagsinput/  -->
  <script src="assets/js/plugins/bootstrap-tagsinput.js"></script>

  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="assets/js/plugins/jasny-bootstrap.min.js"></script>

  <!-- Plugin for Small Gallery in Product Page -->
  <script src="assets/js/plugins/jquery.flexisel.js"></script>

  <!-- Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="assets/js/plugins/bootstrap-datetimepicker.min.js"></script>

  <!-- Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="assets/js/plugins/nouislider.min.js"></script>

  <!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
  <script src="assets/js/material-kit.js?v=2.0.0"></script>


</body>

</html>
