// Exercício 8
// Crie um programa em Dart que possua uma função chamada calculaMedia.
// A função deverá:
// Receber três notas como parâmetros;
// Calcular a média das três notas;
// Exibir as três notas recebidas;
// Exibir a média calculada;
// Informar se o aluno está Aprovado ou Reprovado.
// Considere aprovado quando a média for maior ou igual a 7.

// Declara a função calculaMedia, que não retorna valor (void)
// e recebe três parâmetros do tipo double (números decimais): n1, n2 e n3
void calculaMedia(double n1, double n2, double n3) {
  // Exibe a primeira nota; o $n1 insere o valor da variável dentro do texto (interpolação)
  print('Nota 1: $n1');
  // Exibe a segunda nota usando interpolação de string
  print('Nota 2: $n2');
  // Exibe a terceira nota usando interpolação de string
  print('Nota 3: $n3');

  // Cria a variável 'media' do tipo double, soma as três notas
  // e divide por 3 para calcular a média aritmética
  double media = (n1 + n2 + n3) / 3;
  // Exibe a média calculada, inserindo o valor de 'media' no texto
  print("A média das três notas é: $media");

  // Verifica se a média é maior ou igual a 7 (condição de aprovação)
  if (media >= 7) {
    // Executado apenas se a condição acima for verdadeira: aluno aprovado
    print("Aluno aprovado!!! :)");
  } else {
    // Executado caso a condição seja falsa (média menor que 7): aluno reprovado
    print("Aluno reprovado!!! :(");
  } // Fecha o bloco if/else
} // Fecha a função calculaMedia

// Função principal: é o ponto de entrada, onde o programa começa a ser executado
void main() {
  // Chama a função calculaMedia passando as três notas como argumentos:
  // n1 = 8.0, n2 = 7.5 e n3 = 8.8
  calculaMedia(8.0, 7.5, 8.8);
} // Fecha a função main