// Exercício 2

// Crie uma função chamada gerarNumeros que não receba nenhum parâmetro. 

// Dentro da função: 
// - Gere três números aleatórios entre 0 e 20;
// - Exiba os três números gerados;
// - Calcule e exiba a soma dos números;
// - Identifique qual dos três números é o maior;
// - Exiba o maior número encontrado.

// Importa a biblioteca 'dart:math', que contém a classe Random usada para gerar números aleatórios
import 'dart:math';

// Declara a função gerarNumeros: não retorna valor (void) e não recebe parâmetros
void gerarNumeros() {
  // Cria um objeto da classe Random, responsável por sortear os números
  Random random = Random();

  // Sorteia um número inteiro de 0 a 20 (nextInt(21) vai de 0 até 20, pois o limite 21 é exclusivo)
  int num1 = random.nextInt(21);
  // Sorteia o segundo número inteiro entre 0 e 20
  int num2 = random.nextInt(21);
  // Sorteia o terceiro número inteiro entre 0 e 20
  int num3 = random.nextInt(21);

  // Exibe os três números gerados, usando interpolação de strings ($variável) para inserir os valores no texto
  print('Números gerados: $num1, $num2, $num3');

  // Calcula a soma dos três números e guarda o resultado na variável soma
  int soma = num1 + num2 + num3;
  // Exibe a soma calculada
  print('Soma dos números: $soma');

  // Assume inicialmente que o primeiro número é o maior
  int maior = num1;

  // Verifica se o segundo número é maior que o valor atual de 'maior'
  if (num2 > maior) {
    // Se for, atualiza 'maior' com o valor do segundo número
    maior = num2;
  }

  // Verifica se o terceiro número é maior que o valor atual de 'maior'
  if (num3 > maior) {
    // Se for, atualiza 'maior' com o valor do terceiro número
    maior = num3;
  }

  // Exibe o maior número encontrado entre os três
  print('Maior número: $maior');
}

// Função principal: ponto de entrada do programa, onde a execução começa
void main() {
  // Chama a função gerarNumeros para executar todo o processo
  gerarNumeros();
}