// Importa a biblioteca 'dart:io', que permite entrada e saída de dados (teclado e terminal)
import 'dart:io';

// Função principal: é o ponto de partida da execução do programa
void main() {
  // Exibe a pergunta no terminal sem pular linha (diferente do print)
  stdout.write('Está chovendo? (s/n)');
  // Lê o que o usuário digitou (readLineSync) e compara com 's'.
  // O resultado da comparação (true ou false) é guardado em estaChovendo
  bool estaChovendo = stdin.readLineSync() == 's';

  // Exibe a segunda pergunta no terminal, também sem pular linha
  stdout.write('Está frio? (s/n)');
  // Lê a resposta e compara com 's'; guarda true ou false em estaFrio
  bool estaFrio = stdin.readLineSync() == 's';

  // Operador ternário: se estaChovendo E estaFrio forem ambos verdadeiros (&&),
  // resultado recebe "Ficar em casa"; caso contrário, recebe "Sair!!"
  String resultado = estaChovendo && estaFrio ? "Ficar em casa" : "Sair!!";
  // Imprime o valor de resultado no terminal, com quebra de linha
  print(resultado);
// Fim da função main
}