let user  = {
    name: "bob",
    email: "bob@obob.com",
    print: function() { return `${this.name} - ${this.email}`; }
  };
  
  console.log(user.name);
  console.log(user.print());
  user.idade = 13;
  user.printage = function() { return `${this.idade} anos` }
  console.log(user.printage());
  
  //construtor
  function User(name, email) {
    this.name = name;
    this.email = email;
    this.print = function() { return `${this.name} - ${this.email}`; }
  }
  
  let user2 = new User("amy", "amy@yma.com");
  console.log(user2.print());