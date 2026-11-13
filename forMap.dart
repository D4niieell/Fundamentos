// Função principal: ponto de entrada de todo programa Dart
void main() {
  // Declara um Map (dicionário) com chaves do tipo String (nomes)
  // e valores do tipo double (notas)
  Map<String, double> notas = {
    'Israel': 9.9,      // Chave 'Israel' associada à nota 9.9
    'Kaua': 9.8,        // Chave 'Kaua' associada à nota 9.8
    'Jonathan': 9.7,    // Chave 'Jonathan' associada à nota 9.7
    'Wellington': 9.6   // Chave 'Wellington' associada à nota 9.6
  };

  // Primeiro loop: percorre apenas as chaves (nomes) do Map.
  // A cada volta, a variável 'nome' recebe uma chave diferente
  for (String nome in notas.keys) {
    // Imprime o nome do aluno usando interpolação de string ($nome)
    print("Nome do aluno é $nome.");
  }

  // Segundo loop: percorre apenas os valores (notas) do Map.
  // A cada volta, a variável 'nota' recebe um valor diferente
  for (double nota in notas.values) {
    // Imprime a nota usando interpolação de string ($nota)
    print("A nota é $nota.");
  }

  // Terceiro loop: percorre as chaves novamente, mas desta vez
  // usa cada chave para buscar o valor correspondente no Map
  for (String nome in notas.keys) {
    // Imprime o nome e a nota juntos.
    // ${notas[nome]} acessa o valor associado à chave 'nome';
    // as chaves {} são necessárias porque é uma expressão, não só uma variável
    print("Nome do aluno é $nome e a nota é ${notas[nome]}");
  }

} // Fim da função main