// Função principal: ponto de entrada de todo programa Dart
void main() {
  // Laço "for": cria a variável inteira 'a' começando em 0,
  // repete enquanto 'a' for menor que 10 e incrementa 'a' em 1 a cada volta (a++)
  for (int a = 0; a < 10; a++) {
    // Verifica se o valor de 'a' é igual a 6
    if (a == 6) {
      // 'break' interrompe o laço imediatamente,
      // saindo do "for" sem executar as voltas restantes
      break;
    } // Fim do bloco "if"
      // Imprime no console o texto com o valor atual de 'a';
      // o '$a' insere o valor da variável dentro da string (interpolação)
      print('O valor de a = $a');
  } // Fim do laço "for"
} // Fim da função main