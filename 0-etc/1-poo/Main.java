import java.util.List;
import java.util.ArrayList;

class Pessoa {
  String nome;

  public Pessoa(String nome){
    this.nome = nome;
  }

  public String retornarNome(){
    return this.nome;
  }
}

class FuncionarioAdministrativo extends Pessoa{
  public FuncionarioAdministrativo(String nome) {
    super(nome);
  }
}

abstract class CorpoUniversitario extends Pessoa{
  List<String> disciplinas = new ArrayList<String>();

  public CorpoUniversitario(String nome) {
    super(nome);
  }

  public void adicionarDisciplina(String disciplina){
    disciplinas.add(disciplina);
  }

  public String retornaDisciplinas(){
    return disciplinas.stream().reduce("",
      (acc, disciplina) -> acc + "- " + disciplina + "\n"  
    );
  }
}

class Estudande extends CorpoUniversitario{
  public Estudande(String nome) {
    super(nome);
  }
}

class Professor extends CorpoUniversitario{
  public Professor(String nome) {
    super(nome);
  }
}

class Main {
  public static void main(String[] args) {
    Estudande estudante = new Estudande("João");
    estudante.adicionarDisciplina("Paradigmas");
    estudante.adicionarDisciplina("Sistemas Operacionais");

    System.out.println("Nome: " + estudante.retornarNome());
    System.out.println("Disciplinas:\n" + estudante.retornaDisciplinas());

    Professor professor = new Professor("Mario");
    professor.adicionarDisciplina("Paradigmas");
    professor.adicionarDisciplina("LFA");

    System.out.println("Nome: " + professor.retornarNome());
    System.out.println("Disciplinas:\n" + professor.retornaDisciplinas());
  }
}

//java Main