// Exercício 3 
// 3 - Calculadora simples
// Crie uma calculadora de terminal.
// 1 - Somar
// 2 - Subtrair
// 3 - Multiplicar
// 4 - Dividir
// Escolha uma opção

// Importa a biblioteca 'dart:io', que permite entrada e saída de dados no terminal (stdin e stdout)
import 'dart:io';

// Função principal: é o ponto de partida de todo programa Dart
void main() {
  // Exibe o título da calculadora no terminal
  print('=== CALCULADORA SIMPLES SENAC TIPI 1 ===');
  // Imprime uma linha em branco para separar visualmente o título do menu
  print('');
  // Exibe a opção 1 do menu
  print('1 - Somar');
  // Exibe a opção 2 do menu
  print('2 - Subtrair');
  // Exibe a opção 3 do menu
  print('3 - Multiplicar');
  // Exibe a opção 4 do menu
  print('4 - Dividir');
  // Imprime outra linha em branco para separar o menu da pergunta
  print('');

  // stdout.write exibe o texto SEM pular linha, assim o usuário digita ao lado da pergunta
  stdout.write('Escolha uma opção: ');
  // stdin.readLineSync() lê o que o usuário digitou (retorna String?, podendo ser nulo);
  // o '!' garante ao Dart que não será nulo; int.parse converte o texto em número inteiro
  int opcao = int.parse(stdin.readLineSync()!);

  // Pede ao usuário o primeiro número da operação
  stdout.write('Escolha uma valor para N1: ');
  // Lê o valor digitado, converte para inteiro e guarda na variável n1
  int n1 = int.parse(stdin.readLineSync()!);

  // Pede ao usuário o segundo número da operação
  stdout.write('Escolha uma valor para N2: ');
  // Lê o valor digitado, converte para inteiro e guarda na variável n2
  int n2 = int.parse(stdin.readLineSync()!);

  // Verifica se a opção escolhida foi 1 (Somar)
  if (opcao == 1) {
    // Declara a variável 'soma' (tipo inferido pelo 'var') com o resultado de n1 + n2
    var soma = n1 + n2;
    // Mostra o resultado; o '$' dentro do texto insere o valor da variável (interpolação de strings)
    print('A soma de $n1 + $n2 = $soma');
  // Se não foi 1, verifica se foi 2 (Subtrair)
  } else if (opcao == 2) {
    // Calcula a subtração de n1 por n2 e guarda em 'subtracao'
    var subtracao = n1 - n2;
    // Exibe o resultado da subtração usando interpolação de variáveis
    print('A subtração de $n1 - $n2 = $subtracao');
  // Se não foi 1 nem 2, verifica se foi 3 (Multiplicar)
  } else if (opcao == 3) {
    // Calcula a multiplicação de n1 por n2 e guarda em 'multi'
    var multi = n1 * n2;
    // Exibe o resultado da multiplicação
    print('A multiplicação de $n1 * $n2 = $multi');
  // Se não foi 1, 2 nem 3, verifica se foi 4 (Dividir)
  } else if (opcao == 4) {
    // Verifica se n1 OU n2 é igual a zero ('||' significa "ou")
    // Obs.: matematicamente, só n2 == 0 impede a divisão (0 / 5 = 0 é válido),
    // mas aqui o código bloqueia os dois casos
    if ((n1 == 0) || (n2 == 0)) {
      // Avisa o usuário que a divisão não pode ser feita
      print('Não é possível dividir por zero!');
    // Caso nenhum dos valores seja zero, a divisão é realizada
    } else {
      // O operador '/' em Dart sempre retorna double (número decimal), mesmo com operandos inteiros
      var div = n1 / n2;
      // Exibe o resultado da divisão
      print('A divisão de $n1 / $n2 = $div');
    }
  // Se a opção digitada não for nenhuma das anteriores (1 a 4)
  } else {
    // Informa que a opção escolhida não existe no menu
    print('Opção Inválida!!!');
  }
// Fecha a função main, encerrando o programa
}