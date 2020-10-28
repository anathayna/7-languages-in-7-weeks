let usuario  = {
    nome: "bob",
    email: "bob@obob.com",
    imprime: function() { return `${this.nome} - ${this.email}`; }
  };
  
  console.log(usuario.nome);
  console.log(usuario.imprime());