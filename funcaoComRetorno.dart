// Importa a biblioteca 'dart:math', que contém a classe Random para gerar números aleatórios
import 'dart:math';

// Função principal: é o ponto de entrada do programa, onde a execução começa
void main() {
  // Chama a função somar com os valores 2 e 3 e guarda o retorno (5) na variável inteira 'resultado'
  int resultado = somar(2, 3);
  // Imprime no console o valor da variável 'resultado' (5)
  print(resultado);

  // Imprime uma mensagem usando interpolação de string: ${...} executa a função
  // SomarNumerosAleatoriosPrint() e insere o valor retornado no texto
  print("O resultado da soma aleatória é: ${SomarNumerosAleatoriosPrint()}");

  // Declara a variável 'somaAleatoria' com 'var' (o tipo int é inferido automaticamente)
  // e guarda nela o resultado de uma nova chamada à função de soma aleatória
  var somaAleatoria = SomarNumerosAleatoriosPrint();
  // Imprime o valor da variável; em interpolação simples basta usar $nomeDaVariavel (sem chaves)
  print('Usando a váriavel somaAleatoria: $somaAleatoria');
}
// Fim da função main

// Declara a função 'somar', que recebe dois inteiros (n1 e n2) e retorna um inteiro
int somar(int n1, int n2) {
  // Retorna a soma dos dois parâmetros recebidos
  return n1 + n2;
}

// Declara a função que não recebe parâmetros e retorna um inteiro
int SomarNumerosAleatoriosPrint() {
  // Cria um objeto Random e sorteia um inteiro entre 0 e 10 (nextInt(11) exclui o 11)
  int n1 = Random().nextInt(11);
  // Sorteia um segundo inteiro, também entre 0 e 10
  int n2 = Random().nextInt(11);
  // Retorna a soma dos dois números sorteados (resultado entre 0 e 20)
  return n1 + n2;
}