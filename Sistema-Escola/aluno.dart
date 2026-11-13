// EXERCÍCIO 4 – SISTEMA DE CADASTRO DE ALUNOS EM DART
// OBJETIVO
 
// Uma instituição de ensino deseja desenvolver um sistema simples para cadastrar e consultar alunos.
 
// Desenvolva, em Dart, um programa que permita:
 
// - Cadastrar alunos;

// - Listar todos os alunos;

// - Consultar um aluno pela matrícula;

// - Remover um aluno do sistema.
 
// Os dados deverão ser armazenados em uma lista em memória, sem utilização de banco de dados.
 
// CLASSE Aluno
 
// Cada aluno deverá possuir os seguintes atributos:
 
// - matricula (int): Número de identificação do aluno

// - nome (String): Nome do aluno

// - curso (String): Curso do aluno

// - idade (int): Idade do aluno
 
// Requisitos:
 
// - Criar um construtor utilizando parâmetros nomeados obrigatórios (required);

// - Implementar o método exibirDados() para mostrar todas as informações do aluno.
 
// ARQUIVO: aluno.dart
 
// class Aluno {

//   int matricula;

//   String nome;

//   String curso;

//   int idade;
 
//   Aluno({

//     required this.matricula,

//     required this.nome,

//     required this.curso,

//     required this.idade,

//   });
 
//   void exibirDados() {

//     print('Matricula: $matricula');

//     print('Nome: $nome');

//     print('Curso: $curso');

//     print('Idade: $idade');

//   }

// }
 
// CLASSE GerenciarAlunos
 
// Atributo:
 
// List<Aluno> alunos = [];
 
// Métodos a implementar:
 
// - cadastrar(Aluno aluno)

// - listar()

// - consultar(int matricula)

// - remover(int matricula)
 
// Regras do método cadastrar:
 
// - Adicionar um aluno à lista;

// - Não permitir matrículas duplicadas;

// - Não permitir nomes vazios;

// - Não permitir idades menores ou iguais a zero.
 
// Regras do método listar:
 
// - Exibir todos os alunos cadastrados;

// - Informar quando não houver alunos cadastrados.
 
// Regras do método consultar:
 
// - Procurar um aluno pela matrícula;

// - Mostrar os dados caso seja encontrado;

// - Informar quando a matrícula não existir.
 
// Regras do método remover:
 
// - Remover um aluno pela matrícula;

// - Informar quando a matrícula não existir.
 
// TESTES OBRIGATÓRIOS
 
// [ ] Cadastrar três alunos diferentes.

// [ ] Tentar cadastrar uma matrícula já existente.

// [ ] Listar todos os alunos.

// [ ] Consultar uma matrícula existente.

// [ ] Consultar uma matrícula inexistente.

// [ ] Remover um aluno existente.

// [ ] Tentar remover uma matrícula inexistente.

// [ ] Tentar cadastrar um aluno com nome vazio.

// [ ] Tentar cadastrar um aluno com idade igual a zero.
 
// DESAFIO OPCIONAL
 
// Observe a estrutura SQL abaixo:
 
// CREATE TABLE alunos (

//     matricula INTEGER PRIMARY KEY,

//     nome TEXT NOT NULL,

//     curso TEXT NOT NULL,

//     idade INTEGER NOT NULL CHECK (idade > 0)

// );
 
// Responda:
 
// a) Qual campo identifica unicamente cada aluno?
 
// b) O que significa PRIMARY KEY?
 
// c) Qual a vantagem de utilizar um banco de dados em vez de uma lista armazenada na memória?
 
// OBJETIVO FINAL
 
// Implementar um sistema de cadastro de alunos utilizando:
 
// - Classes

// - Objetos

// - Construtores

// - Listas

// - Métodos

// - Validações

// - Operações CRUD (Create, Read, Update e Delete) em Dart.

// Define a classe Aluno, que representa um aluno da instituição
class Aluno {
  // Número de identificação único do aluno
  int matricula;

  // Nome completo do aluno
  String nome;

  // Curso em que o aluno está matriculado
  String curso;

  // Idade do aluno em anos
  int idade;

  // Construtor com parâmetros nomeados obrigatórios (required)
  Aluno({
    // Exige que a matrícula seja informada e a atribui ao atributo da classe
    required this.matricula,
    // Exige que o nome seja informado e o atribui ao classe
    required this.nome,
    // Exige que a idade seja informado e o atribui ao classe
    required this.idade,
    // Exige que o curso seja informado e o atribui ao classe 
    required this.curso
  });

  // Método que exibe todas as informações do aluno no console
  void exibirDados() {
    // Imprime a matrícula usando interpolação de String ($)
    print('Matrícula: $matricula');
    // Imprime o nome do aluno
    print('Nome: $nome');
    // Imprime o curso do aluno
    print('Curso: $curso');
    // Imprime a idade do aluno
    print('Idade: $idade');
  }
}