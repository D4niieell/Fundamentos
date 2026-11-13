// Função principal: ponto de entrada de todo programa Dart

void main() {
  // Cria uma função anônima (lambda) que recebe dois inteiros e retorna a soma.
  // O "=>" é a sintaxe curta para funções de uma única expressão.
  // A variável "adicao" guarda essa função, então pode ser chamada como adicao(x, y).
  var adicao = (int a, int b) => a + b;

  // Função anônima que retorna a subtração de a por b
  var sub = (int a, int b) => a - b;

  // Função anônima que retorna a multiplicação de a por b
  var multi = (int a, int b) => a * b;

  // Função anônima que retorna a divisão de a por b.
  // Em Dart, o operador "/" sempre retorna double (ex.: 10 / 20 = 0.5)
  var div = (int a, int b) => a / b;

  // Linha comentada (não é executada). Seria uma função "composta" com chaves,
  // mas o conteúdo "gfvgfgvghvvg" não é código válido, então foi desativada.
  // var composta = (int a, int b) => { a * b % 2 gfvgfgvghvvg};

  // Chama "adicao" com 10 e 20 e imprime o resultado: 30
  print(adicao(10, 20));

  // Chama "sub" com 10 e 20 e imprime o resultado: -10
  print(sub(10, 20));

  // Chama "multi" com 10 e 20 e imprime o resultado: 200
  print(multi(10, 20));

  // Chama "div" com 10 e 20 e imprime o resultado: 0.5
  print(div(10, 20));

  // Exemplo:
  // Define uma função que recebe dois inteiros e retorna {'Desenvolve a função'}.
  // Atenção: com "=>", as chaves {} NÃO formam um bloco de código, e sim um
  // literal de Set (conjunto), então ela retorna um Set<String> com um texto.
  var composta = (int a, int b) => {'Desenvolve a função'};

}
