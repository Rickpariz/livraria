class Categoria {
  constructor(nome) {
    this._nome = nome;
    this._id;
  }

  get nome(){
    return this._nome;
  }

  get id(){
    return this._id;
  }

  set id(id){
    this._id = id;
  }

}
