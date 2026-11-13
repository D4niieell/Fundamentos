// Importa a biblioteca 'dart:io', que permite entrada e saída de dados (stdin e stdout)
import 'dart:io';

// Função principal: é o ponto de entrada do programa
void main() {
  // Declara a variável 'digitado' (tipo inferido como String) e inicia com texto vazio
  var digitado = '';

  // --- Exemplo 1: laço while (comentado, não é executado) ---

  // while (digitado != 'sair') {
  //   // Exibe a mensagem na tela sem pular linha
  //   stdout.write('Digite algo ou sair');
  //   // Lê o texto digitado pelo usuário e converte para String
  //   digitado = stdin.readLineSync().toString();
  // }

  // --- Exemplo 2: laço for usado como um while ---

  // O 'for' sem inicialização e sem incremento: só tem a condição.
  // Repete enquanto 'digitado' for diferente de 'sair'
  for (;digitado != 'sair';) {
    // Exibe a mensagem pedindo uma entrada, sem pular linha
    stdout.write('Digite algo ou sair: ');
    // Lê uma linha do teclado; readLineSync() pode retornar null,
    // por isso o toString() garante que o resultado seja uma String
    digitado = stdin.readLineSync().toString();
  } // Fim do for: só chega aqui quando o usuário digitar 'sair'

  // --- Exemplo 3: laço do-while ---

  // O 'do' executa o bloco pelo menos uma vez, antes de testar a condição
  do {
    // Limpa o valor da variável (zera o texto anterior)
    digitado = '';
    // Exibe a mensagem pedindo uma entrada, sem pular linha
    stdout.write('Digite algo ou sair');
    // Lê a linha digitada e a guarda na variável como String
    digitado = stdin.readLineSync().toString();
  } while (digitado != 'sair'); // Repete o bloco enquanto o usuário não digitar 'sair'

  // Exibe a mensagem final no console, pulando a linha ao final
  print("FIM!!!");
} // Fim da função main