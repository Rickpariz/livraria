$(document).ready(function() {
  var controller = new CategoriaController();
  var cadastrar_categoria = $("#modal-cadastrar-categoria");

  cadastrar_categoria.find("form").validate({
    submitHandler: function(form) {
      $(form).find("button[type='submit']").attr("disabled", "disabled");
      controller.adiciona(form);
    },
    showErrors: function(errorMap, errorList) {
      for (var i = 0; errorList[i]; i++) {
        var element = this.errorList[i].element;
        this.errorsFor(element).remove();
      }
      this.defaultShowErrors();
    },
    rules: {
      "categoria.nome": {
        required: true,
        minlength: 3
      }
    },
    messages: {
      "categoria.nome": {
        required: "Nome precisa ser preenchido",
        minlength: "Nome muito pequeno"
      }
    },
    errorPlacement: function(error, element) {
      error.appendTo(element.nextAll(".bmd-help"));
      setTimeout(function() {
        element.closest(".form-group").addClass("has-error");
      }, 10);
    },
    onfocusout: false
  });
});
