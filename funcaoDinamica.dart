// Função principal: ponto de entrada de todo programa Dart
void main() {
  // Chama a função concatenar com os números 1 e 9 e guarda o resultado (String) na variável "retorno"
  String retorno = concatenar(1, 9);
  
  // Imprime o texto com o valor de "retorno" interpolado usando $
  print("O retorno com a concatenação e: $retorno");

  // Chama concatenar novamente, agora com Strings; o retorno é ignorado,
  // mas a própria função já imprime o resultado no console
  concatenar('Boa ', 'Noite');
}

// Declara a função "concatenar", que retorna uma String.
// O parâmetro "a" é explicitamente dynamic; "b" também é dynamic,
// pois em Dart o tipo declarado vale para os parâmetros seguintes da mesma linha
String concatenar(dynamic a , b)
{
  // Converte "a" e "b" para String, junta os dois e imprime no console
  print((a.toString() + b.toString()));
  
  // Faz a mesma concatenação e devolve o resultado para quem chamou a função
  return a.toString() + b.toString();
}