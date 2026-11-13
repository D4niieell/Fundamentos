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

// Importa o arquivo que contém a classe "Aluno"
import 'aluno.dart';

// Classe responsável por gerenciar (cadastrar, listar, consultar e remover) os alunos
class GerenciarAlunos {
  // Lista em memória que aramzena todos os alunos cadastrados
  List<Aluno> alunos = [];

  // Método para cadastrar um novo aluno, aplicando as validações exigidas
  void cadastrar(Aluno aluno) {
    // Verifica se o nome está vazio (trim remove espaços para evitar nomes só com espaços)
    if (aluno.nome.trim().isEmpty) {
      // Informa o erro ao usuário
      print('Erro! O nome não pode ser vazio.');
      // Encerra o método sem cadastrar
      return;
    }

    // Verifica se aidade é menor ou igual a zero
    if (aluno.idade <= 0) {
      // Informa o erro ao usuário
      print('Erro! A idade deve ser maior que zero.');
      // Encerra o método sem cadastrar
      return;
    }

    // Verifica se já existe algum aluno com a mesma matrícula na lista
    bool matriculaDuplicada = alunos.any((a) => a.matricula == aluno.matricula);

    // Se a matrícula já existe, não permite o cadastro
    if (matriculaDuplicada) {
      // Informa o erro ao usuário
      print('Erro! a matrícula ${aluno.matricula} já está cadastrada.');
      // Encerra o método sem cadastrar
      return;
    }

    // Se passou por todas as validações, adiciona o aluno á lista
    aluno.add(aluno);
    // Confirma o cadastro ao usuário
    print('Aluno ${aluno.nome} cadastrado com sucesso!');
  }

  // Método para listar todos os alunos cadastrados
  void listar() {
    // Verifica se alista está vazia
    if (alunos.isEmpty) {
      // Informa que não há alunos cadastrados
      print('Nenhum aluno cadastrado.');
      // Encerra o método
      return;
    }

    // Imprime um título para a listagem
    print('--- Lista de Alunos ---');
    // Percorre cada aluno da lista
    for (Aluno aluno in alunos) {
      // Exibe os dados do aluno atual
      aluno.exibirDados();
      // Imprime uma linha separada entre os alunos
      print('-----------------------------');
    }
  }

  // Método para consultar um aluno pela matrícula
  void consultar(int matricula) {
    // Percorre a lista procurando o aluno com a matrícula informada
    for (Aluno aluno in alunos) {
      // Compara a matrícula do aluno atual com a procurada
      if (aluno.matricula == matricula) {
        // Informa que o aluno foi encontrado
        print('Aluno encontrado!');
        // Exibe os dados do aluno
        aluno.exibirDados();
        // Encerra o método, pois já achou o aluno
        return;
      }
    }

    // Se o laço terminou sem encontrar, informa que a matrícula não existe
    print('Matrícula $matricula não encontrada.');
  }

  // Método para remover um aluno pela matrícula
  void remover(int matricula) {
    // removeWhere remove da lista todos os alunos que atendem á condição e a lista fica menor se algo foi removido.
    int tamanhoAntes = alunos.length;

    // Remove o aluno cuja a matrícula seja igual á informada
    alunos.removeWhere((a) => a.matricula == matricula);

    // Se o tamanho da lista diminuiu, a remoção funcionou
    if (alunos.length < tamanhoAntes) {
      // Confirma a remoção ao usuário
      print('Aluno com matrícula $matricula removido com sucesso.');
    } else {
      // Caso contrário, a matrícula não existia
      print('Matrícula $matricula não encontrada.');
    }
  }
}

// Função principal: ponto de netrada do programa
void main() {
  // Cria o objeto que gerencia o alunos
  GerenciarAlunos sistema = GerenciarAlunos();

  // TESTE 1: Cadastrar três alunos diferentes
  print('=== TESTE 1: Cadastrar três alunos diferentes ===');
  // Cadastra o primeiro aluno
  sistema.cadastrar(
    Aluno(matricula: 1, nome: 'Ana Souza', idade: 20, curso: 'Design Gráfico'),
  );
  // Cadastra o segundo aluno
  sistema.cadastrar(
    Aluno(matricula: 2, nome: 'Bruno Lima', idade: 22, curso: 'Medicina'),
  );
  // Cadastra o terceiro aluno
  sistema.cadastrar(
    Aluno(matricula: 3, nome: 'Carla Dias', idade: 19, curso: 'Direito'),
  );

  // TESTE 2: Tentar cadastrar a matrícula já existente
  print('\n=== TESTE 2: Matrícula duplicada ===');
  // A matrícula 1 já existe, então deve gerar erro
  sistema.cadastrar(
    Aluno(matricula: 1, nome: 'Diego Souza', idade: 21, curso: 'Artes'),
  );

  // TESTE 3: Listar todos os alunos
  print('\n=== TESTE 3: Listar os alunos');
  // Exibe todos os alunos cadastrados
  sistema.listar();

  // TESTE 4: Consultar matrícula existente
}
