// Exercício 2
// 2 - Antecessor e sucessor
// Faça um programa em que solicite ao usuário um número inteiro.
// O programa deverá mostrar:
// - O número informado;
// - Seu antecessor;
// - Seu sucessor.

// Importa a biblioteca 'dart:io', que permite entrada e saída de dados
// (neste caso, usada para ler o que o usuário digita no teclado)
import 'dart:io';

// Função principal: é o ponto de partida da execução do programa
void main() {
  // Exibe no console a mensagem pedindo para o usuário digitar um número
  print('Digite um número: ');

  // stdin.readLineSync() lê uma linha digitada no teclado (retorna String?, ou seja, pode ser nula)
  // O operador '!' garante ao Dart que o valor não é nulo
  // int.parse() converte o texto lido para um número inteiro
  // O resultado é guardado na variável 'numero', do tipo int
  int numero = int.parse(stdin.readLineSync()!);

  // Cria a variável 'antecessor' (o tipo int é inferido pelo 'var')
  // e guarda nela o número digitado menos 1
  var antecessor = numero - 1;

  // Cria a variável 'sucessor' (tipo int inferido)
  // e guarda nela o número digitado mais 1
  var sucessor = numero + 1;

  // Exibe o número informado; '$numero' insere o valor da variável dentro do texto
  print('O número digitado éh: $numero');

  // Exibe o antecessor do número, interpolando a variável 'antecessor' no texto
  print('O número antecessor éh: $antecessor');

  // Exibe o sucessor do número, interpolando a variável 'sucessor' no texto
  print('O número sucessor éh: $sucessor');
} // Fim da função main e do programa