// Importa a biblioteca 'dart:math', que contém a classe Random para gerar números aleatórios
import 'dart:math';

// Função principal: é o ponto de entrada do programa, onde a execução começa
void main() {
  // Cria um número inteiro aleatório entre 0 e 10 (nextInt(11) gera de 0 até 10) e guarda na variável 'nota'
  var nota = Random().nextInt(11);
    // Exibe no console a nota sorteada, usando interpolação de string ($nota insere o valor da variável)
    print('Nota selecionada foi $nota');

  // Trecho comentado (não é executado), serve apenas como exemplo de teste:
  // if (true) {
  //   print("Teste de IF");      // Imprimiria "Teste de IF"
  //   print("Teste do IF - 2");  // Imprimiria "Teste do IF - 2"
  // }

  // Verifica se a nota é maior ou igual a 9
  if (nota >= 9) {
    // Se for, imprime que o aluno está no quadro de honra
    print('Quadro de honra!!!');
  // Caso contrário, verifica se a nota é maior ou igual a 7 (ou seja, 7 ou 8)
  } else if (nota >= 7) {
    // Se for, imprime que o aluno foi aprovado
    print('Aluno aprovado! :)');
  // Caso contrário, verifica se a nota é maior ou igual a 5 (ou seja, 5 ou 6)
  } else if (nota >= 5) {
    // Se for, imprime que o aluno está em recuperação
    print('Aluno em recuperação!');
  // Caso contrário, verifica se a nota é maior ou igual a 4 (ou seja, exatamente 4)
  } else if (nota >= 4) {
    // Se for, imprime que o aluno está em recuperação e precisa fazer um trabalho
    print('Aluno em recuperação + Trabalho');
  // Se nenhuma das condições anteriores for verdadeira (nota de 0 a 3)
  } else {
    // Imprime que o aluno foi reprovado
    print('Reprovado! :(');
  }
}