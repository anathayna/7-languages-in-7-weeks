let corpoUniversario = {
    nome: "...",
    disciplinas: []
}

function CorpoUniversitario(nome) {
    this.__proto__ = Object.create(corpoUniversario);
    this.__proto__.nome = nome;
    this.__proto__.disciplinas = [];
    this.__proto__.classType = function() {
      return this.constructor.name;
    };
    this.constructor = CorpoUniversitario
}

corpoUniversario.__proto__.adicionarDisciplina = function(nome_disciplina) {
    this.disciplinas.push(nome_disciplina);
}

const reducer = (acumulador, disciplina) => acumulador + `- ${disciplina}\n`;

corpoUniversario.__proto__.imprimeDisciplinas = function() {
    let reduce = this.disciplinas.reduce(reducer, "")
    console.log(reduce);
}

function Aluno(nome) {
    CorpoUniversitario.call(this, nome);
    this.constructor = Aluno
}
  
let aluno1 = new Aluno("ana");
aluno1.adicionarDisciplina("paradigmas");
aluno1.adicionarDisciplina("teoria");
aluno1.adicionarDisciplina("android");
aluno1.adicionarDisciplina("c++");
aluno1.adicionarDisciplina("SO");
aluno1.adicionarDisciplina("PI");
  
let aluno2 = new Aluno("thayna");
aluno2.adicionarDisciplina("DPs");
aluno2.adicionarDisciplina("matemática discreta");
aluno2.adicionarDisciplina("física");
  
console.log("-----------------------------")
console.log(aluno1.nome);
aluno1.imprimeDisciplinas();
console.log("-----------------------------")
console.log(aluno2.nome);
aluno2.imprimeDisciplinas();
console.log("-----------------------------")
