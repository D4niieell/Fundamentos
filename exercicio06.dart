// Exercício 6

// Desenvolva um programa que permita ao usuário digitar vários números inteiros.
// - O programa deverá continuar solicitando números enquanto o usuário não digitar 0.
// - Quando o usuário digitar 0 apresente:
// - A quantidade de números digitados, desconsiderando o 0;
// - A soma de todos os números digitados.

// Como funciona:
// - O `while (true)` cria um laço infinito que só é interrompido pelo `break` quando o número digitado é `0`.
// - Antes de verificar se é `0`, o valor lido ainda não é contado nem somado — assim o `0` é descartado corretamente.
// - `quantidade` conta quantos números válidos (diferentes de 0) foram digitados.
// - `soma` acumula o valor de todos esses números.

// Exemplo de execução:
// - Digite um número inteiro (0 para encerrar): 5
// - Digite um número inteiro (0 para encerrar): 3
// - Digite um número inteiro (0 para encerrar): 7
// - Digite um número inteiro (0 para encerrar): 0
// - Quantidade de números digitados: 3
// - Soma de todos os números digitados: 15


// Importa a biblioteca 'dart:io', que permite entrada e saída de dados (stdin e stdout)
import 'dart:io';

// Função principal: é o ponto de partida da execução do programa
void main() {
  // Declara a variável que vai contar quantos números foram digitados, iniciando em 0
  int quantidade = 0;
  // Declara a variável que vai acumular a soma dos números digitados, iniciando em 0
  int soma = 0;

  // Inicia um laço infinito (a condição 'true' sempre é verdadeira); só termina com 'break'
  while (true) {
    // Exibe a mensagem na tela sem pular linha (diferente do print, que pula)
    stdout.write('Digite um número inteiro (0 para encerrar): ');
    // Lê o texto digitado (readLineSync), usa '!' para garantir que não é nulo
    // e converte o texto em número inteiro com int.parse
    int numero = int.parse(stdin.readLineSync()!);

    // Verifica se o número digitado é igual a 0 (condição de parada)
    if (numero == 0) {
      // Interrompe o laço while imediatamente
      break;
    }

    // Incrementa em 1 a quantidade de números digitados (equivale a quantidade = quantidade + 1)
    quantidade++;
    // Adiciona o número digitado ao total acumulado (equivale a soma = soma + numero)
    soma += numero;
  } // Fim do laço while

  // Exibe a quantidade de números digitados, usando $ para inserir o valor da variável no texto
  print('Quantidade de números digitados: $quantidade');
  // Exibe a soma de todos os números digitados
  print('Soma de todos os números digitados: $soma');
} // Fim da função main