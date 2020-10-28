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
  let user3 = new User("zoe", "zoe@eoz.com");
console.log(user3.print());

User.prototype.byebye = function () {
  return `bye bye ${this.name}`;
}

console.log(user2.byebye());
console.log(user3.byebye());

function Premium(name, email) {
  User.call(this, name, email);
}

let user4 = new Premium("sumô", "sumo@provedor.com");
Premium.prototype.hello = function () {
  return `hello hello ${this.name}`;
}

console.log(user4.hello());