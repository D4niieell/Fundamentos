// Função principal: ponto de entrada de todo programa Dart
void main() {
  // Chama a função saudacao passando os parâmetros nomeados 'nome' e 'idade'
  saudacao(nome: 'João', idade: 33);

  // Chama novamente, mas com a ordem invertida; isso é possível
  // porque parâmetros nomeados não dependem da posição
  saudacao(idade: 29, nome: 'Maria');
}

// Declara a função saudacao. As chaves { } indicam que os parâmetros são
// nomeados e opcionais. O "?" após String e int permite que sejam nulos.
// Como não há tipo de retorno declarado, o Dart infere dynamic
// (o ideal seria declarar "void" antes do nome da função)
saudacao({String? nome, int? idade}) {
  // Imprime no console a mensagem, usando interpolação de strings:
  // $nome e $idade são substituídos pelos valores recebidos
  print("Olá $nome, você não parece ter $idade anos!!!");
}