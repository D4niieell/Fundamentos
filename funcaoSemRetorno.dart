// Importa a biblioteca 'dart:math', que contém funcionalidades matemáticas, como a classe Random
import 'dart:math';

// Função principal: é o ponto de entrada do programa, onde a execução começa
void main() {
  // Declara a variável inteira 'a' e atribui o valor 5
  int a = 5;
  // Declara a variável inteira 'b' e atribui o valor 6
  int b = 6;
  // Chama a função somaComPrint passando 'a' e 'b' como argumentos (imprime a soma de 5 + 6)
  somaComPrint(a, b);

  // Imprime o texto com os valores de 'a' e 'b' interpolados (o $ insere o valor da variável na string)
  // Obs.: o texto mostra um "-" entre os números, mas a operação feita depois é uma soma
  print('A soma de $a - $b = ');
  // Calcula a soma de 'a' + 'b' e imprime o resultado (11)
  print(a + b);

  // Declara a variável inteira 'c' e atribui o valor 10
  int c = 10;
  // Declara a variável inteira 'd' e atribui o valor 20
  int d = 20;
  // Chama a função somaComPrint passando 'c' e 'd' como argumentos (imprime a soma de 10 + 20)
  somaComPrint(c, d);

  // Imprime o texto com os valores de 'c' e 'd' interpolados na string
  print('A soma de $c + $d = ');
  // Calcula a soma de 'c' + 'd' e imprime o resultado (30)
  print(c + d);
}

// Declara a função 'somaComPrint', que recebe dois números inteiros como parâmetros (n1 e n2)
// Não declara o tipo de retorno, então o Dart infere 'dynamic' (o ideal seria usar 'void')
somaComPrint(int n1, int n2) {
  // Imprime o texto da operação, interpolando os valores de n1 e n2
  print('A soma de $n1 + $n2 = ');
  // Calcula a soma de n1 + n2 e imprime o resultado
  print(n1 + n2);
}

// Declara uma função sem retorno (void) que soma dois números aleatórios
// Obs.: ela nunca é chamada no main, então não é executada
void somaDoisNumerosAleatoriosPrint() {
  // Gera um número inteiro aleatório entre 0 e 10 (nextInt(11) exclui o 11) e guarda em n1
  int n1 = Random().nextInt(11);
  // Gera outro número inteiro aleatório entre 0 e 10 e guarda em n2
  int n2 = Random().nextInt(11);

  // Imprime o texto com os valores aleatórios interpolados
  print('A soma de dois números aleatórios é: $n1 + $n2 = ');
  // Calcula a soma dos dois números aleatórios e imprime o resultado
  print(n1 + n2);
}