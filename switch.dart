// import 'dart:io'; // Import comentado: 'dart:io' serviria para entrada/saída (ex.: ler dados do teclado), mas não é usado aqui
import 'dart:math'; // Importa a biblioteca de matemática, que contém a classe Random para gerar números aleatórios

void main() { // Função principal: é por aqui que a execução do programa começa
  var nota = Random().nextInt(11); // Cria um objeto Random e sorteia um inteiro de 0 a 10 (o limite 11 é exclusivo); 'var' infere o tipo int
  print('A nota sorteado foi $nota'); // Exibe a nota sorteada, inserindo o valor da variável no texto com $nota

  switch(nota) { // Compara o valor de 'nota' com cada 'case' abaixo
    case 10: // Executa se a nota for igual a 10
      print('Quadro de honra!!!'); // Mensagem exibida para a nota 10
      break; // Encerra o switch, evitando que o código continue para o próximo case

    case 5: // Executa se a nota for igual a 5
      print('Recuperação'); // Mensagem exibida para a nota 5
      break; // Encerra o switch

    case 4: // Executa se a nota for igual a 4
      print('Recuperação + Trabalho'); // Mensagem exibida para a nota 4
      break; // Encerra o switch
      
    default: // Executa se nenhum dos cases anteriores for correspondente (notas 0, 1, 2, 3, 6, 7, 8 e 9)
      print('Nota inválida!!!'); // Mensagem exibida para qualquer outra nota
  } // Fim do bloco switch

  print('FIM!!!'); // Sempre é exibido, pois fica depois do switch, indicando o fim do programa
} // Fim da função main