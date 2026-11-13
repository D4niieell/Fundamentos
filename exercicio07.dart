// Exercício 7
// Crie um programa que solicite ao usuário um número de 1 a 7 e utilize switch para exibir o dia correspondente.

// Importa a biblioteca 'dart:io', necessária para ler dados do teclado (stdin) e escrever na tela (stdout)
import 'dart:io';
// import 'dart:math'; // Linha comentada: importaria funções matemáticas, mas não é usada neste programa

// Função principal: é o ponto de entrada, onde o programa começa a ser executado
void main() {
  // Exibe a mensagem na tela sem pular linha (diferente do print), para o usuário digitar na mesma linha
  stdout.write('Digite um número de 1 a 7: ');
  // Lê o texto digitado (readLineSync), o "!" garante que não é nulo, e int.parse converte o texto para inteiro, guardando em 'numero'
  int numero = int.parse(stdin.readLineSync()!);

  // Inicia o switch, que compara o valor de 'numero' com cada case abaixo
  switch(numero){
    // Se numero for igual a 1, executa o bloco abaixo
    case 1:
      // Exibe "Domingo" na tela
      print('Domingo');
      // Encerra o switch (impede que continue executando os próximos cases)
      break;
    // Se numero for igual a 2
    case 2:
      // Exibe "Segunda" na tela
      print('Segunda');
      // Sai do switch
      break;
    // Se numero for igual a 3
    case 3:
      // Exibe "Terça" na tela
      print('Terça');
      // Sai do switch
      break;
    // Se numero for igual a 4
    case 4:
      // Exibe "Quarta" na tela
      print('Quarta');
      // Sai do switch
      break;
    // Se numero for igual a 5
    case 5:
      // Exibe "Quinta" na tela
      print('Quinta');
      // Sai do switch
      break;
    // Se numero for igual a 6
    case 6:
      // Exibe "Sexta" na tela
      print('Sexta');
      // Sai do switch
      break;
    // Se numero for igual a 7
    case 7:
      // Exibe "Sábado" na tela
      print('Sábado');
      // Sai do switch
      break;
    // O default é executado quando nenhum dos cases anteriores corresponde ao valor digitado
    default:
    // Exibe a mensagem de erro para valores fora do intervalo de 1 a 7
    print('número Inválido');
  } // Fecha o bloco do switch

  // Esta linha fica fora do switch, então sempre é executada, independentemente do número digitado
  print('FIM!!!');
} // Fecha a função main