class CategoriaController {
  constructor() {
    this._nome = $("input[name='nome']");
  }

  adiciona(form) {
    $.ajax("/livraria/categoria/adiciona", {
      method: "post",
      data: $(form).serialize(),
      success: function(data){
        console.log(data);
      },
      error: function(data){
        console.log(data);
      }
    });
  }


}
