// Importa a biblioteca 'dart:math', que contém a classe Random usada para gerar números aleatórios
import 'dart:math';

// Função principal: é o ponto de entrada, por onde o programa começa a ser executado
void main() {
  // Chama a função qualquerNumero com o valor 100, mas o resultado é descartado (não é guardado nem exibido)
  qualquerNumero(100);
  // Chama a função novamente e guarda o número aleatório (entre 0 e 99) na variável 'teste'
  var teste = qualquerNumero(100);
  // Exibe no console o valor guardado na variável 'teste'
  print(teste);

  // Chama ImprimirData sem argumentos, então usa os valores padrão: 1/1/1970
  ImprimirData();
  // Chama ImprimirData passando dia, mês e ano, então imprime 1/10/2026
  ImprimirData(01, 10, 2026);
}

// Declara uma função que retorna um int; [maximo] é um parâmetro posicional opcional (sem tipo definido, ou seja, dynamic)
int qualquerNumero([maximo]) {
  // Cria um objeto Random e sorteia um inteiro de 0 até maximo - 1, retornando esse valor
  return Random().nextInt(maximo);
}

// Declara uma função (sem tipo de retorno explícito) com três parâmetros posicionais opcionais, cada um com valor padrão
ImprimirData([int dia = 1, int mes = 1, int ano = 1970])
  // Abre o bloco de código da função
  {
    // Imprime os três valores no formato dia/mês/ano, usando interpolação de strings com $
    print('$dia/$mes/$ano');
  // Fecha o bloco de código da função
  }