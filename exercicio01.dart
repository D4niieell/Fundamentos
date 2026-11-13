// Exercício 1
// 1 - Par ou ímpar
// Solicite ao usuário um número inteiro e determine se ele é par ou ímpar.
// Além disso, informe se o número é:
// - Positivo;
// - Negativo;
// - Zero.

// Importa a biblioteca 'dart:io', que permite ler dados digitados no terminal (stdin)
import 'dart:io';

// Função principal: é o ponto de partida de todo programa Dart
void main() {
  // Exibe no terminal a mensagem pedindo para o usuário digitar um número
  print('Digite um número: ');

  // Lê o texto digitado pelo usuário (readLineSync) e converte para inteiro (int.parse)
  // O '!' garante ao Dart que o valor lido não será nulo
  // O resultado é guardado na variável 'num' do tipo int
  int num = int.parse(stdin.readLineSync()!);

  // Verifica se é par ou ímpar
  // O operador % retorna o resto da divisão; se o resto da divisão por 2 for 0, o número é par
  if (num % 2 == 0) {
    // Executa se a condição acima for verdadeira (resto igual a 0)
    print('O número é PAR!');
  } else {
    // Executa se a condição acima for falsa (resto diferente de 0)
    print('O número é IMPAR');
  }

  // Verifica se é positivo, negativo ou zero
  // Primeiro teste: o número é maior que zero?
  if (num > 0) {
    // Executa se o número for maior que 0
    print('O número é positivo.');
  // Segundo teste (só ocorre se o primeiro falhar): o número é menor que zero?
  } else if (num < 0) {
    // Executa se o número for menor que 0
    print('O número é negativo.');
  } else {
    // Se não é maior nem menor que zero, só pode ser zero
    print("O número é zero.");
  }
}

// Lista dos operadores aritméticos do Dart:
// +  soma | -  subtração | *  multiplicação | /  divisão | %  resto da divisão